--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch, RENREN, Peas, minichibis, J.D., Guwahavel, Ciirulean]
--- MOD_DESCRIPTION: Mod aiming for vanilla style, a lot of new Jokers, Blinds, other stuff and Exotic Suits system!
--- VERSION: 5.0

-- ToDo:
-- Fix Crop Circles always showing Fleurons
-- Check how to add custom entries to the localization (for card messages like linocut's one)
-- Cassette proper coordinates

local bunco = SMODS.current_mod
local filesystem = NFS or love.filesystem

local loc = filesystem.load(bunco.path..'localization.lua')()

-- Shaders

local background_shader = NFS.read(bunco.path..'resources/shaders/background.fs')
local splash_shader = NFS.read(bunco.path..'resources/shaders/splash.fs')
G.SHADERS['background'] = love.graphics.newShader(background_shader)
G.SHADERS['splash'] = love.graphics.newShader(splash_shader)

-- Debug message

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
    G.E_MANAGER:add_event(Event({
        trigger = config.trigger,
        delay = config.delay,
        blockable = config.blockable,
        blocking = config.blocking,
        func = config.func
    }))
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

-- Exotic table, enhancements pool

exotic_table = {}

local enhancement_pool = {
    G.P_CENTERS.m_bonus,
    G.P_CENTERS.m_mult,
    G.P_CENTERS.m_wild,
    G.P_CENTERS.m_stone,
    G.P_CENTERS.m_steel,
    G.P_CENTERS.m_glass,
    G.P_CENTERS.m_gold,
    G.P_CENTERS.m_lucky
}

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
    update = joker.update,
    remove_from_deck = joker.remove,
    add_to_deck = joker.add
    }
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

                    if other_card:is_suit('Hearts') or other_card:is_suit('Diamonds') or other_card:is_suit('Fleurons') then
                        if side == 'A' then
                            return {
                                chips = card.ability.extra.chips,
                                card = card
                            }
                        end
                    end

                    if other_card:is_suit('Spades') or other_card:is_suit('Clubs') or other_card:is_suit('Halberds') then
                        if side == 'B' then
                            return {
                                mult = card.ability.extra.mult,
                                card = card
                            }
                        end
                    end
                end
            end,
            update = function(card, card)
                if card.VT.w <= 0 then
                    if card.ability.extra.side == 'A' then
                        card.children.center:set_sprite_pos({x = 0, y = 0})
                    else
                        card.children.center:set_sprite_pos({x = 1, y = 0})
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
    vars = {{base = 3}, {xmult = 3}, {tally = 0}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
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
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            card.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.tally = card.ability.extra.tally + 1 end
            end

            if (card.ability.extra.base - card.ability.extra.tally * 0.1) >= 1 then
                card.ability.extra.xmult = card.ability.extra.base - card.ability.extra.tally * 0.1
            else
                card.ability.extra.xmult = 1
            end
        end
    end
})

create_joker({ -- Crop Circles
    name = 'Crop Circles', position = 5,
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card

            if other_card.ability.effect ~= 'Stone Card' then

                if other_card.base.suit == ('Fleurons') then
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
    vars = {{xmult = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then

            if context.emplaced_card and context.emplaced_card.facing == 'back' and not context.blueprint then
                card.ability.extra.xmult = card.ability.extra.xmult + 0.2

                forced_message('X'..tostring(card.ability.extra.xmult)..' Mult', card, G.C.RED, true)
            end

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
            if context.full_hand ~= nil and context.full_hand[1] and not context.other_card then
                card.ability.extra.trash_list = {}
                for k, v in ipairs(context.full_hand) do
                    table.insert(card.ability.extra.trash_list, v)
                end
            end

            if context.after and G.GAME.current_round.hands_left == 0 and context.scoring_name ~= nil then

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
                            card.ability.extra.trash_list[i].destroyed = true
                            card.ability.extra.trash_list[i]:start_dissolve(nil, nil, 3)
                            card.ability.extra.trash_list[i].destroyed = true
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
                if v == context.other_card.base.id .. context.other_card.base.suit then
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
                table.insert(card.ability.extra.card_list, context.other_card.base.id .. context.other_card.base.suit) -- Add the card to the list
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
        if not context.blueprint then
            if context.individual and context.cardarea == G.play and context.poker_hands and next(context.poker_hands['Pair']) then

                if context.scoring_hand ~= nil and #context.scoring_hand == 2 and context.scoring_hand[1] == context.other_card then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('card1', 1); context.scoring_hand[1]:juice_up(0.3, 0.3); return true end }))
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1,  func = function() context.scoring_hand[1]:change_suit(context.scoring_hand[2].config.card.suit); return true end }))
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('tarot2', 1, 0.6);context.scoring_hand[1]:juice_up(0.3, 0.3); return true end }))

                    forced_message('Copied!', card, G.C.RED, true)

                end
            end
        end
    end
})

create_joker({ -- Ghost Print
    name = 'Ghost Print', position = 10,
    vars = {{last_hand = 'Nothing'}},
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
    rarity = 'Uncommon', cost = 3,
    blueprint = false, eternal = true,
    unlocked = true,
    add = function(self, card)
        ease_dollars(50)
        card.ability.extra_value = -100 - card.sell_cost
        card:set_cost()
    end
})

create_joker({ -- Basement
    name = 'Basement', position = 12,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
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
    vars = {{chips = 0}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.poker_hands ~= nil and next(context.poker_hands['Pair']) and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + 6

            forced_message('+'..tostring(card.ability.extra.chips)..' Chips', card, G.C.BLUE, true)
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
    calculate = function(self, card, context)
        if context.setting_blind and not card.getting_sliced and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus

            G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function()
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 0.85);return true end })) 
                delay(0.15)
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1.15);return true end })) 
                delay(0.15)
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1);return true end })) 
                delay(0.5)
            return true end }))

            forced_message('+'..tostring(card.ability.extra.mult)..' Mult', card, G.C.RED)
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

                        if G.pack_cards and G.pack_cards.cards ~= nil and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center == G.P_CENTERS.c_base then
                                    v:set_ability(enhancement_pool[math.random(#enhancement_pool)])
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
                    if context.scoring_hand[i]:get_id() >= 6 or
                    context.scoring_hand[i]:get_id() < 2 then
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
    unlocked = true,
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
    vars = {{probability = 0}, {odds = 2}},
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    update = function(self, card)
        if card.ability then
            card.ability.extra.probability = G.GAME.probabilities.normal
        end
    end
})