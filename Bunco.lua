--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch, RENREN, Peas, minichibis, J.D., Guwahavel, Ciirulean, ejwu]
--- MOD_DESCRIPTION: Mod aiming for vanilla style, a lot of new Jokers, Blinds, other stuff and Exotic Suits system!
--- VERSION: 5.0

-- ToDo:
-- (done) Fix Crop Circles always showing Fleurons
-- (done) Check how to add custom entries to the localization (for card messages like linocut's one)
-- (done) Cassette proper coordinates
-- (done) Polychrome desc on roy g biv
-- (?) Debuff registration plate level with shader if possible
-- (done) Nan morgan or make zero shapiro count letter rank cards
-- Unlocks
-- Check whats up with joker knight
-- (done) Add purist config
-- (skip: waiting for steamodded) Card sizes
-- (done) Magenta dagger wobble?
-- (?) Disable Bierdeckel upgrade message on win
-- (done) Global variable for glitter
-- (done) Config for double lovers
-- Fix suit colors
-- (done) Talisman support
-- (done) Make tags use global values of editions (+ loc vars for it)
-- (1/2) Make editioned consumables and replace their info_queue (to check: common events.lua)
-- (done) Fix bulwark stray pixels
-- (done) Add config to the consumable editions
-- (done) Remove debuff when fluorescent edition is applied to a debuffed card
-- (done) Make tarot badges use localization
-- (done) Pawn and linocut fake suit and rank
-- Check eternal food compat

global_bunco = global_bunco or {loc = {}, vars = {}}
local bunco = SMODS.current_mod
local filesystem = NFS or love.filesystem

local loc = filesystem.load(bunco.path..'localization.lua')()
local config = filesystem.load(bunco.path..'config.lua')()

-- Shaders

if config.high_quality_shaders then
    local background_shader = NFS.read(bunco.path..'assets/shaders/background.fs')
    local splash_shader = NFS.read(bunco.path..'assets/shaders/splash.fs')
    local flame_shader = NFS.read(bunco.path..'assets/shaders/flame.fs')
    G.SHADERS['background'] = love.graphics.newShader(background_shader)
    G.SHADERS['splash'] = love.graphics.newShader(splash_shader)
    G.SHADERS['flame'] = love.graphics.newShader(flame_shader)
end

-- Custom high contrast

if config.high_contrast then
    SMODS.Atlas({key = 'cards_2', path = 'Resprites/EnhancedContrast.png', px = 71, py = 95})
    SMODS.Atlas({key = 'ui_2', path = 'Resprites/EnhancedUIContrast.png', px = 18, py = 18})

    local Game_start_up = Game.start_up
    function Game:start_up()
        Game_start_up(self)
        G.C["SO_2"] = {
            Hearts = HEX('ee151b'),
            Diamonds = HEX('e56b10'),
            Spades = HEX("5d55a6"),
            Clubs = HEX("197f77"),
        }
    end

    local new_colour_proto = G.C["SO_"..(G.SETTINGS.colourblind_option and 2 or 1)]
    G.C.SUITS.Hearts = new_colour_proto.Hearts
    G.C.SUITS.Diamonds = new_colour_proto.Diamonds
    G.C.SUITS.Spades = new_colour_proto.Spades
    G.C.SUITS.Clubs = new_colour_proto.Clubs
    for k, v in pairs(G.I.SPRITE) do
        if v.atlas and string.find(v.atlas.name, 'cards_') then
            v.atlas = G.ASSET_ATLAS["cards_"..(G.SETTINGS.colourblind_option and 2 or 1)]
        end
    end
end

-- Colorful Finishers

if config.colorful_finishers then bunco_colorful_finishers = true end

-- Debug message

local function say(message)
    sendDebugMessage('[BUNCO] - '..(message or '???'))
end

-- Index-based coordinates generation

local function get_coordinates(position, width)
    if width == nil then width = 10 end -- 10 is default for Jokers
    return {x = (position) % width, y = math.floor((position) / width)}
end

local function coordinate(position)
    return get_coordinates(position - 1)
end

-- Forced messages for evaluation

local function event(config)
    G.E_MANAGER:add_event(Event({
        trigger = config.trigger,
        delay = config.delay,
        blockable = config.blockable,
        blocking = config.blocking,
        func = config.func
    }))
end

local function big_juice(card)
    card:juice_up(0.7)
end

local function forced_message(message, card, color, delay, juice)
    if delay == true then
        delay = 0.7 * 1.25
    elseif delay == nil then
        delay = 0
    end

    event({trigger = 'before', delay = delay, func = function()

        if juice then big_juice(juice) end

        card_eval_status_text(
            card,
            'extra',
            nil, nil, nil,
            {message = message, colour = color, instant = true}
        )
        return true
    end})
end

-- Exotic in_pool function

exotic_in_pool = function()
    return G.GAME and G.GAME.Exotic
end

-- Dictionary wrapper

function bunco.process_loc_text()
    SMODS.process_loc_text(G.localization.misc.dictionary, 'bunco', loc.dictionary)

    loc.dictionary = G.localization.misc.dictionary.bunco

    -- Other localization

    SMODS.process_loc_text(G.localization.descriptions.Other, 'temporary_extra_chips', loc.dictionary.temporary_extra_chips)
    SMODS.process_loc_text(G.localization.descriptions.Other, 'exotic_cards', loc.exotic_cards)

    global_bunco.loc.exceeded_score = loc.dictionary.exceeded_score
    global_bunco.loc.chips = loc.dictionary.chips
end

-- Config globals

global_bunco.vars.jokerlike_consumable_editions = config.jokerlike_consumable_editions

-- Double lovers

if config.double_lovers then
    G.P_CENTERS.c_lovers.config.max_highlighted = 2
end

-- Temporary extra chips

local original_end_round = end_round
function end_round()
    for _, v in ipairs(G.playing_cards) do
        if v.ability.extra and type(v.ability.extra) == 'table' and v.ability.extra.temporary_extra_chips then
            v.ability.extra.temporary_extra_chips = nil
        end
    end
    original_end_round()
end

local Card_get_chip_bonus = Card.get_chip_bonus
function Card:get_chip_bonus()
    return Card_get_chip_bonus(self) + (self.ability.extra and type(self.ability.extra) == 'table' and not self.debuff and self.ability.extra.temporary_extra_chips or 0)
end

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

    -- Exotic Joker pool isolation

    local pool

    if joker.type == 'Exotic' then
        pool = exotic_in_pool
    end

    -- Joker creation

    if not (joker.purist == false and config.purist_mode) then SMODS.Joker{
        name = joker.name,
        key = key,

        atlas = joker.atlas,
        pos = joker.position,
        soul_pos = joker.soul,

        rarity = joker.rarity,
        cost = joker.cost,

        unlocked = joker.unlocked,
        check_for_unlock = joker.check_for_unlock,
        discovered = false,

        blueprint_compat = joker.blueprint,
        eternal_compat = joker.eternal,

        loc_txt = loc[key],
        process_loc_text = joker.process_loc_text,

        config = joker.custom_config or joker.config,
        loc_vars = joker.custom_vars or function(self, info_queue, card)

            -- Localization values

            local vars = {}

            for _, kv_pair in ipairs(joker.vars) do
                -- kv_pair is {a = 1}
                local k, v = next(kv_pair)
                -- k is `a`, v is `1`
                table.insert(vars, card.ability.extra[k])
            end

            return {vars = vars}
        end,

        calculate = joker.calculate,
        update = joker.update,
        remove_from_deck = joker.remove,
        add_to_deck = joker.add,
        set_ability = joker.set_ability,
        in_pool = pool,

        effect = joker.effect
        }
    end
end

-- Jokers

function bunco.set_debuff(card)
    -- Fluorescent edition
    if card.edition and card.edition.bunc_fluorescent then
        return 'prevent_debuff'
    end

    -- Jokers

    local my_pos = nil
    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then my_pos = i; break end
    end

    -- Gameplan

    if my_pos then
        if G.jokers.cards[my_pos - 1] and G.jokers.cards[my_pos - 1].ability.name == 'Gameplan' and not G.jokers.cards[my_pos - 1].debuff then return true end
        if G.jokers.cards[my_pos + 1] and G.jokers.cards[my_pos + 1].ability.name == 'Gameplan' and not G.jokers.cards[my_pos + 1].debuff then return true end
    end

    -- Conquest

    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i].ability.name == 'Conquest' then
            if G.jokers.cards[i].ability.extra.joker ~= 0 and card == G.jokers.cards[i].ability.extra.joker then
                return true
            end
        end
    end

    return false
end

local original_start_run = Game.start_run

function Game:start_run(args)
    original_start_run(self, args)

    local sledgehammers = SMODS.find_card('j_bunc_sledgehammer')
    for _, card in ipairs(sledgehammers) do
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult + card.ability.extra.plus_xmult
    end
    if #sledgehammers >= 1 then
        G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra / SMODS.Jokers['j_bunc_sledgehammer'].config.extra.div_chance_denom
    end
end

create_joker({ -- Cassette
    name = 'Cassette', position = 1,
    vars = {{ chips = 45 }, { mult = 6 }, { side = 'A' }},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.pre_discard then

            if card.ability.extra.side == 'A' then
                card.ability.extra.side = 'B'
            else
                card.ability.extra.side = 'A'
            end

            card:flip() card:flip() -- Double flip plays the animation but doesn't flip the card, awesome!
        end

        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card
            local side = card.ability.extra.side

            if other_card:is_suit('Hearts') or other_card:is_suit('Diamonds') or other_card:is_suit('bunc_Fleurons') then
                if side == 'A' then
                    return {
                        chips = card.ability.extra.chips,
                        card = card
                    }
                end
            end

            if other_card:is_suit('Spades') or other_card:is_suit('Clubs') or other_card:is_suit('bunc_Halberds') then
                if side == 'B' then
                    return {
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end
    end,
    update = function(self, card)
        if card.VT.w <= 0 then
            if card.ability.extra.side == 'A' then
                card.children.center:set_sprite_pos(coordinate(1))
            else
                card.children.center:set_sprite_pos(coordinate(2))
            end
        end
    end
})

create_joker({ -- Mosaic
    name = 'Mosaic', position = 3,
    vars = {{ mult = 6 }},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_stone then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Voxel
    name = 'Voxel', position = 4,
    vars = {{base = 3}, {bonus = 0.1}, {xmult = 3}, {tally = 0}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
                return {
                    Xmult_mod = card.ability.extra.xmult,
                    card = card,
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    }
                }
            end
        end
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            card.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.tally = card.ability.extra.tally + 1 end
            end

            if (card.ability.extra.base - card.ability.extra.tally * card.ability.extra.bonus) >= 1 then
                card.ability.extra.xmult = card.ability.extra.base - card.ability.extra.tally * card.ability.extra.bonus
            else
                card.ability.extra.xmult = 1
            end
        end
    end
})

create_joker({ -- Crop Circles
    name = 'Crop Circles', position = 5,
    rarity = 'Common', cost = 4,
    process_loc_text = function(self)
        SMODS.Joker.process_loc_text(self)
        SMODS.process_loc_text(G.localization.descriptions.Joker, self.key..'_additional', loc.crop_circles_exotic)
    end,
    custom_vars = function(self)
        if G.GAME and G.GAME.Exotic then
            return {key = self.key..'_additional'}
        end
    end,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card

            if other_card.config.center ~= G.P_CENTERS.m_stone then

                if other_card.base.suit == ('bunc_Fleurons') then
                    if other_card:get_id() == 8 then
                        return {
                            mult = 6,
                            card = card
                        }
                    elseif other_card:get_id() == 12 or other_card:get_id() == 10 or other_card:get_id() == 9 or other_card:get_id() == 6 then
                        return {
                            mult = 5,
                            card = card
                        }
                    else
                        return {
                            mult = 4,
                            card = card
                        }
                    end
                elseif other_card.base.suit == ('Clubs') then
                    if other_card:get_id() == 8 then
                        return {
                            mult = 5,
                            card = card
                        }
                    elseif other_card:get_id() == 12 or other_card:get_id() == 10 or other_card:get_id() == 9 or other_card:get_id() == 6 then
                        return {
                            mult = 4,
                            card = card
                        }
                    else
                        return {
                            mult = 3,
                            card = card
                        }
                    end
                elseif other_card:get_id() == 8 then
                    return {
                        mult = 2,
                        card = card
                    }
                elseif other_card:get_id() == 12 or other_card:get_id() == 10 or other_card:get_id() == 9 or other_card:get_id() == 6 then
                    return {
                        mult = 1,
                        card = card
                    }
                end
            end
        end
    end
})

create_joker({ -- Xray
    name = 'Xray', position = 6,
    vars = {{bonus = 0.2}, {xmult = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_xray_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.emplaced_card and context.emplaced_card.facing == 'back' and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.bonus

            forced_message('X'..tostring(card.ability.extra.xmult)..' '..localize('k_mult'), card, G.C.RED, card.ability.extra.bonus)
        end

        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    },
                    Xmult_mod = card.ability.extra.xmult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Dread
    name = 'Dread', position = 7,
    vars = {{trash_list = {}}, {level_up_list = {}}},
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if not context.blueprint then
            if context.full_hand and not context.other_card then
                card.ability.extra.trash_list = {}
                for k, v in ipairs(context.full_hand) do
                    table.insert(card.ability.extra.trash_list, v)
                end
            end

            if context.after and G.GAME.current_round.hands_left == 0 and context.scoring_name then

                level_up_hand(card, context.scoring_name, true, 2)

                if card.ability.extra.level_up_list[context.scoring_name] then
                    card.ability.extra.level_up_list[context.scoring_name] = card.ability.extra.level_up_list[context.scoring_name] + 2
                else
                    card.ability.extra.level_up_list[context.scoring_name] = 2
                end

                event({
                    trigger = 'after',
                    func = function()

                        for i = 1, #card.ability.extra.trash_list do

                            if card.ability.extra.trash_list[i].area.config.type == 'play' then
                                card.ability.extra.trash_list[i]:start_dissolve(nil, nil, 3)
                                card.ability.extra.trash_list[i].destroyed = true
                            end

                        end
                        card.ability.extra.trash_list = {}

                return true end })

                return {
                    colour = G.C.RED,
                    message = localize('k_level_up_ex')
                }
            end
        end
    end,
    remove = function(self, card)
        for name, level in pairs(card.ability.extra.level_up_list) do
            level_up_hand(card, name, true, level * -1)
        end
    end
})

create_joker({ -- Prehistoric
    name = 'Prehistoric', position = 8,
    vars = {{mult = 16}, {card_list = { }}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            for k, v in pairs(card.ability.extra.card_list) do
                if (v == context.other_card.base.id .. context.other_card.base.suit) and context.other_card.config.center ~= G.P_CENTERS.m_stone then
                    return {
                        message = localize {
                            type = 'variable',
                            key = 'a_mult',
                            vars = {card.ability.extra.mult}
                        },
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end

            if not context.blueprint then
                if context.other_card.config.center ~= G.P_CENTERS.m_stone then
                    table.insert(card.ability.extra.card_list, context.other_card.base.id .. context.other_card.base.suit) -- Add the card to the list
                end
            end

        end

        if context.end_of_round and not context.other_card then -- Clear the list if end of round
            card.ability.extra.card_list = {}
        end
    end
})

create_joker({ -- Linocut
    name = 'Linocut', position = 9,
    rarity = 'Uncommon', cost = 4,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.scoring_hand ~= nil and #context.scoring_hand == 2 and not context.blueprint then
            if context.poker_hands and next(context.poker_hands['Pair']) then
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('card1', 1); context.scoring_hand[1]:juice_up(0.3, 0.3); return true end })
                event({trigger = 'after', delay = 0.1,  func = function() context.scoring_hand[1]:change_suit(context.scoring_hand[2].config.card.suit); return true end })
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); context.scoring_hand[1]:juice_up(0.3, 0.3); return true end })
                forced_message(loc.dictionary.copied, card, G.C.RED, true)
            end
        end
    end
})

create_joker({ -- Ghost Print
    name = 'Ghost Print', position = 10,
    vars = {{last_hand = 'Nothing'}},
    custom_vars = function(self, info_queue, card)
        local vars
        if card.ability.extra.last_hand == 'Nothing' then
            vars = {loc.dictionary.nothing}
        else
            vars = {G.localization.misc['poker_hands'][card.ability.extra.last_hand]}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then

            if card.ability.extra.last_hand ~= 'Nothing' then
                mult = mod_mult(mult + G.GAME.hands[card.ability.extra.last_hand].mult)
                hand_chips = mod_chips(hand_chips + G.GAME.hands[card.ability.extra.last_hand].chips)
                update_hand_text({delay = 0, sound = '', modded = true}, {chips = hand_chips, mult = mult})
                forced_message(G.localization.misc['poker_hands'][card.ability.extra.last_hand]..'!', context.blueprint_card or card, G.C.HAND_LEVELS[G.GAME.hands[card.ability.extra.last_hand].level], true)
            end

            if not context.blueprint then
                card.ability.extra.last_hand = G.GAME.last_hand_played
            end
        end
    end
})

create_joker({ -- Loan Shark
    name = 'Loan Shark', position = 11,
    vars = {{dollars = 50}, {cost = -100}},
    rarity = 'Uncommon', cost = 3,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'money' then
            if G.GAME.dollars < -20 then
                unlock_card(self)
            end
        end
    end,
    add = function(self, card)
        ease_dollars(card.ability.extra.dollars)
        card.ability.extra_value = card.ability.extra.cost - card.sell_cost
        card:set_cost()
    end
})

create_joker({ -- Basement
    name = 'Basement', position = 12,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    purist = false,
    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind.boss and not context.other_card then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                if not context.blueprint then
                    forced_message(localize('k_plus_spectral'), card, G.C.SECONDARY_SET.Spectral)
                else
                    forced_message(localize('k_plus_spectral'), context.blueprint_card, G.C.SECONDARY_SET.Spectral)
                end
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                local spectral = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil)
                spectral:add_to_deck()
                G.consumeables:emplace(spectral)
                G.GAME.consumeable_buffer = 0
            end
        end
    end
})

create_joker({ -- Shepherd
    name = 'Shepherd', position = 13,
    vars = {{bonus = 6}, {chips = 0}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.poker_hands ~= nil and next(context.poker_hands['Pair']) and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus

            forced_message('+'..tostring(card.ability.extra.chips)..' '..loc.dictionary.chips, card, G.C.BLUE, true)
        end

        if context.joker_main then
            if card.ability.extra.chips ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_chips',
                        vars = { card.ability.extra.chips }
                    },
                    chip_mod = card.ability.extra.chips,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Knight
    name = 'Knight', position = 14,
    vars = {{bonus = 6}, {mult = 0}},
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    purist = false,
    calculate = function(self, card, context)
        if context.setting_blind and not card.getting_sliced and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus

            event({ trigger = 'after', delay = 0.2, func = function()
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 0.85);return true end })
                delay(0.15)
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1.15);return true end })
                delay(0.15)
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1);return true end })
                delay(0.5)
            return true end })

            forced_message('+'..tostring(card.ability.extra.mult)..' '..localize('k_mult'), card, G.C.RED)
        end

        if context.break_positions and not context.blueprint then
            if card.ability.extra.mult ~= 0 then
                card.ability.extra.mult = 0

                forced_message(localize('k_reset'), card, G.C.RED)
            end
        end

        if context.joker_main then
            if card.ability.extra.mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { card.ability.extra.mult }
                    },
                    mult_mod = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- JMJB
    name = 'JMJB', position = 15,
    rarity = 'Rare', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    purist = false,
    calculate = function(self, card, context)
        if context.open_booster and context.card.ability.name then
            if (context.open_booster and context.card.ability.name == 'Standard Pack' or
            context.open_booster and context.card.ability.name == 'Jumbo Standard Pack' or
            context.open_booster and context.card.ability.name == 'Mega Standard Pack') then
                event({
                    trigger = 'after',
                    delay = 1.3 * math.sqrt(G.SETTINGS.GAMESPEED),
                    blockable = false,
                    blocking = false,
                    func = function()

                        if G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center == G.P_CENTERS.c_base then
                                    v:set_ability(G.P_CENTER_POOLS.Enhanced[math.random(#G.P_CENTER_POOLS.Enhanced)])
                                end
                            end

                            return true
                        end
                    end
                })
            end
        end
    end
})

create_joker({ -- Dogs Playing Poker
    name = 'Dogs Playing Poker', position = 16,
    vars = {{xmult = 2.5}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then

            local condition = true

            if context.scoring_hand ~= nil then
                for i = 1, #context.scoring_hand do
                    if (context.scoring_hand[i]:get_id() >= 6 or
                    context.scoring_hand[i]:get_id() < 2) and
                    context.scoring_hand[i].config.center ~= G.P_CENTERS.m_stone then
                        condition = false
                    end
                end
            end

            if condition then
                return {
                    Xmult_mod = card.ability.extra.xmult,
                    card = card,
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    },
                }
            end
        end
    end
})

create_joker({ -- Righthook
    name = 'Righthook', position = 17,
    vars = {},
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'repetition' and args.repetition_amount >= 5 then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.scoring_hand ~= nil and context.other_card == context.scoring_hand[#context.scoring_hand] then

            local repetitions = G.GAME.current_round.hands_left

            return {
                message = localize('k_again_ex'),
                repetitions = repetitions,
                card = card
            }
        end
    end
})

create_joker({ -- Fiendish
    name = 'Fiendish', position = 18,
    vars = {{odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_double_nothing_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    purist = false
})

create_joker({ -- Carnival
    name = 'Carnival', position = 19,
    vars = {{ante = -math.huge}},
    rarity = 'Rare', cost = 10,
    blueprint = false, eternal = true,
    unlocked = true,
    purist = false,
    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind.boss and not context.other_card and not context.blueprint then
            if G.GAME.round_resets.ante > card.ability.extra.ante then
                local destructable_jokers = {}
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] ~= card and not G.jokers.cards[i].ability.eternal and not G.jokers.cards[i].getting_sliced then destructable_jokers[#destructable_jokers+1] = G.jokers.cards[i] end
                end
                local joker_to_destroy = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('carnival')) or nil

                if joker_to_destroy and not card.getting_sliced then 
                    joker_to_destroy.getting_sliced = true
                    card:juice_up(0.8, 0.8)
                    card.ability.extra.ante = G.GAME.round_resets.ante
                    ease_ante(-1)
                    forced_message(loc.dictionary.loop, card, G.C.BLACK)
                    joker_to_destroy:start_dissolve({G.C.BLACK}, nil, 1.6)
                    play_sound('slice1', 0.96+math.random()*0.08)
                end
            end
        end
    end
})

create_joker({ -- Sledgehammer
    name = 'Sledgehammer', position = 20,
    vars = {{plus_xmult = 1}, {div_chance_denom = 4}},
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    add = function(self, card)
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult + card.ability.extra.plus_xmult
        if #SMODS.find_card('j_bunc_sledgehammer') == 1 then
            G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra / self.config.extra.div_chance_denom
        end
    end,
    remove = function(self, card)
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult - card.ability.extra.plus_xmult
        if #SMODS.find_card('j_bunc_sledgehammer') == 0 then
            G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra * self.config.extra.div_chance_denom
        end
    end
})

create_joker({ -- Doorhanger
    name = 'Doorhanger', position = 21,
    rarity = 'Rare', cost = 10,
    blueprint = false, eternal = true,
    unlocked = true
})

create_joker({ -- Fingerprints
    name = 'Fingerprints', position = 22,
    vars = {{bonus = 50}, {scoring_card_set = {}}},
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.scoring_name ~= nil and context.scoring_hand ~= nil and not context.blueprint then
            card.ability.extra.scoring_card_set = {}
            for i = 1, #context.scoring_hand do
                card.ability.extra.scoring_card_set[context.scoring_hand[i].unique_val] = true
            end
        end

        if context.end_of_round and not context.other_card and not context.blueprint then
            for _, v in ipairs(G.playing_cards) do
                if card.ability.extra.scoring_card_set[v.unique_val] then
                    v.ability.extra = v.ability.extra or {}
                    v.ability.extra.temporary_extra_chips = (v.ability.extra.temporary_extra_chips or 0) + card.ability.extra.bonus
                end
            end
            -- not needed, but good style to fail fast
            card.ability.extra.scoring_card_set = nil

            forced_message(localize('k_upgrade_ex'), card, G.C.CHIPS)
        end
    end
})

create_joker({ -- Zero Shapiro
    name = 'Zero Shapiro', position = 23,
    vars = {{bonus = 0.3}, {amount = 0}},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_stone or context.other_card:get_id() == 0 or not tonumber(context.other_card.base.value) and context.other_card.base.value ~= 'Ace' then

                card.ability.extra.amount = card.ability.extra.amount + card.ability.extra.bonus

                for k, v in pairs(G.GAME.probabilities) do
                    G.GAME.probabilities[k] = v + card.ability.extra.bonus
                end

                return {
                    extra = {focus = context.other_card, message = '+'..card.ability.extra.bonus..' '..loc.dictionary.chance, colour = G.C.GREEN},
                    card = card
                }
            end
        end

        if context.end_of_round and not context.other_card then
            if card.ability.extra.amount ~= 0 then
                for k, v in pairs(G.GAME.probabilities) do
                    G.GAME.probabilities[k] = v - (card.ability.extra.amount)
                end

                card.ability.extra.amount = 0

                forced_message(localize('k_reset'), card, G.C.GREEN, true)
            end
        end

        if context.selling_self then
            for k, v in pairs(G.GAME.probabilities) do
                G.GAME.probabilities[k] = v - (card.ability.extra.amount)
            end

            card.ability.extra.amount = 0
        end
    end
})

create_joker({ -- Nil Bill
    name = 'Nil Bill', position = 24,
    vars = {{bonus = 1}},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.debuffed_card then
            ease_dollars(card.ability.extra.bonus)
            forced_message('$'..card.ability.extra.bonus, context.debuffed_card, G.C.MONEY, true, card)
        end
    end
})

create_joker({ -- Bierdeckel
    name = 'Bierdeckel', position = 25,
    vars = {{bonus = 10}},
    rarity = 'Uncommon', cost = 4,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if (context.after or context.discard and context.other_card == context.full_hand[#context.full_hand]) and not context.blueprint then
            local full_hand_set = {}
            if context.discard then
                for _, c in ipairs(context.full_hand) do
                    full_hand_set[c] = true
                end
            end
            for _, c in ipairs(G.hand.cards) do
                if not full_hand_set[c] then
                    c.ability.extra = c.ability.extra or {}
                    c.ability.extra.temporary_extra_chips = (c.ability.extra.temporary_extra_chips or 0) + card.ability.extra.bonus
                end
            end

            -- maybe juice all held cards, that'd be fun
            forced_message(localize('k_upgrade_ex'), card, G.C.CHIPS, true)
        end
    end
})

create_joker({ -- Registration Plate
    name = 'Registration Plate', position = 26,
    vars = {{combination = ''}, {card_list = {}}, {ranks = {}}},
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_city_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    custom_vars = function(self, info_queue, card)
        local vars
        if card.ability.extra.combination == '' then
            vars = {'2, 3, 4, 5 '..loc.dictionary.word_and..' 6'}
        else
            vars = {card.ability.extra.combination}
        end
        return {vars = vars}
    end,
    add = function(self, card)
        card.ability.extra.card_list = {}

        for i = 1, 5 do
            local index = math.random(#G.deck.cards)
            table.insert(card.ability.extra.card_list, G.deck.cards[index])
        end

        local combination = {}

        for i = 1, 5 do
            table.insert(combination, card.ability.extra.card_list[i].base.value)
        end

        card.ability.extra.ranks = {}

        for i = 1, 5 do
            table.insert(card.ability.extra.ranks, card.ability.extra.card_list[i]:get_id())
        end

        card.ability.extra.combination = table.concat(combination, ", ", 1, 4).." "..loc.dictionary.word_and.." "..table.concat(combination, " ", 5)
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            card.ability.extra.card_list = {}

            for i = 1, 5 do
                local index = math.random(#G.deck.cards)
                table.insert(card.ability.extra.card_list, G.deck.cards[index])
            end

            local combination = {}

            for i = 1, 5 do
                table.insert(combination, card.ability.extra.card_list[i].base.value)
            end

            card.ability.extra.ranks = {}

            for i = 1, 5 do
                table.insert(card.ability.extra.ranks, card.ability.extra.card_list[i]:get_id())
            end

            card.ability.extra.combination = table.concat(combination, ", ", 1, 4).." "..loc.dictionary.word_and.." "..table.concat(combination, " ", 5)
        end
    end
})

create_joker({ -- Slothful
    name = 'Slothful', position = 27,
    vars = {{mult = 9}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_wild then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Neon
    name = 'Neon', position = 28,
    vars = {{bonus = 0.2}, {xmult = 1}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.debuffed_card then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.bonus
            forced_message(localize('k_upgrade_ex'), card, G.C.MULT, true)
        end

        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    },
                    Xmult_mod = card.ability.extra.xmult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Gameplan
    name = 'Gameplan', position = 29,
    vars = {{mult = 20}},
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    update = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    remove = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local mult = 0

            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then my_pos = i; break end
            end
            if G.jokers.cards[my_pos - 1] then mult = mult + card.ability.extra.mult end
            if G.jokers.cards[my_pos + 1] then mult = mult + card.ability.extra.mult end

            if mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { mult }
                    },
                    mult_mod = mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Conquest
    name = 'Conquest', position = 30,
    vars = {{chips = 200}, {joker = 0}},
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    update = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    remove = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then my_pos = i; break end
            end

            if #G.jokers.cards > 1 then
                card.ability.extra.joker = G.jokers.cards[math.random(#G.jokers.cards)]
                while card.ability.extra.joker == G.jokers.cards[my_pos] do
                    card.ability.extra.joker = G.jokers.cards[math.random(#G.jokers.cards)]
                end
            else
                card.ability.extra.joker = 0
            end

            if card.ability.extra.joker ~= 0 then
                forced_message(loc.dictionary.debuffed, card, G.C.RED, true, card.ability.extra.joker)
            end
        end
        if context.joker_main then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_chips',
                    vars = { card.ability.extra.chips }
                },
                chip_mod = card.ability.extra.chips,
                card = card
            }
        end
    end
})

create_joker({ -- Hierarchy of Needs
    name = 'Hierarchy of Needs', position = 31,
    vars = {{bonus = 5}, {mult = 20}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    update = function(self, card)
        if G.playing_cards then
            local required_ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'}
            local set_count = 0

            for _, suit_data in pairs(SMODS.Suits) do
                local suit = tostring(suit_data.key)
                local rank_count = {}

                for _, rank in ipairs(required_ranks) do
                    rank_count[rank] = 0
                end

                for _, deck_card in ipairs(G.playing_cards) do
                    local rank

                    if deck_card.config.center ~= G.P_CENTERS.m_stone and deck_card.base.suit == suit then
                        rank = deck_card.base.value
                    end

                    if rank and rank_count[rank] then
                        rank_count[rank] = rank_count[rank] + 1

                        local complete_set = true
                        for _, req_rank in ipairs(required_ranks) do
                            if rank_count[req_rank] == 0 then
                                complete_set = false
                                break
                            end
                        end

                        if complete_set then
                            set_count = set_count + 1
                            for _, req_rank in ipairs(required_ranks) do
                                rank_count[req_rank] = rank_count[req_rank] - 1
                            end
                        end
                    end
                end
            end
            card.ability.extra.mult = card.ability.extra.bonus * set_count
        else
            card.ability.extra.mult = card.ability.extra.bonus * 4
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { card.ability.extra.mult }
                    },
                    mult_mod = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Dwarven
    name = 'Dwarven', position = 32,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return {}
    end,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    update = function(self, card)
        if card.area == G.jokers and not card.debuff then
            G.P_CENTERS.m_stone.config.h_x_mult = G.P_CENTERS.m_steel.config.h_x_mult
            G.P_CENTERS.m_stone.config.h_dollars = G.P_CENTERS.m_gold.config.h_dollars
        end
    end,
    remove = function(self, card)
        G.P_CENTERS.m_stone.config.h_x_mult = nil
        G.P_CENTERS.m_stone.config.h_dollars = nil
    end
})

create_joker({ -- Aristocrat
    name = 'Aristocrat', position = 33,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.open_booster and context.card.ability.name then
            event({
                trigger = 'after',
                delay = 1.3 * math.sqrt(G.SETTINGS.GAMESPEED),
                blockable = false,
                blocking = false,
                func = function()
                    if G.pack_cards and (G.pack_cards.VT.y < G.ROOM.T.h) then
                        G.GAME.pack_choices = G.GAME.pack_choices + 1
                        if G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] then
                            if G.GAME.pack_choices > #G.pack_cards.cards then
                                G.GAME.pack_choices = #G.pack_cards.cards
                            end
                        end
                    end
                    return true
                end
            })
        end
    end
})

create_joker({ -- Metallurgist
    name = 'Metallurgist', position = 34,
    vars = {{mult = 10}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return {vars = {card.ability.extra.mult}}
    end,
    rarity = 'Common', cost = 6,
    blueprint = false, eternal = true,
    unlocked = true,
    update = function(self, card)
        if card.area == G.jokers and not card.debuff then
            G.P_CENTERS.m_gold.config.h_mult = card.ability.extra.mult
        end
    end,
    remove = function(self, card)
        G.P_CENTERS.m_gold.config.h_x_mult = 0
    end
})

create_joker({ -- Juggalo
    name = 'Juggalo', position = 35,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter
        return {}
    end,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.setting_blind then
            if G.consumeables.cards[1] then
                local consumables_table = {}
                for i = 1, #G.consumeables.cards do
                    if G.consumeables.cards[i]:get_edition() == nil then
                        table.insert(consumables_table, G.consumeables.cards[i])
                    end
                end
                local consumable = consumables_table[math.random(#consumables_table)]
                local edition = poll_edition('standard_edition'..G.GAME.round_resets.ante, nil, true, true,
                {'e_holo', 'e_foil', 'e_polychrome', 'e_bunc_glitter'})
                if consumable then
                    event({func = function()
                        consumable:set_edition(edition, true)
                        return true
                    end})
                    forced_message(localize('k_upgrade_ex'), card, G.C.RED, true, consumable)
                end
            end
        end
    end
})

create_joker({ -- Head in the Clouds
    name = 'Head in the Clouds', position = 36,
    vars = {{odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.level_up_hand and context.level_up_hand ~= self.name then
            if pseudorandom('head_in_the_clouds'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                event({func = function()
                    local hand = 'High Card'
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
                    level_up_hand(context.blueprint_card or card, self.name, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                return true end})
            end
        end
    end
})

create_joker({ -- Headshot
    name = 'Headshot', position = 37,
    vars = {{xmult = 3}},
    rarity = 'Uncommon', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_hand then
            local face_amount = 0
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_face() then
                    face_amount = face_amount + 1
                end
            end

            if face_amount == 1 then
                return {
                    Xmult_mod = card.ability.extra.xmult,
                    card = card,
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    },
                }
            end
        end
    end
})

create_joker({ -- Trigger Finger
    name = 'Trigger Finger', position = 38,
    vars = {{xmult = 4}, {odds = 10}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {card.ability.extra.xmult, G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {card.ability.extra.xmult, 1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.select_card then
            event({trigger = 'after', func = function()
                if #G.hand.highlighted[1] then
                    forced_message(loc.dictionary.pew, card, G.C.RED)
                    G.FUNCS.play_cards_from_highlighted()
                end
            return true end})
        end
        if context.joker_main then
            return {
                Xmult_mod = card.ability.extra.xmult,
                card = card,
                message = localize {
                    type = 'variable',
                    key = 'a_xmult',
                    vars = { card.ability.extra.xmult }
                },
            }
        end
    end
})

create_joker({ -- Hopscotch
    name = 'Hopscotch', position = 39,
    vars = {{discard = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['Straight']) then
            ease_discard(card.ability.extra.discard)
            forced_message('+'..card.ability.extra.discard..' '..localize('b_discard'), card, G.C.RED, true)
        end
    end
})

create_joker({ -- Pawn
    name = 'Pawn', position = 40,
    rarity = 'Common', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.scoring_hand ~= nil and not context.blueprint then
            for i = 1, #context.scoring_hand do
                local condition = false
                local other_card = context.scoring_hand[i]
                local rank = math.huge
                for _, deck_card in ipairs(G.playing_cards) do
                    if deck_card:get_id() < rank then
                        rank = deck_card:get_id()
                    end
                end
                if other_card:get_id() == rank then
                    condition = true
                    event({trigger = 'after', delay = 0.15, func = function() other_card:flip(); play_sound('card1', 1); other_card:juice_up(0.3, 0.3); return true end })
                    event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            local suit_data = SMODS.Suits[other_card.base.suit]
                            local suit_prefix = suit_data.card_key
                            local rank_data = SMODS.Ranks[other_card.base.value]
                            local behavior = rank_data.strength_effect or { fixed = 1, ignore = false, random = false }
                            local rank_suffix = ''
                            if behavior.ignore or not next(rank_data.next) then
                                return true
                            elseif behavior.random then
                                -- TODO doesn't respect in_pool
                                local r = pseudorandom_element(rank_data.next, pseudoseed('strength'))
                                rank_suffix = SMODS.Ranks[r].card_key
                            else
                                local ii = (behavior.fixed and rank_data.next[behavior.fixed]) and behavior.fixed or 1
                                rank_suffix = SMODS.Ranks[rank_data.next[ii]].card_key
                            end
                            other_card:set_base(G.P_CARDS[suit_prefix .. '_' .. rank_suffix])
                            return true
                        end
                    })
                    event({trigger = 'after', delay = 0.15, func = function() other_card:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); other_card:juice_up(0.3, 0.3); return true end })
                end
                if condition then delay(0.7 * 1.25) end
            end
        end
    end
})

create_joker({ -- Puzzle Board
    name = 'Puzzle Board', position = 41,
    vars = {{odds = 4}},
    custom_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome

        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Tarot' then
            if pseudorandom('puzzle_board'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                local cards = {}
                local edition = poll_edition('wheel_of_fortune', nil, true, true)

                for i = 1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_edition() == nil then
                        table.insert(cards, G.hand.highlighted[i])
                    end
                end

                if cards and #cards > 0 then
                    big_juice(card)
                    cards[math.random(#cards)]:set_edition(edition, true)
                end
            end
        end
    end
})

-- Exotic Jokers

create_joker({ -- Zealous
    type = 'Exotic',
    name = 'Zealous', position = 1,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.t_mult}} end,
    custom_config = {t_mult = 30, type = 'h_bunc_Spectrum'},
    rarity = 'Common', cost = 3,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Lurid
    type = 'Exotic',
    name = 'Lurid', position = 2,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.t_chips}} end,
    custom_config = {t_chips = 120, type = 'h_bunc_Spectrum'},
    rarity = 'Common', cost = 3,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Envious
    type = 'Exotic',
    name = 'Envious', position = 3,
    vars = {{s_mult = 12}, {suit = 'bunc_Fleurons'}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    effect = 'Suit Mult'
})

create_joker({ -- Proud
    type = 'Exotic',
    name = 'Proud', position = 4,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.extra.s_mult}} end,
    custom_config = {extra = {s_mult = 12, suit = 'bunc_Halberds'}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    effect = 'Suit Mult'
})

create_joker({ -- Wishalloy
    type = 'Exotic',
    name = 'Wishalloy', position = 5,
    vars = {{odds = 7}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 7,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit('bunc_Fleurons') then
            if pseudorandom('wishalloy'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                local value = context.other_card:get_chip_bonus()
                ease_dollars(value)
                forced_message('$'..value, context.other_card, G.C.MONEY, true, card)
            end
        end
    end
})

create_joker({ -- Unobtanium
    type = 'Exotic',
    name = 'Unobtanium', position = 6,
    vars = {{mult = 12}, {chips = 100}},
    rarity = 'Uncommon', cost = 7,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit('bunc_Halberds') then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = {card.ability.extra.mult}
                },
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
})

create_joker({ -- Dynasty
    type = 'Exotic',
    name = 'Dynasty', position = 7,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.x_mult}} end,
    custom_config = {Xmult = 5, type = 'h_bunc_Spectrum'},
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Magic Wand
    type = 'Exotic',
    name = 'Magic Wand', position = 8,
    vars = {{bonus = 0.3}, {xmult = 1}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['h_bunc_Spectrum']) and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + 0.3
        elseif context.after and context.poker_hands ~= nil and not next(context.poker_hands['h_bunc_Spectrum']) and not context.blueprint then
            if card.ability.extra.xmult ~= 1 then
                card.ability.extra.xmult = 1

                forced_message(localize('k_reset'), card, G.C.RED)
            end
        end

        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    },
                    Xmult_mod = card.ability.extra.xmult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Starfruit
    type = 'Exotic',
    name = 'Starfruit', position = 9,
    vars = {{level_odds = 3}, {destroy_odds = 6}, {condition = false}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.level_odds, card.ability.extra.destroy_odds}
        else
            vars = {1, card.ability.extra.level_odds, card.ability.extra.destroy_odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['h_bunc_Spectrum']) and not context.blueprint then
            if pseudorandom('starfruit'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.level_odds then

                forced_message(localize('k_level_up_ex'), card, G.C.RED, true)
                level_up_hand(card, context.scoring_name, false, 1)
                --update_hand_text({delay = 0, sound = false})

            end

            card.ability.extra.condition = true

        end

        if context.end_of_round and not context.other_card and card.ability.extra.condition == true and not context.blueprint then
            if pseudorandom('starfruit'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.destroy_odds then

                forced_message(localize('k_eaten_ex'), card, G.C.FILTER, true)
                card:start_dissolve()

            else

                forced_message(localize('k_safe_ex'), card, nil, true)
                card.ability.extra.condition = false

            end
        end
    end
})

create_joker({ -- Fondue
    type = 'Exotic',
    name = 'Fondue', position = 10,
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and G.GAME.current_round.hands_played == 0 and not context.blueprint then
            enable_exotics()

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[i]:flip(); play_sound('card1', 1); context.scoring_hand[i]:juice_up(0.3, 0.3); return true end })
            end

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.1,  func = function() context.scoring_hand[i]:change_suit('bunc_Fleurons'); return true end })
            end

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[i]:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); context.scoring_hand[i]:juice_up(0.3, 0.3); return true end })
            end

            delay(0.7 * 1.25)
        end
    end
})

create_joker({ -- Myopia
    type = 'Exotic',
    name = 'Myopia', position = 11,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true
})

create_joker({ -- Astigmatism
    type = 'Exotic',
    name = 'Astigmatism', position = 12,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true
})

create_joker({ -- ROYGBIV
    type = 'Exotic',
    name = 'ROYGBIV', position = 13,
    vars = {{odds = 7}},
    custom_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome

        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['h_bunc_Spectrum']) and not context.blueprint then
            if pseudorandom('roygbiv'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                if context.scoring_hand then

                    local cards = {}

                    for i = 1, #context.scoring_hand do
                        if context.scoring_hand[i]:get_edition() == nil then
                            table.insert(cards, context.scoring_hand[i])
                        end
                    end

                    if cards and #cards > 0 then
                        big_juice(card)
                        cards[math.random(#cards)]:set_edition({polychrome = true}, true) 
                    end
                end
            end
        end
    end
})

-- Legendary Jokers

create_joker({ -- Rigoletto
    type = 'Exotic',
    name = 'Rigoletto', position = 1,
    vars = {{bonus = 0.2}, {xmult = 1}, {tally = 0}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'exotic_cards'}
        return {vars = {card.ability.extra.bonus, card.ability.extra.xmult}}
    end,
    rarity = 'Legendary', cost = 20,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
                return {
                    Xmult_mod = card.ability.extra.xmult,
                    card = card,
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { card.ability.extra.xmult }
                    }
                }
            end
        end
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            card.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v:is_suit('bunc_Fleurons') or v:is_suit('bunc_Halberds') then card.ability.extra.tally = card.ability.extra.tally + 1 end
            end

            card.ability.extra.xmult = 1 + (card.ability.extra.tally * card.ability.extra.bonus)
        end
    end
})

-- Tarots

SMODS.Atlas({key = 'bunco_tarots', path = 'Consumables/Tarots.png', px = 71, py = 95})

SMODS.Consumable{ -- The Sky
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'sky', loc_txt = loc.sky,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(loc.dictionary.mysterious_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {max_highlighted = 3, suit_conv = 'bunc_Fleurons'},
    pos = coordinate(1),

    loc_vars = function(self) return {vars = {self.config.max_highlighted}} end,

    use = function(self)
        enable_exotics()

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                G.hand.highlighted[i]:change_suit(self.config.suit_conv);
            return true end })
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + ( i - 0.999 ) / ( #G.hand.highlighted - 0.998 ) * 0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip(); play_sound('tarot2', percent, 0.6); G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        event({trigger = 'after', delay = 0.2, func = function()
            G.hand:unhighlight_all();
        return true end })
        delay(0.5)
    end,

    in_pool = exotic_in_pool
}

SMODS.Consumable{ -- The Abyss
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'abyss', loc_txt = loc.abyss,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(loc.dictionary.mysterious_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {max_highlighted = 3, suit_conv = 'bunc_Halberds'},
    pos = coordinate(2),

    loc_vars = function(self) return {vars = {self.config.max_highlighted}} end,

    use = function(self)
        enable_exotics()

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                G.hand.highlighted[i]:change_suit(self.config.suit_conv);
            return true end })
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + ( i - 0.999 ) / ( #G.hand.highlighted - 0.998 ) * 0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip(); play_sound('tarot2', percent, 0.6); G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        event({trigger = 'after', delay = 0.2, func = function()
            G.hand:unhighlight_all();
        return true end })
        delay(0.5)
    end,

    in_pool = exotic_in_pool
}

-- Planets

SMODS.Atlas({key = 'bunco_planets', path = 'Consumables/Planets.png', px = 71, py = 95})

SMODS.Consumable{ -- Quaoar
    set = 'Planet', atlas = 'bunco_planets',
    key = 'Quaoar', loc_txt = loc.quaoar,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge('Planet?', get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'h_bunc_Spectrum', softlock = true},
    pos = coordinate(1),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Haumea
    set = 'Planet', atlas = 'bunco_planets',
    key = 'Haumea', loc_txt = loc.haumea,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge('Planet?', get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'h_bunc_Straight Spectrum', softlock = true},
    pos = coordinate(2),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Sedna
    set = 'Planet', atlas = 'bunco_planets',
    key = 'Sedna', loc_txt = loc.sedna,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge('Planet?', get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'h_bunc_Spectrum House', softlock = true},
    pos = coordinate(3),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Makemake
    set = 'Planet', atlas = 'bunco_planets',
    key = 'Makemake', loc_txt = loc.makemake,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge('Planet?', get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'h_bunc_Spectrum Five', softlock = true},
    pos = coordinate(4),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

-- Spectrals

SMODS.Atlas({key = 'bunco_spectrals', path = 'Consumables/Spectrals.png', px = 71, py = 95})

SMODS.Consumable{ -- Cleanse
    set = 'Spectral', atlas = 'bunco_spectrals',
    key = 'cleanse', loc_txt = loc.cleanse,

    config = {max_highlighted = 3},
    pos = coordinate(1),

    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_fluorescent
        return {vars = {self.config.max_highlighted}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted <= self.config.max_highlighted) and G.hand.highlighted[1] then
            local condition = true
            for i = 1, #G.hand.highlighted do
                if G.hand.highlighted[i].edition then
                    condition = false
                end
            end
            if condition then return true end
        end
        return false
    end,

    use = function(self, card)
        local edition = {bunc_fluorescent = true}
        for i = 1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                local highlighted = G.hand.highlighted[i]
                highlighted:set_edition(edition, true)
            return true end })
        end
        card:juice_up(0.3, 0.5)
    end
}

-- Exotic suits

SMODS.Atlas({key = 'bunco_cards', path = 'Exotic/ExoticCards.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_cards_hc', path = 'Exotic/ExoticCardsHC.png', px = 71, py = 95})

SMODS.Atlas({key = 'bunco_suits', path = 'Exotic/ExoticSuits.png', px = 18, py = 18})
SMODS.Atlas({key = 'bunco_suits_hc', path = 'Exotic/ExoticSuitsHC.png', px = 18, py = 18})

SMODS.Suit{ -- Fleurons
    key = 'Fleurons',
    card_key = 'FLEURON',
    hidden = true,

    lc_atlas = 'bunco_cards',
    hc_atlas = 'bunco_cards_hc',

    lc_ui_atlas = 'bunco_suits',
    hc_ui_atlas = 'bunco_suits_hc',

    pos = { x = 0, y = 0 },
    ui_pos = { x = 0, y = 0 },

    lc_colour = HEX('d6901a'),
    hc_colour = HEX('dbb529'),

    loc_txt = loc.fleurons,

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
        return exotic_in_pool()
    end
}

SMODS.Suit{ -- Halberds
    key = 'Halberds',
    card_key = 'HALBERD',
    hidden = true,

    lc_atlas = 'bunco_cards',
    hc_atlas = 'bunco_cards_hc',

    lc_ui_atlas = 'bunco_suits',
    hc_ui_atlas = 'bunco_suits_hc',

    pos = { x = 0, y = 1 },
    ui_pos = { x = 1, y = 0 },

    lc_colour = HEX('6e3c63'),
    hc_colour = HEX('993283'),

    loc_txt = loc.halberds,

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
        return exotic_in_pool()
    end
}

-- Exotic system toggle logic

function disable_exotics()
    if G.GAME then G.GAME.Exotic = false end
    say('Triggered Exotic System disabling.')
end

function enable_exotics()
    if G.GAME then G.GAME.Exotic = true end
    say('Triggered Exotic System enabling.')
end

-- Poker hands

SMODS.PokerHand{ -- Spectrum (Referenced from SixSuits)
    key = 'Spectrum',
    above_hand = 'Full House',
    visible = false,
    chips = 50,
    mult = 6,
    l_chips = 25,
    l_mult = 3,
    example = {
        { 'S_2',    true },
        { 'D_7',    true },
        { 'C_3', true },
        { 'bunc_FLEURON_5', true },
        { 'D_K',    true },
    },
    loc_txt = loc.spectrum,
    atomic_part = function(hand)
        local suits = {}
        for _, v in ipairs(SMODS.Suit.obj_buffer) do
            suits[v] = 0
        end
        if #hand < 5 then return {} end
        for i = 1, #hand do
            if hand[i].ability.name ~= 'Wild Card' then
                for k, v in pairs(suits) do
                    if hand[i]:is_suit(k, nil, true) and v == 0 then
                        suits[k] = v + 1; break
                    end
                end
            end
        end
        for i = 1, #hand do
            if hand[i].ability.name == 'Wild Card' then
                for k, v in pairs(suits) do
                    if hand[i]:is_suit(k, nil, true) and v == 0 then
                        suits[k] = v + 1; break
                    end
                end
            end
        end
        local num_suits = 0
        for _, v in pairs(suits) do
            if v > 0 then num_suits = num_suits + 1 end
        end
        return (num_suits >= 5) and { hand } or {}
    end
}

SMODS.PokerHand{ -- Straight Spectrum (Referenced from SixSuits)
    key = 'Straight Spectrum',
    above_hand = 'Straight Flush',
    visible = false,
    chips = 120,
    mult = 10,
    l_chips = 35,
    l_mult = 5,
    example = {
        { 'S_Q',    true },
        { 'bunc_FLEURON_J', true },
        { 'C_T',    true },
        { 'D_9', true },
        { 'H_8',    true }
    },
    loc_txt = loc.straight_spectrum,
    process_loc_text = function(self)
        SMODS.PokerHand.process_loc_text(self)
        SMODS.process_loc_text(G.localization.misc.poker_hands, self.key..'_2', self.loc_txt, 'extra')
    end,
    composite = function(parts)
        local str, spec = parts._straight, parts['h_bunc_Spectrum']
        local ret = {}
        if next(str) and next(spec) then
            local hand = {}
            for _, v in ipairs(spec[1]) do
                hand[#hand + 1] = v
            end
            for _, v in ipairs(str[1]) do
                local in_straight = nil
                for _, vv in ipairs(spec[1]) do
                    if vv == v then in_straight = true end
                end
                if not in_straight then hand[#hand + 1] = v end
            end
            table.insert(ret, hand)
        end
        return ret
    end,
    modify_display_text = function(self, _cards, scoring_hand)
        local royal = true
		for j = 1, #scoring_hand do
			local rank = SMODS.Ranks[scoring_hand[j].base.value]
			royal = royal and (rank.key == 'Ace' or rank.key == '10' or rank.face)
		end
		if royal then
			return self.key..'_2'
		end
    end
}

SMODS.PokerHand{ -- Spectrum House (Referenced from SixSuits)
    key = 'Spectrum House',
    above_hand = 'Flush House',
    visible = false,
    chips = 150,
    mult = 15,
    l_chips = 50,
    l_mult = 5,
    example = {
        { 'S_Q',    true },
        { 'bunc_FLEURON_Q', true },
        { 'C_Q',    true },
        { 'D_8',    true },
        { 'H_8',    true }
    },
    loc_txt = loc.spectrum_house,
    composite = function(parts)
        local ret = {}
        if next(parts._3) and next(parts._2) and next(parts['h_bunc_Spectrum']) then
            local fh_hand = {}
            local fh_3 = parts._3[1]
            local fh_2 = parts._2[1]
            for i = 1, #fh_3 do
                fh_hand[#fh_hand + 1] = fh_3[i]
            end
            for i = 1, #fh_2 do
                fh_hand[#fh_hand + 1] = fh_2[i]
            end
            table.insert(ret, fh_hand)
        end
        return ret
    end
}

SMODS.PokerHand{ -- Spectrum Five (Referenced from SixSuits)
    key = 'Spectrum Five',
    above_hand = 'Flush Five',
    visible = false,
    chips = 180,
    mult = 18,
    l_chips = 60,
    l_mult = 5,
    example = {
        { 'S_7',    true },
        { 'D_7', true },
        { 'bunc_FLEURON_7',    true },
        { 'H_7',    true },
        { 'C_7',    true }
    },
    loc_txt = loc.spectrum_five,
    composite = function(parts)
        local ret = {}
        if next(parts._5) and next(parts['h_bunc_Spectrum']) then
            ret = parts._5
        end
        return ret
    end
}

SMODS.PokerHand{ -- Deal
    key = 'Deal',
    above_hand = 'Flush Five',
    visible = false,
    chips = 0,
    mult = 0,
    l_chips = 0,
    l_mult = 0,
    example = {},
    loc_txt = loc.deal,
    atomic_part = function(hand)
        local current_ranks = {}
        local deals = {}
        for i = 1, #hand do
            table.insert(current_ranks, hand[i]:get_id())
        end

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Registration Plate' then
                    table.insert(deals, v.ability.extra.ranks)
                end
            end
        end

        local count1 = {}
        for _, value in ipairs(current_ranks) do
            if count1[value] then
                count1[value] = count1[value] + 1
            else
                count1[value] = 1
            end
        end

        for i, deal in ipairs(deals) do
            local count2 = {}
            for _, value in ipairs(deal) do
                if count2[value] then
                    count2[value] = count2[value] + 1
                else
                    count2[value] = 1
                end
            end

            local equal = true
            for key, count in pairs(count1) do
                if count2[key] ~= count then
                    equal = false
                    break
                end
            end

            if equal then
                for key, count in pairs(count2) do
                    if count1[key] ~= count then
                        equal = false
                        break
                    end
                end
            end

            if equal then
                local self = G.GAME.hands['h_bunc_Deal']

                self.chips = 0
                self.mult = 0
                self.level = 0

                for k, v in pairs(G.GAME.hands) do
                    if v.visible and v.played > 0 and v ~= self then
                        self.chips = self.chips + v.chips
                        self.mult = self.mult + v.mult
                    end
                end
                return {hand}
            end
        end
        return {}
    end
}

-- Blinds

SMODS.Atlas({key = 'bunco_blinds', path = 'Blinds/Blinds.png', px = 34, py = 34, frames = 21, atlas_table = 'ANIMATION_ATLAS'})
SMODS.Atlas({key = 'bunco_blinds_finisher', path = 'Blinds/BlindsFinisher.png', px = 34, py = 34, frames = 21, atlas_table = 'ANIMATION_ATLAS'})

SMODS.Blind{ -- The Paling
    key = 'paling', loc_txt = loc.paling,
    boss = {min = 2},

    boss_colour = HEX('45d368'),

    pos = {y = 0},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Umbrella
    key = 'umbrella', loc_txt = loc.umbrella,
    boss = {min = 2},

    boss_colour = HEX('1e408e'),

    pos = {y = 1},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Tine
    key = 'tine', loc_txt = loc.tine,
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_rank, 'ranks')}}
    end,
    process_loc_text = function(self)
        SMODS.Blind.process_loc_text(self)
        self.vars = {loc.dictionary.most_played_rank}
    end,

    debuff_card = function(self, card, from_blind)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled and card.area ~= G.jokers then
            if card.base.value == G.GAME.current_round.most_played_rank then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('e36cbe'),

    pos = {y = 2},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Swing
    key = 'swing', loc_txt = loc.swing,
    boss = {min = 3},

    defeat = function(self)
        G.GAME.Swing = false
    end,

    stay_flipped = function(self, area, card)
        if G.GAME.Swing == true then
            return true
        else
            return false
        end
    end,

    boss_colour = HEX('17f3d0'),

    pos = {y = 3},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Miser
    key = 'miser', loc_txt = loc.miser,
    boss = {min = 2},

    defeat = function(self)
        if not self.disabled then
            G.GAME.Miser = true
        end
    end,

    in_pool = function()
        if G.GAME.round_resets.ante < 2 or G.GAME.round_resets.ante % 8 == 7 then
            return false
        else
            return true
        end
    end,

    boss_colour = HEX('991a7f'),

    pos = {y = 4},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Gate
    key = 'gate', loc_txt = loc.gate,
    boss = {min = 1},

    boss_colour = HEX('c9a27a'),

    pos = {y = 5},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Flame
    key = 'flame', loc_txt = loc.flame,
    boss = {min = 3},

    debuff_card = function(self, card, from_blind)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled and card.area ~= G.jokers then
            if card.config.center ~= G.P_CENTERS.c_base then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('9b2d49'),

    pos = {y = 6},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Mask
    key = 'mask', loc_txt = loc.mask,
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands'), localize(G.GAME.current_round.least_played_poker_hand, 'poker_hands')}}
    end,
    process_loc_text = function(self)
        SMODS.Blind.process_loc_text(self)
        self.vars = {localize('ph_most_played'), loc.dictionary.least_played_hand}
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled then
            if G.GAME.last_hand_played == G.GAME.current_round.most_played_poker_hand then
                G.GAME.blind.triggered = true
                return G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_mult, G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_chips, true
            end
        end
        return mult, hand_chips, false
    end,

    boss_colour = HEX('efcca6'),

    pos = {y = 7},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Bulwark
    key = 'bulwark', loc_txt = loc.bulwark,
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}}
    end,
    process_loc_text = function(self)
        SMODS.Blind.process_loc_text(self)
        self.vars = {localize('ph_most_played')}
    end,

    press_play = function(self)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled then
            if G.FUNCS.get_poker_hand_info(G.hand.highlighted) == G.GAME.current_round.most_played_poker_hand then
                local original_limit = G.hand.config.highlighted_limit
                event({ func = function()
                    G.hand.config.highlighted_limit = math.huge
                    if G.hand.cards then
                        for k, v in ipairs(G.hand.cards) do
                            G.hand:add_to_highlighted(v, true)
                            if k <= 3 then
                                play_sound('card1', 1)
                            end
                        end
                        G.hand.config.highlighted_limit = original_limit or 5
                        G.FUNCS.discard_cards_from_highlighted(nil, true)
                    end
                return true end })
                G.GAME.blind.triggered = true
                delay(0.7)
            end
        end
    end,

    boss_colour = HEX('672f69'),

    pos = {y = 8},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Knoll
    key = 'knoll', loc_txt = loc.knoll,
    boss = {min = 4},

    stay_flipped = function(self, area, card)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled and card.area ~= G.jokers and
        G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
            if G.GAME.dollars > 5 then
                card:set_debuff(true)
            end
        end
    end,

    boss_colour = HEX('6d8f2d'),

    pos = {y = 9},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Stone
    key = 'stone', loc_txt = loc.stone,
    boss = {min = 4},

    boss_colour = HEX('586372'),

    set_blind = function(self, reset, silent)
        if not reset and G.GAME.blind.debuff and not G.GAME.blind.disabled and G.GAME.dollars >= 10 then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) * (math.floor(G.GAME.dollars / 10) + G.GAME.blind.mult)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    pos = {y = 10},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Sand
    key = 'sand', loc_txt = loc.sand,
    boss = {min = 4},

    boss_colour = HEX('b79131'),

    set_blind = function(self, reset, silent)
        if not reset and G.GAME.blind.debuff and not G.GAME.blind.disabled and #G.HUD_tags ~= 0 then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) * (#G.HUD_tags + G.GAME.blind.mult)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    in_pool = function()
        if G.GAME.round_resets.ante < 4 or (G.HUD_tags and #G.HUD_tags < 2) then
            return false
        else
            return true
        end
    end,

    pos = {y = 11},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Blade
    key = 'blade', loc_txt = loc.blade,
    boss = {min = 4},

    vars = {},
    loc_vars = function(self)
        local overscore = get_blind_amount(G.GAME.round_resets.ante)*G.P_BLINDS.bl_bunc_blade.mult*G.GAME.starting_params.ante_scaling
        overscore = number_format(overscore * 1.5)
        say(G.GAME.round_resets.ante..' '..G.GAME.blind.mult..' '..G.GAME.starting_params.ante_scaling..' '..overscore)
        return {vars = {overscore}}
    end,
    process_loc_text = function(self)
        SMODS.Blind.process_loc_text(self)
        self.vars = {loc.dictionary.blade}
    end,

    press_play = function()
        if not G.GAME.Blade then G.GAME.Blade = {} end
        G.GAME.Blade.chips = G.GAME.chips
    end,

    defeat = function()
        G.GAME.Blade = nil
    end,

    boss_colour = HEX('d92034'),

    pos = {y = 12},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Claw
    key = 'claw', loc_txt = loc.claw,
    boss = {min = 1},

    boss_colour = HEX('d45741'),

    pos = {y = 13},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Veil
    key = 'veil', loc_txt = loc.veil,
    boss = {min = 1},

    boss_colour = HEX('ffdf7d'),

    pos = {y = 14},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Cadaver
    key = 'cadaver', loc_txt = loc.cadaver,
    boss = {min = 2},

    debuff_hand = function(self, cards, hand, handname, check)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled then
            for i = 1, #cards do
                if cards[i]:is_face() then
                    return true
                end
            end
            return false
        end
    end,

    boss_colour = HEX('a132d5'),

    pos = {y = 15},
    atlas = 'bunco_blinds'
}

-- Finishers

SMODS.Blind{ -- Chartreuse Crown
    key = 'final_crown', loc_txt = loc.chartreuse_crown,
    boss = {showdown = true, min = 10, max = 10},

    debuff_card = function(self, card, from_blind)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled and card.area ~= G.jokers then
            if card.base.suit == ('Spades') or
            card.base.suit == ('Hearts') or
            card.base.suit == ('Clubs') or
            card.base.suit == ('Diamonds') then
                if card.ability.name ~= 'Stone Card' then
                    card:set_debuff(true)
                    return true
                end
            end
            return false
        end
    end,

    in_pool = function()
        local exotic_amount = 0

        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if (v.base.suit == ('bunc_Fleurons') or
                v.base.suit == ('bunc_Halberds')) and
                v.ability.name ~= 'Stone Card' then
                    exotic_amount = exotic_amount + 1
                end
            end
        end

        if exotic_amount >= 10 then
            return true
        else
            return false
        end
    end,

    boss_colour = HEX('96a756'),

    pos = {y = 0},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Vermilion Trident
    key = 'final_trident', loc_txt = loc.vermilion_trident,
    boss = {showdown = true, min = 10, max = 10},

    defeat = function(self)
        G.GAME.Trident = false
    end,

    boss_colour = HEX('db481e'),

    pos = {y = 1},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Indigo Tower
    key = 'final_tower', loc_txt = loc.indigo_tower,
    boss = {showdown = true, min = 10, max = 10},

    debuff_card = function(self, card, from_blind)
        if G.GAME.blind.debuff and not G.GAME.blind.disabled and card.area ~= G.jokers then
            if not card.ability.played_this_ante then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('4f4caa'),

    pos = {y = 2},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Magenta Dagger
    key = 'final_dagger', loc_txt = loc.magenta_dagger,
    boss = {showdown = true, min = 10, max = 10},

    boss_colour = HEX('cb589f'),

    pos = {y = 3},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Turquoise Shield
    key = 'final_shield', loc_txt = loc.turquoise_shield,
    boss = {showdown = true, min = 10, max = 10},

    set_blind = function(self, reset, silent)
        if not reset and G.GAME.blind.debuff and not G.GAME.blind.disabled and G.GAME.overscore ~= 0 then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) + (G.GAME.overscore or 0)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    defeat = function(self)
        G.GAME.Shield = false
    end,

    boss_colour = HEX('12e2bf'),

    pos = {y = 4},
    atlas = 'bunco_blinds_finisher'
}

-- Decks

SMODS.Atlas({key = 'bunco_decks', path = 'Decks/Decks.png', px = 71, py = 95})

SMODS.Back{ -- Fairy
	key = "fairy", loc_txt = loc.fairy,

    config = {amount = 4},
    loc_vars = function(self)
        return {vars = {self.config.amount, localize{type = 'name_text', set = 'Other', key = 'exotic_cards'}}}
    end,

    unlocked = false,

    apply = function()
        enable_exotics()
    end,
    trigger_effect = function(self, args)
        if args.context == 'eval' and G.GAME.last_blind and G.GAME.last_blind.boss then
            event({
                func = (function()
                    local numbers = {}
                    for _, v in ipairs(SMODS.Rank.obj_buffer) do
                        local r = SMODS.Ranks[v]
                        table.insert(numbers, r.card_key)
                    end

                    local suits = {'bunc_FLEURON', 'bunc_HALBERD'}

                    for i = 1, self.config.amount do
                        local rank = pseudorandom_element(numbers, pseudoseed('fairy'..G.SEED))
                        local suit = pseudorandom_element(suits, pseudoseed('fairy'..G.SEED))
                        create_playing_card({front = G.P_CARDS[suit .. '_' .. rank]}, G.deck, false, false, {G.C.BUNCO_EXOTIC})
                    end

                    return true
                end)
            })
        end
    end,

    atlas = 'bunco_decks'
}

-- Tags

SMODS.Atlas({key = 'bunco_tags', path = 'Tags/Tags.png', px = 34, py = 34})

SMODS.Tag{ -- Glitter
    key = 'glitter', loc_txt = loc.glitter_tag,

    config = {type = 'store_joker_modify', edition = 'bunc_glitter', odds = 4},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter
        return {}
    end,

    apply = function(tag, context)
        if context.type == 'store_joker_modify' then
            local applied = nil
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true

                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION,function()
                    context.card:set_edition({bunc_glitter = true}, true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    context.card.temp_edition = nil
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                applied = true

                tag.triggered = true
            end
            return applied
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags',
}

SMODS.Tag{ -- Fluorescent
    key = 'fluorescent', loc_txt = loc.fluorescent_tag,

    config = {type = 'store_joker_modify', edition = 'bunc_fluorescent', odds = 4},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_fluorescent
        return {}
    end,

    apply = function(tag, context)
        if context.type == 'store_joker_modify' then
            local applied = nil
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true

                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION,function()
                    context.card:set_edition({bunc_fluorescent = true}, true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    context.card.temp_edition = nil
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                applied = true

                tag.triggered = true
            end
            return applied
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_tags',
}

SMODS.Tag{ -- Chips
    key = 'chips', loc_txt = loc.chips,

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_foil.config.extra}}
    end,
    apply = function(tag, context)
        if context.type == 'hand_played' then

            hand_chips = mod_chips(hand_chips + G.P_CENTERS.e_foil.config.extra)
            update_hand_text({delay = 0}, {chips = hand_chips})

            tag:instayep('+', G.C.CHIPS, function()
                return true
            end, 0)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(3),
    atlas = 'bunco_tags',

    in_pool = function() return false end
}

SMODS.Tag{ -- Mult
    key = 'mult', loc_txt = loc.mult,

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_holo.config.extra}}
    end,
    apply = function(tag, context)
        if context.type == 'hand_played' then

            mult = mod_mult(mult + G.P_CENTERS.e_holo.config.extra)
            update_hand_text({delay = 0}, {mult = mult})

            tag:instayep('+', G.C.MULT, function()
                return true
            end, 0)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(4),
    atlas = 'bunco_tags',

    in_pool = function() return false end
}

SMODS.Tag{ -- Xmult
    key = 'xmult', loc_txt = loc.xmult,

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_polychrome.config.extra}}
    end,
    apply = function(tag, context)
        if context.type == 'hand_played' then

            mult = mod_mult(mult * G.P_CENTERS.e_polychrome.config.extra)
            update_hand_text({delay = 0}, {mult = mult})

            tag:instayep('+', G.C.MULT, function()
                return true
            end, 0)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(5),
    atlas = 'bunco_tags',

    in_pool = function() return false end
}

SMODS.Tag{ -- Xchip
    key = 'xchips', loc_txt = loc.xchips,

    config = {type = 'hand_played', odds = -1},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_bunc_glitter.config.Xchips}}
    end,
    apply = function(tag, context)
        if context.type == 'hand_played' then

            hand_chips = mod_chips(hand_chips * G.P_CENTERS.e_bunc_glitter.config.Xchips)
            update_hand_text({delay = 0}, {chips = hand_chips})

            tag:instayep('+', G.C.CHIPS, function()
                return true
            end, 0)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(6),
    atlas = 'bunco_tags',

    in_pool = function() return false end
}

SMODS.Tag{ -- Filigree
    key = 'filigree', loc_txt = loc.filigree,

    config = {type = 'standard_pack_opened'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {set = 'Other', key = 'exotic_cards'}
        return {}
    end,
    apply = function(tag, context)
        if context.type == 'standard_pack_opened' then
            tag:instayep('+', G.C.BUNCO_EXOTIC, function()
                return true
            end)
            event({
                trigger = 'after',
                delay = 1.3 * math.sqrt(G.SETTINGS.GAMESPEED),
                blockable = false,
                blocking = false,
                func = function()
                    if G.pack_cards and G.pack_cards.cards ~= nil and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                        enable_exotics()

                        for _, v in ipairs(G.pack_cards.cards) do
                            if not v:is_suit('bunc_Fleurons') and not v:is_suit('bunc_Halberds') then
                                local suits = {'bunc_Fleurons', 'bunc_Halberds'}
                                local suit = pseudorandom_element(suits, pseudoseed('filigree'..G.SEED))
                                v:change_suit(suit)
                            end
                        end

                        return true
                    end
                end
            })
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(7),
    atlas = 'bunco_tags',

    in_pool = exotic_in_pool
}

-- Editions

SMODS.Shader({key = 'glitter', path = 'glitter.fs'})
SMODS.Sound({key = 'glitter', path = 'glitter.ogg'})

SMODS.Edition{
    key = 'glitter', loc_txt = loc.glitter_edition,

    config = {Xchips = 1.3},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.Xchips}}
    end,

    sound = {sound = 'bunc_glitter', per = 1.2, vol = 0.4},
    in_shop = true,
    weight = 9,
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,

    shader = 'glitter'
}

SMODS.Shader({key = 'fluorescent', path = 'fluorescent.fs'})
SMODS.Sound({key = 'fluorescent', path = 'fluorescent.ogg'})

SMODS.Edition{
    key = 'fluorescent', loc_txt = loc.fluorescent_edition,

    sound = {sound = 'bunc_fluorescent', per = 1.2, vol = 0.4},
    in_shop = true,
    weight = 18,
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,

    shader = 'fluorescent'
}