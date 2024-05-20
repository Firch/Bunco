--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch, RENREN, Peas, minichibis, J.D., Guwahavel, Ciirulean]
--- MOD_DESCRIPTION: Mod aiming for vanilla style, a lot of new Jokers, Blinds, other stuff and Exotic Suits system!
--- VERSION: 5.0

local bunco = SMODS.current_mod
local filesystem = NFS or love.filesystem

local loc = filesystem.load(bunco.path..'localization.lua')()

-- Joker creation setup

SMODS.Atlas({key = 'bunco_jokers', path = 'Jokers/Jokers.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_exotic', path = 'Jokers/JokersExotic.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_legendary', path = 'Jokers/JokersLegendary.png', px = 71, py = 95})

local function create_joker(joker)

    -- Sprite position

    local width = 10 -- Width of the spritesheet (in Jokers)
    joker.position = {(joker.position - 1) % width, math.floor((joker.position - 1) / width)} -- Calculates coordinates based on the position variable

    -- Sprite atlas

    if joker.type == nil then
        joker.atlas = 'bunco_jokers'
    elseif joker.type == 'Exotic' then
        joker.atlas = 'bunco_jokers_exotic'
    end

    if joker.rarity == 'Legendary' then
        joker.atlas = 'bunco_jokers_legendary'
    end

    -- Soul sprite

    if joker.rarity == 'Legendary' then
        joker.soul = {joker.position[1] + 1, joker.position[2]}
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

    -- Joker creation

    SMODS.Joker{
    name = joker.name,
    key = key,

    atlas = joker.atlas,
    spritePos = joker.position,
    soul_pos = joker.soul,

    rarity = joker.rarity,
    cost = joker.cost,

    unlocked = joker.unlocked,
    discovered = false,

    blueprint_compat = joker.blueprint,
    eternal_compat = joker.eternal,

    loc_txt = loc[key],

    config = {extra = joker.vars},
    loc_vars = function(self, info_queue, card)

        local vars = {}

        for index, key in ipairs(joker.vars) do
            table.insert(vars, card.ability.extra[key])
        end

        table.sort(vars)

        return { vars = vars } end
    }
end

-- Cassette Joker

create_joker({
            name = 'Cassette', position = 1,
            vars = {{ chips = 45 }, { mult = 6 }, { size = 'A' }},
            rarity = 'Uncommon', cost = 5,
            blueprint = true, eternal = true,
            unlocked = true
})

--[[ function SMODS.Jokers.j_cassette.calculate(card, context)
    if context.pre_discard then

        local side = self.ability.extra.side

        if side == 'A' then
            side = 'B'
        else
            side = 'A'
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
end ]]