--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch, RENREN, Peas, minichibis, J.D., Guwahavel, Ciirulean]
--- MOD_DESCRIPTION: Mod aiming for vanilla style, a lot of new Jokers, Blinds, other stuff and Exotic Suits system!
--- VERSION: 5.0

-- ToDo:
-- Fix Crop Circles always showing Fleurons

local bunco = SMODS.current_mod
local filesystem = NFS or love.filesystem

local loc = filesystem.load(bunco.path..'localization.lua')()

local function say(message)
    sendDebugMessage(message)
end

-- Index-based coordinates generation

local function get_coordinates(position, width)
    if width == nil then width = 10 end -- 10 is default for Jokers
    return {x = (position) % width, y = math.floor((position) / width)}
end

-- Forced messages for evaluation

local function event(config)
    G.E_MANAGER:add_event(Event({ trigger = config.trigger, delay = config.delay, func = config.func }))
end

local function forced_message(message, card, color, delay)
    if delay == true then
        delay = 0.7 * 1.25
    else
        delay = 0
    end

    event({trigger = 'before', delay = delay, func = function()
        card_eval_status_text(
            card,
            'extra',
            nil, nil, nil,
            {message = message, colour = color, instant = true}
        )

        return true
    end})
end

-- Exotic table

exotic_table = {}

-- Joker creation setup

SMODS.Atlas({key = 'bunco_jokers', path = 'Jokers/Jokers.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_exotic', path = 'Jokers/JokersExotic.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_legendary', path = 'Jokers/JokersLegendary.png', px = 71, py = 95})

local function create_joker(joker)

    -- Sprite position

    local width = 10 -- Width of the spritesheet (in Jokers)

        -- Soul sprite

        if joker.rarity == 'Legendary' then
            joker.soul = get_coordinates(joker.position) -- Calculates coordinates based on the position variable
        end

    joker.position = get_coordinates(joker.position - 1)

    -- Sprite atlas

    if joker.type == nil then
        joker.atlas = 'bunco_jokers'
    elseif joker.type == 'Exotic' then
        joker.atlas = 'bunco_jokers_exotic'
    end

    if joker.rarity == 'Legendary' then
        joker.atlas = 'bunco_jokers_legendary'
    end

    -- Key generation from name

    local key = string.gsub(string.lower(joker.name), '%s', '_') -- Removes spaces and uppercase letters

    -- Rarity conversion

    if joker.rarity == 'Common' then
        joker.rarity = 1
    elseif joker.rarity == 'Uncommon' then
        joker.rarity = 2
    elseif joker.rarity == 'Rare' then
        joker.rarity = 3
    elseif joker.rarity == 'Legendary' then
        joker.rarity = 4
    end

    -- Config values

    if joker.vars == nil then joker.vars = {} end

    joker.config = {extra = {}}

    for _, kv_pair in ipairs(joker.vars) do
        -- kv_pair is {a = 1}
        local k, v = next(kv_pair)
        joker.config.extra[k] = v
    end

    -- Exotic table insertion

    table.insert(exotic_table, joker.name)

    -- Joker creation

    SMODS.Joker{
    name = joker.name,
    key = key,

    atlas = joker.atlas,
    pos = joker.position,
    soul_pos = joker.soul,

    rarity = joker.rarity,
    cost = joker.cost,

    unlocked = joker.unlocked,
    discovered = false,

    blueprint_compat = joker.blueprint,
    eternal_compat = joker.eternal,

    loc_txt = loc[key],

    config = joker.config,
    loc_vars = function(self, info_queue, card)

        -- Localization values

        local vars = {}

        for _, kv_pair in ipairs(joker.vars) do
            -- kv_pair is {a = 1}
            local k, v = next(kv_pair)
            -- k is `a`, v is `1`
            table.insert(vars, card.ability.extra[k])
        end

        return { vars = vars } end,

    calculate = joker.calculate,
    update = joker.update
    }
end

create_joker({
            name = 'Cassette', position = 1,
            vars = {{ chips = 45 }, { mult = 6 }, { side = 'A' }},
            rarity = 'Uncommon', cost = 5,
            blueprint = true, eternal = true,
            unlocked = true,
            calculate = function(self, context)
                if context.pre_discard then

                    if self.ability.extra.side == 'A' then
                        self.ability.extra.side = 'B'
                    else
                        self.ability.extra.side = 'A'
                    end

                    self:flip() self:flip() -- Double flip plays the animation but doesn't flip the card, awesome!
                end

                if context.individual and context.cardarea == G.play then

                    local card = context.other_card
                    local side = self.ability.extra.side

                    if card:is_suit('Hearts') or card:is_suit('Diamonds') or card:is_suit('Fleurons') then
                        if side == 'A' then
                            return {
                                chips = self.ability.extra.chips,
                                card = self
                            }
                        end
                    end

                    if card:is_suit('Spades') or card:is_suit('Clubs') or card:is_suit('Halberds') then
                        if side == 'B' then
                            return {
                                mult = self.ability.extra.mult,
                                card = self
                            }
                        end
                    end
                end
            end,
            update = function(self)
                if self.VT.w <= 0 then
                    if self.ability.extra.side == 'A' then
                        self.children.center:set_sprite_pos({x = 0, y = 0})
                    else
                        self.children.center:set_sprite_pos({x = 1, y = 0})
                    end
                end
            end
})

create_joker({
    name = 'Mosaic', position = 3,
    vars = {{ mult = 6 }},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_stone then
                return {
                    mult = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
})

create_joker({
    name = 'Voxel', position = 4,
    vars = {{base = 3}, {xmult = 3}, {tally = 0}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                Xmult_mod = self.ability.extra.xmult,
                card = self,
                message = localize {
                    type = 'variable',
                    key = 'a_xmult',
                    vars = { self.ability.extra.xmult }
                }
            }
        end
    end,
    update = function(self)
        if G.playing_cards ~= nil then
            self.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then self.ability.extra.tally = self.ability.extra.tally + 1 end
            end

            if (self.ability.extra.base - self.ability.extra.tally * 0.1) >= 1 then
                self.ability.extra.xmult = self.ability.extra.base - self.ability.extra.tally * 0.1
            else
                self.ability.extra.xmult = 1
            end
        end
    end
})

create_joker({
    name = 'Crop Circles', position = 5,
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, context)
        if context.individual and context.cardarea == G.play then

            local card = context.other_card

            if card.ability.effect ~= 'Stone Card' then

                if card.base.suit == ('Fleurons') then
                    if card:get_id() == 8 then
                        return {
                            mult = 6,
                            card = self
                        }
                    elseif card:get_id() == 12 or card:get_id() == 10 or card:get_id() == 9 or card:get_id() == 6 then
                        return {
                            mult = 5,
                            card = self
                        }
                    else
                        return {
                            mult = 4,
                            card = self
                        }
                    end
                elseif card.base.suit == ('Clubs') then
                    if card:get_id() == 8 then
                        return {
                            mult = 5,
                            card = self
                        }
                    elseif card:get_id() == 12 or card:get_id() == 10 or card:get_id() == 9 or card:get_id() == 6 then
                        return {
                            mult = 4,
                            card = self
                        }
                    else
                        return {
                            mult = 3,
                            card = self
                        }
                    end
                elseif card:get_id() == 8 then
                    return {
                        mult = 2,
                        card = self
                    }
                elseif card:get_id() == 12 or card:get_id() == 10 or card:get_id() == 9 or card:get_id() == 6 then
                    return {
                        mult = 1,
                        card = self
                    }
                end
            end
        end
    end
})

create_joker({
    name = 'Xray', position = 6,
    vars = {{xmult = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, context)
        if SMODS.end_calculate_context(context) then

            if context.emplaced_card and context.emplaced_card.facing == 'back' and not context.blueprint then
                self.ability.extra.xmult = self.ability.extra.xmult + 0.2

                forced_message('X'..tostring(self.ability.extra.xmult)..' Mult', self, G.C.RED, true)
            end

            if self.ability.extra.xmult ~= 1 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { self.ability.extra.xmult }
                    },
                    Xmult_mod = self.ability.extra.xmult,
                    card = self
                }
            end
        end
    end
})