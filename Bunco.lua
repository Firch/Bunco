--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch]
--- MOD_DESCRIPTION: Vanilla-style mod that adds various things, such as Jokers!

----------------------------------------------
------------MOD CODE -------------------------

---- Bunco
--
-- A mod that I'm trying so hard to make. Of course feel free to reference anything from here.
--
---- Bunco code minimap (\MAP)
-- How to use - there's prefix/main name of snippet, and there are postfixes that lead to subcategories of each.
-- That was made to find certain parts of code faster with CTRL + F.
--
-- Syntax: '\' + Prefix + Postfix
--
-- Config (CONF)
--
-- Global variables (GLOB)
--
-- Exotic cards (Prefix: EX)
--  Sprites (SPR)
--  Localization (LOC)
--  Handlist (HAN) - manages the list with hands and their levels, specifically adds new hands to it
--  Detection (DET) - manages the evaluation of new poker hands when the cards are selected in game
--  Initializing (INI) - manages the appearing and disappearing of suits in suit/card list
--  Planets (PLA)
--  Tarots (TAR)
--
-- Generic Functions (FUNC)
--
-- Ver 1 Jokers: Cassette (CASS), Mosaic (MOSA), Voxel (VOXE), Crop Circles (CROP), X-Ray (XRAY), Dread (DREA), Prehistoric (PREH),
-- Ver 2: Linocut (LINO), Ghost Print (GHOS), Loan Shark (LOAN), Basement (BASE), Shepherd (SHEP), Knight (KNIG), JM & JB (JMJB),
-- Dogs Playing Poker (DOGS), Righthook (RIGH), Fiendish (FIEN), Carnival (CARN), Envious (ENVI), Proud (PROU)
-- Jimbo (JIMB)
--  Base (BAS)
--  Localization (LOC)
--  Additional function(s) (FUN)

function SMODS.INIT.Bunco()

    ---- Config (\CONF):

    local enable_jimbo = false

    ---- Global variables (\GLOB):

    local bunco_mod = SMODS.findModByID('Bunco')

    local sprite_tarots = SMODS.Sprite:new('bunco_tarots', bunco_mod.path, 'Tarots.png', 71, 95, 'asset_atli') sprite_tarots:register()
    local sprite_planets = SMODS.Sprite:new('bunco_planets', bunco_mod.path, 'Planets.png', 71, 95, 'asset_atli') sprite_planets:register()

    ---- Exotic cards (\EX):

    -- Exotic cards sprites (\EX_SPR):

    local sprite_exotic_cards = SMODS.Sprite:new('exotic_cards', bunco_mod.path, '8BitDeck.png', 71, 95, 'asset_atli') sprite_exotic_cards:register()
    local sprite_exotic_cards_ui = SMODS.Sprite:new('exotic_cards_ui', bunco_mod.path, 'ui_assets.png', 18, 18, 'asset_atli') sprite_exotic_cards_ui:register()

    local sprite_exotic_cards_high_contrast = SMODS.Sprite:new('exotic_cards_high_contrast', bunco_mod.path, '8BitDeck.png', 71, 95, 'asset_atli') sprite_exotic_cards_high_contrast:register()
    local sprite_exotic_cards_ui_high_contrast = SMODS.Sprite:new('exotic_cards_ui_high_contrast', bunco_mod.path, 'ui_assets.png', 18, 18, 'asset_atli') sprite_exotic_cards_ui_high_contrast:register()

    -- Exotic cards localization (\EX_LOC):

    G.localization.misc['poker_hands']['Spectrum'] = 'Spectrum' -- Copied from SixSuits mod
    G.localization.misc['poker_hands']['Straight Spectrum'] = 'Straight Spectrum'
    G.localization.misc['poker_hands']['Royal Spectrum'] = 'Royal Spectrum'
    G.localization.misc['poker_hands']['Spectrum House'] = 'Spectrum House'
    G.localization.misc['poker_hands']['Spectrum Five'] = 'Spectrum Five'
    G.localization.misc['poker_hand_descriptions']['Spectrum'] = {
        [1] = '5 cards, each with a different suit'
    }
    G.localization.misc['poker_hand_descriptions']['Straight Spectrum'] = {
        [1] = '5 cards in a row (consecutive ranks) with',
        [2] = 'each card having a different suit'
    }
    G.localization.misc['poker_hand_descriptions']['Royal Spectrum'] = {
        [1] = '5 cards in a row (consecutive ranks) with',
        [2] = 'each card having a different suit'
    }
    G.localization.misc['poker_hand_descriptions']['Spectrum House'] = {
        [1] = 'A Three of a Kind and a Pair with',
        [2] = 'each card having a different suit'
    }
    G.localization.misc['poker_hand_descriptions']['Spectrum Five'] = {
        [1] = '5 cards with the same rank,',
        [2] = 'each with a different suit'
    }

    -- Exotic cards handlist (\EX_HAN):

    function add_to_handlist(previous, next) -- I copied this from SixSuits and it was quite convoluted, I made it even stinkier because I have no idea what actually was happening here, but now it's way more easier to add hands
        local ii = {}
        for i, v in ipairs(G.handlist) do
            local hand_to_add = (v == previous) and next or nil
            if hand_to_add then
                ii[hand_to_add] = i
            end
        end
        local j = 0
        for hand, i in pairs(ii) do
            table.insert(G.handlist, i + j, hand)
            j = j + 1
        end
    end

    add_to_handlist('Full House', 'Spectrum')
    add_to_handlist('Flush Five', 'Spectrum Five')
    add_to_handlist('Flush House', 'Spectrum House')
    add_to_handlist('Flush House', 'Straight Spectrum')

    local init_game_object_original = Game.init_game_object
    function Game:init_game_object()
        local t = init_game_object_original(self)

        t.hands['Spectrum Five'] =     { visible = true, order = t.hands['Flush Five'].order + 0.1,     mult = 18, chips = 180, s_mult = 18, s_chips = 180, level = 1, l_mult = 5, l_chips = 60, played = 0, played_this_round = 0, example = { { 'S_A', true }, { 'H_A', true }, { 'C_A', true }, { 'D_A', true }, { 'HALBERDS_A', true } } }
        t.hands['Spectrum House'] =    { visible = true, order = t.hands['Flush Five'].order - 0.1, mult = 15,  chips = 150,  s_mult = 15,  s_chips = 150,  level = 1, l_mult = 5, l_chips = 50, played = 0, played_this_round = 0, example = { { 'D_7', true }, { 'H_7', true }, { 'FLEURONS_7', true }, { 'HALBERDS_4', true }, { 'C_4', true } } }
        t.hands['Straight Spectrum'] = { visible = true, order = t.hands['Flush Five'].order - 0.1, mult = 10,  chips = 130,  s_mult = 13,  s_chips = 120,  level = 1, l_mult = 5, l_chips = 35, played = 0, played_this_round = 0, example = { { 'S_Q', true }, { 'FLEURONS_J', true }, { 'C_T', true }, { 'HALBERDS_9', true }, { 'H_8', true } } }
        t.hands['Spectrum'] =          { visible = true, order = t.hands['Full House'].order + 0.1,     mult = 6,  chips = 50,  s_mult = 6,  s_chips = 50,  level = 1, l_mult = 3, l_chips = 25, played = 0, played_this_round = 0, example = { { 'H_2', true }, { 'D_5', true }, { 'S_8', true }, { 'C_T', true }, { 'FLEURONS_A', true } } }
        return t
    end

    -- Exotic cards detection (\EX_DET)

    function get_spectrum(hand)
        local suits = {}
        for _, v in ipairs(SMODS.Card.SUIT_LIST) do
            suits[v] = 0
        end

        if #hand ~= 5 then return {} end

        local num_wild_cards = 0
        local num_non_wild_cards = 0
        for i = 1, #hand do
            if hand[i].ability.name == 'Wild Card' then
                num_wild_cards = num_wild_cards + 1
            else
                num_non_wild_cards = num_non_wild_cards + 1
                for k, v in pairs(suits) do
                    if hand[i]:is_suit(k, nil, true) and v == 0 then
                        suits[k] = v + 1
                        break
                    end
                end
            end
        end

        local num_suits = 0
        for _, v in pairs(suits) do
            if v > 0 then num_suits = num_suits + 1 end
        end

        if num_non_wild_cards == 1 then
            return { hand }
        elseif num_non_wild_cards == 0 and num_wild_cards == 5 then
            return { hand }
        else
            return (num_suits + num_wild_cards >= 5) and { hand } or {}
        end
    end

    local evaluate_poker_hand_six_suit_ref = evaluate_poker_hand
    function evaluate_poker_hand(hand)
        local results = evaluate_poker_hand_six_suit_ref(hand)
        results['Spectrum'] = {}
        results['Straight Spectrum'] = {}
        results['Spectrum House'] = {}
        results['Spectrum Five'] = {}
        local s = get_spectrum(hand)
        if next(s) then
            results['Spectrum'] = s
            results.top = s
            if next(get_straight(hand)) then
                results['Straight Spectrum'] = s
            end
            if next(get_X_same(3, hand)) and next(get_X_same(2, hand)) then
                results['Spectrum House'] = s
            end
            if next(get_X_same(5, hand)) then
                results['Spectrum Five'] = s
            end
        end
        return results
    end

    function G.FUNCS.get_poker_hand_info(_cards) --! DO NOT MODIFY | add hands to G.handlist and G.GAME.hands instead
        local poker_hands = evaluate_poker_hand(_cards)
        local scoring_hand = {}
        local text, disp_text, loc_disp_text = 'NULL', 'NULL', 'NULL'
        for _, v in ipairs(G.handlist) do
            if next(poker_hands[v]) then
                text = v
                scoring_hand = poker_hands[v][1]
                break
            end
        end
        disp_text = text
        if text == 'Straight Flush' then
            local min = 10
            for j = 1, #scoring_hand do
                if scoring_hand[j]:get_id() < min then min = scoring_hand[j]:get_id() end
            end
            if min >= 10 then
                disp_text = 'Royal Flush'
            end
        end
        if text == 'Straight Spectrum' then
            local min = 10
            for j = 1, #scoring_hand do
                if scoring_hand[j]:get_id() < min then min = scoring_hand[j]:get_id() end
            end
            if min >= 10 then
                disp_text = 'Royal Spectrum'
            end
        end
        loc_disp_text = localize(disp_text, 'poker_hands')
        return text, loc_disp_text, poker_hands, scoring_hand, disp_text
    end

    function create_UIBox_current_hands(simple) --! DO NOT MODIFY | handles hands added to G.handlist
        local hands = {}
        for _, v in ipairs(G.handlist) do
            hands[#hands + 1] = create_UIBox_current_hand_row(v, simple)
        end
        local t = {
            n = G.UIT.ROOT,
            config = { align = "cm", minw = 3, padding = 0.1, r = 0.1, colour = G.C.CLEAR },
            nodes = {
                {
                    n = G.UIT.R,
                    config = { align = "cm", padding = 0.04 },
                    nodes =
                        hands
                },
            }
        }
        return t
    end

    -- Exotic cards Initializing (\EX_INI):

    local function acknowledge(suit, initial)

        if suit == 'Fleurons' then

            SMODS.Card:new_suit('Fleurons', 'exotic_cards', 'exotic_cards_high_contrast', { y = 0 }, 'exotic_cards_ui', 'exotic_cards_ui_high_contrast',
                { x = 0, y = 0 }, 'd6901a', 'd6901a')

            if G.GAME ~= nil and (G.GAME.Fleurons == false or G.GAME.Fleurons == nil) and initial == nil then

                G.GAME.Fleurons = true

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

            if initial ~= nil and initial == true then

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

        elseif suit == 'Halberds' then

            SMODS.Card:new_suit('Halberds', 'exotic_cards', 'exotic_cards_high_contrast', { y = 1 }, 'exotic_cards_ui', 'exotic_cards_ui_high_contrast',
                { x = 1, y = 0 }, '6e3c63', '6e3c63')

            if G.GAME ~= nil and (G.GAME.Halberds == false or G.GAME.Halberds == nil) and initial == nil then

                G.GAME.Halberds = true

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

            if initial ~= nil and initial == true then

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end
        end
    end

    local function forget(suit, initial, deck, forced) -- G.GAME.Suit returns nil if the suit wasn't encountered, true if it is currently in the deck and false if it was encountered but not in the deck

        if suit == 'Fleurons' then

            if forced then

                SMODS.Card:delete_suit('Fleurons')

                G.GAME.Fleurons = false

                sendDebugMessage('Forcibly forgot '..suit..'!')

            end

            if G.GAME ~= nil and G.GAME.Fleurons == true and initial == nil then

                if deck == true then
                    local fleurons = false

                    for k, v in pairs(G.playing_cards) do
                        if v:is_suit('Fleurons') then fleurons = true end
                    end

                    if fleurons == false then

                        SMODS.Card:delete_suit('Fleurons')

                        G.GAME.Fleurons = false

                    end
                else

                    SMODS.Card:delete_suit('Fleurons')

                    G.GAME.Fleurons = false

                end

                sendDebugMessage('Forgot '..suit..'! (Initial:'..tostring(initial or 'false')..')')
            end

            if initial ~= nil and initial == true then
                SMODS.Card:delete_suit('Fleurons')

                sendDebugMessage('Forgot '..suit..'! (Initial:'..tostring(initial or 'false')..')')
            end

        elseif suit == 'Halberds' then

            if forced then

                SMODS.Card:delete_suit('Halberds')

                G.GAME.Fleurons = false

                sendDebugMessage('Forcibly forgot '..suit..'!')

            end

            if G.GAME ~= nil and G.GAME.Halberds == true and initial == nil then

                if deck == true then
                    local halberds = false

                    for k, v in pairs(G.playing_cards) do
                        if v:is_suit('Halberds') then halberds = true end
                    end

                    if halberds == false then

                        SMODS.Card:delete_suit('Halberds')

                        G.GAME.Halberds = false

                    end
                else

                    SMODS.Card:delete_suit('Halberds')

                    G.GAME.Halberds = false

                end

                sendDebugMessage('Forgot '..suit..'! (Initial:'..tostring(initial or 'false')..')')
            end

            if initial ~= nil and initial == true then
                SMODS.Card:delete_suit('Halberds')

                sendDebugMessage('Forgot '..suit..'! (Initial:'..tostring(initial or 'false')..')')
            end

        end
    end

    acknowledge('Fleurons', true)
    acknowledge('Halberds', true)
    forget('Fleurons', true)
    forget('Halberds', true)

    local original_start_run = Game.start_run

    function Game:start_run(args)
        if args.savetext then
            if not G.SAVED_GAME then
                G.SAVED_GAME = get_compressed(G.SETTINGS.profile..'/'..'save.jkr')
                if G.SAVED_GAME ~= nil then G.SAVED_GAME = STR_UNPACK(G.SAVED_GAME) end
            end
            if G.SAVED_GAME ~= nil then
                saved_game = G.SAVED_GAME
            end
        else
            saved_game = nil
        end

        sendDebugMessage('Bunco run info: (PRELOAD)')
        sendDebugMessage('Are fleurons known? - '..tostring(saved_game and saved_game.GAME.Fleurons))
        sendDebugMessage('Are halberds known? - '..tostring(saved_game and saved_game.GAME.Halberds))

        if saved_game ~= nil then
            if saved_game.GAME.Fleurons ~= nil then

                sendDebugMessage('Registered fleurons, because the current run already had them!')
                acknowledge('Fleurons')

            else

                sendDebugMessage('Removed fleurons; undiscovered in the current run!')
                forget('Fleurons')

            end
            if saved_game.GAME.Halberds ~= nil then

                sendDebugMessage('Registered halberds, because the current run already had them!')
                acknowledge('Halberds')

            else

                sendDebugMessage('Removed halberds; undiscovered in the current run!')
                forget('Halberds')

            end
        end

        if saved_game == nil then
            sendDebugMessage('Removed exotic suits; new run!')
        end

        original_start_run(self, args)

        if saved_game ~= nil then
            if saved_game.GAME.Fleurons == false then

                sendDebugMessage('Removing fleurons that were discovered but are not in the deck')
                forget('Fleurons', nil, nil, true)

            end
            if saved_game.GAME.Halberds == false then

                sendDebugMessage('Removing halberds that were discovered but are not in the deck')
                forget('Halberds', nil, nil, true)

            end
        end

        sendDebugMessage('Bunco run info: (POSTLOAD)')
        sendDebugMessage('Are fleurons known? - '..tostring(saved_game and saved_game.GAME.Fleurons))
        sendDebugMessage('Are halberds known? - '..tostring(saved_game and saved_game.GAME.Halberds))
    end

    local original_card_remove = Card.remove

    function Card:remove()
        original_card_remove(self)

        if G.playing_cards ~= nil and G.GAME ~= nil then

            local fleurons = false
            local halberds = false

            for k, v in pairs(G.playing_cards) do
                if v:is_suit('Fleurons') then fleurons = true end
            end
            for k, v in pairs(G.playing_cards) do
                if v:is_suit('Halberds') then halberds = true end
            end

            if fleurons == false and G.GAME.Fleurons == true then

                sendDebugMessage('No fleurons in the deck, removing them completely!')
                forget('Fleurons', nil, true)

            end
            if halberds == false and G.GAME.Halberds == true then

                sendDebugMessage('No halberds in the deck, removing them completely!')
                forget('Halberds', nil, true)

            end
        end
    end

    -- Exotic cards Planets (\EX_PLA):

        local c_quaoar = SMODS.Planet:new('Quaoar', 'quaoar', { hand_type = 'Spectrum', softlock = true }, { x = 0, y = 0 }, nil, 3, 1,
        nil, 1, true, false, 'bunco_planets')
    local c_haumea = SMODS.Planet:new('Haumea', 'haumea', { hand_type = 'Straight Spectrum', softlock = true }, { x = 1, y = 0 },
        nil, 3, 1, nil, 1, true, false, 'bunco_planets')
    local c_sedna = SMODS.Planet:new('Sedna', 'sedna', { hand_type = 'Spectrum House', softlock = true },
        { x = 2, y = 0 }, nil, 3, 1,
        nil, 1, true, false, 'bunco_planets')
    local c_makemake = SMODS.Planet:new('Makemake', 'makemake', { hand_type = 'Spectrum Five', softlock = true },
        { x = 3, y = 0 }, nil, 3, 1, nil, 1, true, false, 'bunco_planets')
    c_quaoar:register()
    c_haumea:register()
    c_sedna:register()
    c_makemake:register()

    -- Exotic cards Tarots (\EX_TAR1):

    local text_tarot_sky = { -- Sky (Fleuron) tarot
        [1] = 'Converts up to',
        [2] = '{C:attention}3{} selected cards',
        [3] = 'to {C:fleurons}Fleurons{}',
    }

    local tarot_sky = SMODS.Tarot:new('The Sky', 'sky', {max_highlighted = 3},
    { x = 0, y = 0 },
    { name = 'The Sky', text = text_tarot_sky }, 3, 1, '', true, false, 'bunco_tarots')

    tarot_sky:register()

    function SMODS.Tarots.c_sky.set_badges(card, badges)
        badges[1] = create_badge('Tarot?', HEX('a782d1'), HEX('FFFFFF'), 1.2)
    end

    function SMODS.Tarots.c_sky.use(card, area, copier)

        acknowledge('Fleurons')

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() G.hand.highlighted[i]:change_suit('Fleurons');return true end }))
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
        delay(0.5)
    end

    local text_tarot_abyss = { -- Abyss (Halberd) tarot
        [1] = 'Converts up to',
        [2] = '{C:attention}3{} selected cards',
        [3] = 'to {C:halberds}Halberds{}',
    }

    local tarot_abyss = SMODS.Tarot:new('The Abyss', 'abyss', {max_highlighted = 3},
    { x = 1, y = 0 },
    { name = 'The Abyss', text = text_tarot_abyss }, 3, 1, '', true, false, 'bunco_tarots')

    tarot_abyss:register()

    function SMODS.Tarots.c_abyss.set_badges(card, badges)
        if badges ~= nil then
            badges[1] = create_badge('Tarot?', HEX('a782d1'), HEX('FFFFFF'), 1.2)
        end
    end

    function SMODS.Tarots.c_abyss.use(card, area, copier)

        acknowledge('Halberds')

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() G.hand.highlighted[i]:change_suit('Halberds');return true end }))
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
        delay(0.5)
    end

    ---- Generic funcions (\FUNC):

    local original_update = Card.update

    function Card:update(dt)
        original_update(self, dt)

        -- Cassette Joker additional function (\CASS_FUN)

        if self.ability.name == 'Cassette' and not self.debuff then
            if self.VT.w <= 0 then
                if self.ability.extra.side == 'A' then
                    self.config.center.pos.x = 0
                else
                    self.config.center.pos.x = 1
                end
            end
        end

        -- Voxel Joker additional function (\VOXE_FUN)

        if self.ability.name == 'Voxel Joker' and G.playing_cards ~= nil then
            self.ability.extra.voxel_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then self.ability.extra.voxel_tally = self.ability.extra.voxel_tally + 1 end
            end

            if (self.ability.extra.base_xmult - self.ability.extra.voxel_tally * 0.1) >= 1 then
                self.ability.extra.xmult = self.ability.extra.base_xmult - self.ability.extra.voxel_tally * 0.1
            else
                self.ability.extra.xmult = 1
            end
        end
    end

    local original_emplace = CardArea.emplace

    function CardArea:emplace(card, location, stay_flipped)
        original_emplace(self, card, location, stay_flipped)

        -- X-Ray additional function (\XRAY_FUN)

        if G.jokers ~= nil and self == G.hand and not self.debuff then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'X-Ray' then
                  v:calculate_joker({ emplace = true, emplaced_card = card })
                end
            end
        end
    end

    local original_remove_from_deck = Card.remove_from_deck

    function Card:remove_from_deck(from_debuff)
        original_remove_from_deck(self, from_debuff)

        -- Dread additional function (\DREA_FUN)

        if self.ability.name == 'Dread' and not self.debuff then
            for name, level in pairs(self.ability.extra.level_up_list) do
                level_up_hand(self, name, true, level * -1)
            end
        end
    end

    local true_jimbo = nil
    local jimbo_current_dialogue = nil -- Jimbo current dialogue
    local jimbo_talk_delay = 2 -- Jimbo talk delay
    local jimbo_talk_amount = 3 -- Jimbo talk amount

    local original_add_to_deck = Card.add_to_deck

    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)

        -- Dread Joker additional function (\LOAN_FUN)

        if self.ability.name == 'Loan Shark' then
            ease_dollars(50)
            self.sell_cost = -100
        end

        -- Jimbo Joker additional function (\JIMB_FUN)
        local function emotion(value)
            if true_jimbo ~= nil then
                if value == 'normal' then
                    true_jimbo.config.center.soul_pos.x = 1
                elseif value == 'devious' then
                    true_jimbo.config.center.soul_pos.x = 2
                elseif value == 'winking' then
                    true_jimbo.config.center.soul_pos.x = 3
                elseif value == 'serious' then
                    true_jimbo.config.center.soul_pos.x = 4
                elseif value == 'judging' then
                    true_jimbo.config.center.soul_pos.x = 5
                elseif value == 'angry' then
                    true_jimbo.config.center.soul_pos.x = 6
                elseif value == 'afraid' then
                    true_jimbo.config.center.soul_pos.x = 7
                elseif value == 'startled' then
                    true_jimbo.config.center.soul_pos.x = 8
                elseif value == 'insane' then
                    true_jimbo.config.center.soul_pos.x = 9
                end

                true_jimbo:set_sprites(self.config.center)
            end
        end

        if self.ability.name == 'Jimbo' and true_jimbo ~= nil then -- When other Jimbo appears
            jimbo_current_dialogue = 'Clone'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_clone_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Clone' then
                
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_clone_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Clone' then
                true_jimbo:say_stuff(jimbo_talk_amount)
                self:say_stuff(jimbo_talk_amount)
                
                true_jimbo:add_speech_bubble('talk_clone_3', 'bm')
                self:add_speech_bubble('talk_clone_3', 'bm')
                
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Clone' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                self:remove_speech_bubble()
                self:start_dissolve()
                true_jimbo:add_speech_bubble('talk_clone_4', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Clone' then

                true_jimbo:remove_speech_bubble()
            
            end
            return true end }))

            end
            return true end }))

            end
            return true end }))
            
            end
            return true end }))
        end

        if self.ability.name == 'Jimbo' and true_jimbo == nil then -- When Jimbo himself is appears in the deck
            jimbo_current_dialogue = 'Hello'
            true_jimbo = self
            self:say_stuff(jimbo_talk_amount)

            self:add_speech_bubble('talk_hello_1', 'bm')
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Hello' then
                self:say_stuff(jimbo_talk_amount)

                emotion('winking')
                self:add_speech_bubble('talk_hello_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Hello' then

                emotion('normal')
                self:remove_speech_bubble()
                
            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Joker' and true_jimbo ~= nil then -- Regular Joker
            jimbo_current_dialogue = 'Joker'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_joker_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Joker' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_joker_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Joker' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Chaos the Clown' and true_jimbo ~= nil then -- Chaos the Clown
            jimbo_current_dialogue = 'Clown'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_clown_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Clown' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_clown_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Clown' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Credit Card' and true_jimbo ~= nil then -- Credit Card
            jimbo_current_dialogue = 'Credit'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_credit_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Credit' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_credit_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Credit' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Loyalty Card' and true_jimbo ~= nil then -- Loyalty Card
            jimbo_current_dialogue = 'Loyalty'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_loyalty_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Loyalty' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))
        end

        if self.ability.name == 'Gift Card' and true_jimbo ~= nil then -- Gift Card
            jimbo_current_dialogue = 'Gift'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_gift_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Gift' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_gift_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Gift' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Caino' and true_jimbo ~= nil then -- Caino
            jimbo_current_dialogue = 'Caino'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_caino_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 0.6, func = function() if jimbo_current_dialogue == 'Caino' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_caino_2', 'bm')
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Caino' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_caino_3', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Caino' then

                true_jimbo:remove_speech_bubble()
            
            end
            return true end }))

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Triboulet' and true_jimbo ~= nil then -- Triboulet
            jimbo_current_dialogue = 'Triboulet'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_triboulet_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Triboulet' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_triboulet_2', 'bm')
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Triboulet' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_triboulet_3', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Triboulet' then

                true_jimbo:remove_speech_bubble()
            
            end
            return true end }))

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Chicot' and true_jimbo ~= nil then -- Chicot
            jimbo_current_dialogue = 'Chicot'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_chicot_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Chicot' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_chicot_2', 'bm')
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 0.8, func = function() if jimbo_current_dialogue == 'Chicot' then
                
                self:juice_up(0.7, 0.3)
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 0.2, func = function() if jimbo_current_dialogue == 'Chicot' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_chicot_3', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Chicot' then

                true_jimbo:remove_speech_bubble()
            
            end
            return true end }))

            end
            return true end }))

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Perkeo' and true_jimbo ~= nil then -- Perkeo
            jimbo_current_dialogue = 'Perkeo'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_perkeo_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Perkeo' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_perkeo_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Perkeo' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end

        if self.ability.name == 'Yorick' and true_jimbo ~= nil then -- Yorick
            jimbo_current_dialogue = 'Yorick'
            true_jimbo:say_stuff(jimbo_talk_amount)

            true_jimbo:add_speech_bubble('talk_yorick_1', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay, func = function() if jimbo_current_dialogue == 'Yorick' then
                true_jimbo:say_stuff(jimbo_talk_amount)

                true_jimbo:add_speech_bubble('talk_yorick_2', 'bm')

            G.E_MANAGER:add_event(Event({trigger = 'after', delay = jimbo_talk_delay * 2, func = function() if jimbo_current_dialogue == 'Yorick' then

                true_jimbo:remove_speech_bubble()

            end
            return true end }))

            end
            return true end }))
        end
    end


    local joker_knight_table = nil
    local joker_knight_table_comparison = nil

    local original_drag = Node.drag

    function Node:drag()
        original_drag(self)

        -- Joker Knight additional function (\KNIG_FUN1)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Joker Knight' and not self.debuff then
                    if joker_knight_table == nil then

                        sendDebugMessage('Joker Knight: Started drag...')

                        joker_knight_table = {}

                        for _, v in ipairs(G.jokers.cards) do
                            table.insert(joker_knight_table, v.ability.name)
                        end

                        joker_knight_table_comparison = joker_knight_table

                    end
                end
            end
        end
    end

    local original_stop_drag = Node.stop_drag

    function Node:stop_drag()
        original_stop_drag(self)

        -- Joker Knight additional function (\KNIG_FUN2)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Joker Knight' and not self.debuff then

                    function do_tables_match(a, b)
                        return table.concat(a) == table.concat(b)
                    end

                    function result()
                        sendDebugMessage('First: {'..table.concat(joker_knight_table, ', ')..'}, Second: {'..table.concat(joker_knight_table_comparison, ', ')..'}')
                    end

                    if joker_knight_table ~= nil then

                        joker_knight_table = {}

                        for _, v in ipairs(G.jokers.cards) do
                            table.insert(joker_knight_table, v.ability.name)
                        end

                        sendDebugMessage('Joker Knight: Ended drag.')

                        if do_tables_match(joker_knight_table, joker_knight_table_comparison) then
                            sendDebugMessage('Result: No changes.')
                            result()
                        else
                            v:calculate_joker({ break_positions = true })
                            sendDebugMessage('Result: Positions changed.')
                            result()
                        end

                        joker_knight_table = nil
                        joker_knight_table_comparison = nil
                    end

                end
            end
        end
    end

    local original_card_open = Card.open

    function Card:open()
        original_card_open(self)

        -- JM & JB additional function (\JMJB_FUN1)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Joker Man & Jester Boy Trading Card No. 54' and not self.debuff then
                    v:calculate_joker({ booster_type = self.ability.name })
                end
            end
        end
    end

    local original_create_card = create_card

    function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
        local card = original_create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)

        sendDebugMessage('Key: '..((card.ability.name) or 'none')..', Type: '.._type)

        -- JM & JB additional function (\JMJB_FUN2)

        if card.ability.name == 'Joker Man & Jester Boy Trading Card No. 54' then
            sendDebugMessage('Edition enforcement on JM & JB: '..(card:get_edition() or 'Nothing'))
            if card:get_edition() == nil then
                local edition = poll_edition('aura', nil, true, true)
                card:set_edition(edition)
            end
        end

        -- Exotic suit Tarots (\EX_TAR2):

        if (G.GAME.Fleurons == nil and card.ability.name == 'The Sky') or (G.GAME.Halberds == nil and card.ability.name == 'The Abyss') then
            sendDebugMessage('Exotic tarot appeared! But the exotic suit did not exist.')
            sendDebugMessage('Rerolling...')
            card:remove()
            return create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
        else
            return card
        end
    end

    local original_create_card_for_shop = create_card_for_shop

    function create_card_for_shop(area)
        local card = original_create_card_for_shop(area)

        -- Exotic suit Tarots (\EX_TAR3):

        if (G.GAME.Fleurons == nil and card.ability.name == 'The Sky') or (G.GAME.Halberds == nil and card.ability.name == 'The Abyss') then
            sendDebugMessage('Exotic tarot appeared! But the exotic suit did not exist.')
            sendDebugMessage('Rerolling...')
            card:remove()
            return create_card_for_shop(area)
        else
            return card
        end
    end

    local original_ease_dollars = ease_dollars

    function ease_dollars(mod, instant)

        -- Fiendish Joker additional function (\FIEN_FUN)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Fiendish Joker' and not self.debuff then
                    if mod > 0 then
                        if pseudorandom('fiendish') < G.GAME.probabilities.normal / v.ability.extra.odds then
                            mod = 1
                        else
                            mod = mod * 2
                        end
                    end
                end
            end
        end

        original_ease_dollars(mod, instant)
    end

    function Card:add_speech_bubble(text_key, align, loc_vars)
        if self.children.speech_bubble then self.children.speech_bubble:remove() end
        self.config.speech_bubble_align = {align=align or 'bm', offset = {x=0,y=0}, parent = self}
        self.children.speech_bubble = 
        UIBox{
            definition = G.UIDEF.jimbo_speech_bubble(text_key, loc_vars),
            config = self.config.speech_bubble_align
        }
        self.children.speech_bubble:set_role{
            role_type = 'Minor',
            xy_bond = 'Weak',
            r_bond = 'Weak',
            major = self,
        }
        self.children.speech_bubble.states.visible = false
    end

    function Card:remove_speech_bubble()
        if self.children.speech_bubble then self.children.speech_bubble:remove(); self.children.speech_bubble = nil end
    end

    function Card:say_stuff(n, not_first)
        self.talking = true
        if not not_first then 
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    if self.children.speech_bubble then self.children.speech_bubble.states.visible = true end
                    self:say_stuff(n, true)
                  return true
                end
            }))
        else
            if n <= 0 then self.talking = false; return end
            local new_said = math.random(1, 11)
            while new_said == self.last_said do 
                new_said = math.random(1, 11)
            end
            self.last_said = new_said
            play_sound('voice'..math.random(1, 11), G.SPEEDFACTOR*(math.random()*0.2+1), 0.5)
            self:juice_up(0.1)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                blockable = false, blocking = false,
                delay = 0.13,
                func = function()
                    self:say_stuff(n-1, true)
                return true
                end
            }), 'tutorial')
        end
    end

    function forced_message(_message, _card, _colour, delay) -- Copied from Blizzow, tweaked slightly (added delay)
        if delay then delay = 0.7 * 1.25
        else delay = 0 end
        G.E_MANAGER:add_event(Event({ trigger = 'before', delay = delay,
            func = function() card_eval_status_text(_card, 'extra', nil, nil, nil, {message = _message, colour = _colour, instant=true}); return true
            end}))
    end

    -- Cassette Joker (\CASS_BAS):

    SMODS.Sprite:new('j_cassette', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_cassette = {
        ['name'] = 'Cassette',
        ['text'] = {
            [1] = 'On discard, flip Joker to the other side',
            [2] = '{C:attention}A side:{} cards with light suit',
            [3] = 'give {C:chips}+#1#{} Chips when scored',
            [4] = '{C:attention}B side:{} cards with dark suit',
            [5] = 'give {C:mult}+#2#{} Mult when scored',
        }
    }

    local joker_cassette = SMODS.Joker:new(
        'Cassette', -- Name
        'cassette', -- Slug
        {extra = {chips = 45, mult = 6, side = 'A'}}, -- Config
        {x = 0, y = 0}, -- Sprite position
        loc_cassette, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_cassette:register()

    -- Cassette uses Card:update for some things. Check CASS_FUN

    SMODS.Jokers.j_cassette.calculate = function(self, context)
        if context.pre_discard then
            if self.ability.extra.side == 'A' then
                self.ability.extra.side = 'B'
            else
                self.ability.extra.side = 'A'
            end

            self:flip()
            self:flip()
        end

        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Hearts') or
            context.other_card:is_suit('Diamonds') or
            context.other_card:is_suit('Fleurons') then
                if self.ability.extra.side == 'A' then
                    return {
                        chips = self.ability.extra.chips,
                        card = self
                    }
                end
            end

            if context.other_card:is_suit('Spades') or
            context.other_card:is_suit('Clubs') or
            context.other_card:is_suit('Halberds') then
                if self.ability.extra.side == 'B' then
                    return {
                        mult = self.ability.extra.mult,
                        card = self
                    }
                end
            end
        end
    end

    -- Mosaic Joker (\MOSA_BAS):

    SMODS.Sprite:new('j_mosaic', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_mosaic = {
        ['name'] = 'Mosaic Joker',
        ['text'] = {
            [1] = 'Played {C:attention}Stone Cards',
            [2] = 'give {C:mult}#1#{} Mult',
            [3] = 'when scored'
        }
    }

    local joker_mosaic = SMODS.Joker:new(
        'Mosaic Joker', -- Name
        'mosaic', -- Slug
        {extra = {mult = 4}}, -- Config
        {x = 2, y = 0}, -- Sprite position
        loc_mosaic, -- Localization
        2, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_mosaic:register()

    SMODS.Jokers.j_mosaic.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_stone then
                return {
                    mult = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end

    -- Voxel Joker (\VOXE_BAS):
    SMODS.Sprite:new('j_voxel', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_voxel = {
        ['name'] = 'Voxel Joker',
        ['text'] = {
            [1] = '{X:mult,C:white}X#1#{} Mult, {X:mult,C:white}-X0.1{} Mult for each',
            [2] = '{C:attention}Enhanced card{} in your full deck',
            [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
        }
    }

    local joker_voxel = SMODS.Joker:new(
        'Voxel Joker', -- Name
        'voxel', -- Slug
        {extra = {base_xmult = 3, xmult = 3, voxel_tally = 0}}, -- Config
        {x = 3, y = 0}, -- Sprite position
        loc_voxel, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_voxel:register()

    -- Voxel Joker uses Card:update for some things. Check VOXE_FUN

    SMODS.Jokers.j_voxel.calculate = function(self, context)

        if SMODS.end_calculate_context(context) then
            return {
                Xmult_mod = self.ability.extra.xmult,
                card = self,
                message = localize {
                    type = 'variable',
                    key = 'a_xmult',
                    vars = { self.ability.extra.xmult }
                },
            }
        end
    end

    -- Crop circles Joker (\CROP_BAS):
    SMODS.Sprite:new('j_crop', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_crop = {
        ['name'] = 'Crop Circles',
        ['text'] = {
            [1] = 'Each circle in suit and rank',
            [2] = 'of played card gives',
            [3] = '{C:mult}+#1#{} Mult when scored'
        }
    }

    local joker_crop = SMODS.Joker:new(
        'Crop Circles', -- Name
        'crop', -- Slug
        {extra = {mult = 1}}, -- Config
        {x = 4, y = 0}, -- Sprite position
        loc_crop, -- Localization
        1, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_crop:register()

    SMODS.Jokers.j_crop.calculate = function(self, context)

        if context.individual and context.cardarea == G.play then
            if context.other_card.base.suit == ('Clubs') and context.other_card.ability.effect ~= 'Stone Card' then
                if context.other_card:get_id() == 8 then
                    return {
                        mult = self.ability.extra.mult * 5,
                        card = self
                    }
                elseif context.other_card:get_id() == 12 or context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 6 then
                    return {
                        mult = self.ability.extra.mult * 4,
                        card = self
                    }
                else
                    return {
                        mult = self.ability.extra.mult * 3,
                        card = self
                    }
                end
            elseif context.other_card:get_id() == 8 then
                return {
                    mult = self.ability.extra.mult * 2,
                    card = self
                }
            elseif context.other_card:get_id() == 12 or context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 6 then
                return {
                    mult = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end

    -- X-Ray Joker:
    SMODS.Sprite:new('j_xray', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_xray = {
        ['name'] = 'X-Ray',
        ['text'] = {
            [1] = 'Gains {X:mult,C:white}X0.2{} Mult',
            [2] = 'per card drawn face down',
            [3] = '{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)'
        }
    }

    local joker_xray = SMODS.Joker:new(
        'X-Ray', -- Name
        'xray', -- Slug
        {extra = {xmult = 1}}, -- Config
        {x = 5, y = 0}, -- Sprite position
        loc_xray, -- Localization
        1, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_xray:register()

    -- X-Ray Joker uses CardArea:emplace for some things. Check XRAY_FUN

    SMODS.Jokers.j_xray.calculate = function(self, context)

        if context.emplace and context.emplaced_card.facing == 'back' and not context.blueprint then
            self.ability.extra.xmult = self.ability.extra.xmult + 0.2

            forced_message('X'..tostring(self.ability.extra.xmult)..' Mult', self, G.C.RED)
            delay(0.8)
        end

        if SMODS.end_calculate_context(context) then
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

    -- Dread Joker (\DREA_BAS):
    SMODS.Sprite:new('j_dread', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_dread = {
        ['name'] = 'Dread',
        ['text'] = {
            [1] = 'After scoring your {C:attention}final hand{} of round,',
            [2] = 'upgrade level of scored {C:attention}poker hand{}',
            [3] = 'by {C:attention}2 levels{} and destroy cards from that hand,',
            [4] = 'on Joker loss remove all gained levels'
        }
    }

    local joker_dread = SMODS.Joker:new(
        'Dread', -- Name
        'dread', -- Slug
        {extra = {trash_list = {}, level_up_list = {}}}, -- Config
        {x = 0, y = 1}, -- Sprite position
        loc_dread, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_dread:register()

    -- Dread Joker uses Card:remove_from_deck for some things. Check DREA_FUN

    SMODS.Jokers.j_dread.calculate = function(self, context)

        if context.full_hand ~= nil then
            self.ability.extra.trash_list = {}
            for k, v in ipairs(context.full_hand) do
                table.insert(self.ability.extra.trash_list, v)
            end
        end

        if context.after and G.GAME.current_round.hands_left == 0 and context.scoring_name ~= nil then

            level_up_hand(self, context.scoring_name, true, 2)

            if self.ability.extra.level_up_list[context.scoring_name] then
                self.ability.extra.level_up_list[context.scoring_name] = self.ability.extra.level_up_list[context.scoring_name] + 2
            else
                self.ability.extra.level_up_list[context.scoring_name] = 2
            end

            return {
                colour = G.C.RED,
                message = 'Level up!'
            }
        end

        if context.end_of_round and G.GAME.current_round.hands_left == 0 then
            for i = 1, #self.ability.extra.trash_list do
                self.ability.extra.trash_list[i]:start_dissolve()
            end
            self.ability.extra.trash_list = {}
        end
    end

    -- Prehistoric Joker (\PREH_BAS):
    SMODS.Sprite:new('j_prehistoric', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_prehistoric = {
        ['name'] = 'Prehistoric Joker',
        ['text'] = {
            [1] = '{C:mult}+#1#{} Mult for each',
            [2] = 'card of the same rank and suit',
            [3] = 'that was already',
            [4] = 'played during this round'
        }
    }

    local joker_prehistoric = SMODS.Joker:new(
        'Prehistoric Joker', -- Name
        'prehistoric', -- Slug
        {mult = 16, extra = {card_list = { }}}, -- Config
        {x = 1, y = 1}, -- Sprite position
        loc_prehistoric, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_prehistoric:register()

    SMODS.Jokers.j_prehistoric.calculate = function(self, context)

        if context.individual and context.cardarea == G.play then
            for k, v in pairs(self.ability.extra.card_list) do
                if v == context.other_card.base.id .. context.other_card.base.suit then
                    return {
                        message = localize {
                            type = 'variable',
                            key = 'a_mult',
                            vars = {self.ability.mult}
                        },
                        mult = self.ability.mult,
                        card = self
                    }
                end
            end

            table.insert(self.ability.extra.card_list, context.other_card.base.id .. context.other_card.base.suit) -- Add card to the list

        end

        if context.end_of_round then -- Clear the list if end of round
            self.ability.extra.card_list = {}
        end
    end

    -- Linocut Joker (\LINO_BAS):
    SMODS.Sprite:new('j_linocut', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_linocut = {
        ['name'] = 'Linocut Joker',
        ['text'] = {
            [1] = 'When playing a {C:attention}Pair,',
            [2] = 'turns the suit of the {C:attention}left{} card',
            [3] = 'into the suit of the {C:attention}right{} card',
            [4] = '{C:inactive}(Drag to rearrange)'
        }
    }

    local joker_linocut = SMODS.Joker:new(
        'Linocut Joker', -- Name
        'linocut', -- Slug
        {}, -- Config
        {x = 2, y = 1}, -- Sprite position
        loc_linocut, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_linocut:register()

    SMODS.Jokers.j_linocut.calculate = function(self, context)

        if context.individual and context.cardarea == G.play and context.poker_hands and next(context.poker_hands['Pair']) then

            if #context.scoring_hand == 2 and context.scoring_hand[1] == context.other_card then
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.scoring_hand[1]:flip();play_sound('card1', 1);context.scoring_hand[1]:juice_up(0.3, 0.3);return true end }))
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()  context.scoring_hand[1]:change_suit(context.scoring_hand[2].config.card.suit);return true end }))
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.scoring_hand[1]:flip();play_sound('tarot2', 1, 0.6);context.scoring_hand[1]:juice_up(0.3, 0.3);return true end }))

                forced_message('Copied!', self, G.C.RED)

                delay(0.5)
            end
        end
    end

    -- Ghost Print Joker (\GHOS_BAS):
    SMODS.Sprite:new('j_ghostprint', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_ghostprint = {
        ['name'] = 'Ghost Print',
        ['text'] = {
            [1] = 'Grants Chips and Mult',
            [2] = 'from last hand type played',
            [3] = '{C:inactive}(Last poker hand: #1#)'
        }
    }

    local joker_ghostprint = SMODS.Joker:new(
        'Ghost Print', -- Name
        'ghostprint', -- Slug
        {extra = {last_hand = nil or 'Nothing'}}, -- Config
        {x = 3, y = 1}, -- Sprite position
        loc_ghostprint, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_ghostprint:register()

    SMODS.Jokers.j_ghostprint.calculate = function(self, context)

        if SMODS.end_calculate_context(context) then

            if self.ability.extra.last_hand ~= nil and self.ability.extra.last_hand ~= 'Nothing' then
                mult = mult + G.GAME.hands[self.ability.extra.last_hand].mult
                chips = hand_chips + G.GAME.hands[self.ability.extra.last_hand].chips
                update_hand_text({delay = 0, sound = '', modded = true}, {chips = chips, mult = mult})
                if not context.blueprint then
                    forced_message(tostring(self.ability.extra.last_hand)..'!', self, G.C.HAND_LEVELS[G.GAME.hands[self.ability.extra.last_hand].level])
                end
            end

            self.ability.extra.last_hand = G.GAME.last_hand_played
        end
    end

    -- Loan Shark Joker (\LOAN_BAS):
    SMODS.Sprite:new('j_loanshark', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_loanshark = {
        ['name'] = 'Loan Shark',
        ['text'] = {
            [1] = 'Grants {C:money}$50',
            [2] = 'when acquired.'
        }
    }

    local joker_loanshark = SMODS.Joker:new(
        'Loan Shark', -- Name
        'loanshark', -- Slug
        {}, -- Config
        {x = 4, y = 1}, -- Sprite position
        loc_loanshark, -- Localization
        2, -- Rarity
        -20, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_loanshark:register()

    -- Loan Shark Joker uses Card:add_to_deck for some things. Check LOAN_FUN

    SMODS.Jokers.j_loanshark.calculate = function(self, context)

    end

    -- Basement Joker (\BASE_BAS):
    SMODS.Sprite:new('j_basement', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_basement = {
        ['name'] = 'Basement Joker',
        ['text'] = {
            [1] = 'When {C:attention}Boss Blind{} is',
            [2] = 'defeated, create a {C:spectral}Spectral{} card'
        }
    }

    local joker_basement = SMODS.Joker:new(
        'Basement Joker', -- Name
        'basement', -- Slug
        {}, -- Config
        {x = 5, y = 1}, -- Sprite position
        loc_basement, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_basement:register()

    SMODS.Jokers.j_basement.calculate = function(self, context)

        if context.end_of_round and G.GAME.blind.boss and not context.other_card then

            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    delay = 0.0,
                    func = (function()
                            if not context.blueprint then
                                forced_message(localize('k_plus_spectral'), self, G.C.SECONDARY_SET.Spectral)
                            end
                            local card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil)
                            card:add_to_deck()
                            G.consumeables:emplace(card)
                            G.GAME.consumeable_buffer = 0
                        return true
                end)}))
            end
        end
    end

    -- Shepherd Joker (\SHEP_BAS):
    SMODS.Sprite:new('j_shepherd', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_shepherd = {
        ['name'] = 'Shepherd Joker',
        ['text'] = {
            [1] = 'Gains {C:chips}+2{} Chips',
            [2] = 'when played hand is a {C:attention}Pair',
            [3] = '{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)'
        }
    }

    local joker_shepherd = SMODS.Joker:new(
        'Shepherd Joker', -- Name
        'shepherd', -- Slug
        {extra = {chips = 0}}, -- Config
        {x = 0, y = 2}, -- Sprite position
        loc_shepherd, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_shepherd:register()

    SMODS.Jokers.j_shepherd.calculate = function(self, context)
        if #context.scoring_hand == 2 and context.after and next(context.poker_hands['Pair']) and not context.blueprint then
            self.ability.extra.chips = self.ability.extra.chips + 2

            forced_message('+'..tostring(self.ability.extra.chips)..' Chips', self, G.C.BLUE)
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.extra.chips ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_chips',
                        vars = { self.ability.extra.chips }
                    },
                    chip_mod = self.ability.extra.chips,
                    card = self
                }
            end
        end
    end

    -- Joker Knight (\KNIG_BAS):
    SMODS.Sprite:new('j_knight', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_knight = {
        ['name'] = 'Joker Knight',
        ['text'] = {
            [1] = 'When {C:attention}Blind{} is selected,',
            [2] = 'shuffles all Jokers and gains {C:red}+6{} Mult,',
            [3] = 'resets when any Joker is rearranged',
            [4] = '{C:inactive}(Currently {C:red}+#1#{C:inactive} Mult)'
        }
    }

    local joker_knight = SMODS.Joker:new(
        'Joker Knight', -- Name
        'knight', -- Slug
        {extra = {mult = 0}}, -- Config
        {x = 1, y = 2}, -- Sprite position
        loc_knight, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_knight:register()

    -- Joker Knight uses Node:drag and Node:stop_drag for some things. Check KNIG_FUN

    SMODS.Jokers.j_knight.calculate = function(self, context)

        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            self.ability.extra.mult = self.ability.extra.mult + 6

            G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function()
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 0.85);return true end })) 
                delay(0.15)
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1.15);return true end })) 
                delay(0.15)
                G.E_MANAGER:add_event(Event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1);return true end })) 
                delay(0.5)
            return true end }))

            forced_message('+'..tostring(self.ability.extra.mult)..' Mult', self, G.C.RED)
        end

        if context.break_positions and not context.blueprint then
            if self.ability.extra.mult ~= 0 then
                self.ability.extra.mult = 0

                forced_message(localize('k_reset'), self, G.C.RED)
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end

    -- Joker Man & Jester Boy Trading Card No. 54 (\JMJB_BAS):
    SMODS.Sprite:new('j_jokermanjesterboy', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_jokermanjesterboy = {
        ['name'] = 'Joker Man & Jester Boy Trading Card No. 54',
         ['text'] = {
            [1] = 'Each {C:attention}Standard Pack{} will have',
            [2] = 'at least two {C:attention}Enhanced Cards{},',
            [3] = 'each {C:attention}Buffoon pack{} will have',
            [4] = 'at least one {C:green}Uncommon{} Joker'
        }
    }

    local joker_jokermanjesterboy = SMODS.Joker:new(
        'Joker Man & Jester Boy Trading Card No. 54', -- Name
        'jokermanjesterboy', -- Slug
        {}, -- Config
        {x = 2, y = 2}, -- Sprite position
        loc_jokermanjesterboy, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_jokermanjesterboy:register()

    -- JM & JB use Card:open and create_card for some things. Check JMJB_FUN

    SMODS.Jokers.j_jokermanjesterboy.calculate = function(self, context)

        if context.booster_type then

            sendDebugMessage(context.booster_type)

            if (context.booster_type == 'Standard Pack' or
            context.booster_type == 'Jumbo Standard Pack' or
            context.booster_type == 'Mega Standard Pack') then

                sendDebugMessage('Opening Standard Pack...')

                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 1.3 * math.sqrt(G.SETTINGS.GAMESPEED),
                    blockable = false,
                    blocking = false,
                    func = function()

                        local enhancement_amount = 0

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

                        if G.pack_cards and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center ~= G.P_CENTERS.c_base then
                                    enhancement_amount = enhancement_amount + 1
                                end
                            end

                            sendDebugMessage('JM & JB: '..enhancement_amount..' cards with enhancements.')

                            if enhancement_amount < 2 then
                                for _, v in ipairs(G.pack_cards.cards) do
                                    if v.config.center == G.P_CENTERS.c_base then
                                        v:set_ability(enhancement_pool[math.random(#enhancement_pool)])
                                        enhancement_amount = enhancement_amount + 1
                                        if enhancement_amount == 2 then
                                            break
                                        end
                                    end
                                end
                            end

                            return true
                        end
                    end
                }))
            elseif (context.booster_type == 'Buffoon Pack' or
            context.booster_type == 'Jumbo Buffoon Pack' or
            context.booster_type == 'Mega Buffon Pack') then

                sendDebugMessage('Opening Buffoon Pack...')

                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 1.3 * math.sqrt(G.SETTINGS.GAMESPEED),
                    blockable = false,
                    blocking = false,
                    func = function()
                        if G.pack_cards and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            local uncommon = false

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center.rarity == 2 then
                                    uncommon = true
                                    sendDebugMessage('Found at least one Uncommon Joker.')
                                    break
                                end
                            end

                            if uncommon == false then
                                sendDebugMessage('JM & JB: Rerolling Joker..')
                                while true do
                                    local rerolled_joker = create_card('Joker', G.pack_cards, false, nil, nil, nil, nil, nil)

                                    if rerolled_joker.config.center.rarity == 2 then
                                        sendDebugMessage('JM & JB: Rerolled!')
                                        G.pack_cards.cards[1] = rerolled_joker
                                        G.pack_cards.cards[1]:start_materialize({G.C.WHITE, G.C.WHITE}, nil, 1.5*G.SETTINGS.GAMESPEED)
                                        break
                                    end

                                    rerolled_joker:remove()
                                end
                            end

                            return true
                        end
                    end
                }))
            end
        end
    end

    -- Dogs Playing Poker Joker (\DOGS_BAS):
    SMODS.Sprite:new('j_dogs', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_dogs = {
        ['name'] = 'Dogs Playing Poker',
        ['text'] = {
            [1] = '{X:mult,C:white}X#1#{} Mult if all scored',
            [2] = 'cards are lower than {C:attention}6'
        }
    }

    local joker_dogs = SMODS.Joker:new(
        'Dogs Playing Poker', -- Name
        'dogs', -- Slug
        {extra = {xmult = 2.5}}, -- Config
        {x = 3, y = 2}, -- Sprite position
        loc_dogs, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_dogs:register()

    SMODS.Jokers.j_dogs.calculate = function(self, context)

        if SMODS.end_calculate_context(context) then

            local condition = true

            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:get_id() >= 6 then
                    condition = false
                end
            end

            if condition then
                return {
                    Xmult_mod = self.ability.extra.xmult,
                    card = self,
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { self.ability.extra.xmult }
                    },
                }
            end
        end
    end

    -- Righthook Joker (\RIGH_BAS):
    SMODS.Sprite:new('j_righthook', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_righthook = {
        ['name'] = 'Righthook Joker',
        ['text'] = {
            [1] = 'Retrigger rightmost played card',
            [2] = 'in {C:attention}first hand{} of round'
        }
    }

    local joker_righthook = SMODS.Joker:new(
        'Righthook Joker', -- Name
        'righthook', -- Slug
        {}, -- Config
        {x = 4, y = 2}, -- Sprite position
        loc_righthook, -- Localization
        1, 1) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

    joker_righthook:register()

    SMODS.Jokers.j_righthook.calculate = function(self, context)

        if context.repetition then
            if context.cardarea == G.play then
                if context.other_card == context.scoring_hand[#context.scoring_hand] and G.GAME.current_round.hands_played == 0 then

                return {
                    message = localize('k_again_ex'),
                    repetitions = 1,
                    card = self
                }
                end
            end
        end
    end

    -- Fiendish Joker (\FIEN_BAS):
    SMODS.Sprite:new('j_fiendish', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_fiendish = {
        ['name'] = 'Fiendish Joker',
        ['text'] = {
            [1] = 'Doubles all sources of money,',
            [2] = '{C:green}#1# in #2#{} chance to pay out',
            [3] = 'with {C:money}$1{} instead'
        }
    }

    local joker_fiendish = SMODS.Joker:new(
        'Fiendish Joker', -- Name
        'fiendish', -- Slug
        {extra = {odds = 2}}, -- Config
        {x = 5, y = 2}, -- Sprite position
        loc_fiendish, -- Localization
        1, -- Rarity
        1, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_fiendish:register()

    -- Fiendish Joker uses ease_dollars for some things. Check FIEN_FUN

    SMODS.Jokers.j_fiendish.calculate = function(self, context)

    end

    -- Carnival Joker (\CARN_BAS):
    SMODS.Sprite:new('j_carnival', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_carnival = {
        ['name'] = 'Carnival',
        ['text'] = {
            [1] = 'After beating Ante,',
            [2] = 'go one Ante back,',
            [3] = 'will not work on',
            [4] = 'the same Ante twice'
        }
    }

    local joker_carnival = SMODS.Joker:new(
        'Carnival', -- Name
        'carnival', -- Slug
        {extra = {ante_list = {}}}, -- Config
        {x = 0, y = 3}, -- Sprite position
        loc_carnival, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_carnival:register()

    SMODS.Jokers.j_carnival.calculate = function(self, context)

        if context.end_of_round and G.GAME.blind.boss and not context.other_card then

            local function has_value(tab, val)
                for index, value in ipairs(tab) do
                    if value == val then
                        return true
                    end
                end
                return false
            end

            if not has_value(self.ability.extra.ante_list, G.GAME.round_resets.ante) then
                ease_ante(-1)

                forced_message('Loop!', self, G.C.BLACK)
            end

            table.insert(self.ability.extra.ante_list, G.GAME.round_resets.ante)
        end
    end

    -- Envious Joker (\ENVI_BAS):
    SMODS.Sprite:new('j_envious', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_envious = {
        ['name'] = 'Envious Joker',
        ['text'] = {
            [1] = 'Played cards with',
            [2] = '{C:fleurons}Fleuron{} suit give',
            [3] = '{C:mult}+#1#{} Mult when scored'
        }
    }

    local joker_envious = SMODS.Joker:new(
        'Envious Joker', -- Name
        'envious', -- Slug
        {extra = {mult = 12}}, -- Config
        {x = 1, y = 3}, -- Sprite position
        loc_envious, -- Localization
        1, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_envious:register()

    SMODS.Jokers.j_envious.calculate = function(self, context)

        if context.individual and context.cardarea == G.play and context.other_card:is_suit('Fleurons') then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = { self.ability.extra.mult }
                },
                mult = self.ability.extra.mult,
                card = self,
            }
        end
    end

    -- Proud Joker (\PROU_BAS):
    SMODS.Sprite:new('j_proud', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_proud = {
        ['name'] = 'Proud Joker',
        ['text'] = {
            [1] = 'Played cards with',
            [2] = '{C:halberds}Halberd{} suit give',
            [3] = '{C:mult}+#1#{} Mult when scored'
        }
    }

    local joker_proud = SMODS.Joker:new(
        'Proud Joker', -- Name
        'proud', -- Slug
        {extra = {mult = 12}}, -- Config
        {x = 2, y = 3}, -- Sprite position
        loc_proud, -- Localization
        1, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        nil, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_proud:register()

    SMODS.Jokers.j_proud.calculate = function(self, context)

        if context.individual and context.cardarea == G.play and context.other_card:is_suit('Halberds') then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = { self.ability.extra.mult }
                },
                mult = self.ability.extra.mult,
                card = self,
            }
        end
    end

    -- Jimbo Joker (\JIMB_BAS):

    if enable_jimbo then
        SMODS.Sprite:new('j_jimbo', bunco_mod.path, 'Jimbo.png', 71, 95, 'asset_atli'):register()

        local loc_jimbo = {
            ['name'] = 'Jimbo',
            ['text'] = {
                [1] = '{C:inactive}Does nothing?'
            }
        }

        local joker_jimbo = SMODS.Joker:new(
            'Jimbo', -- Name
            'jimbo', -- Slug
            {}, -- Config
            {x = 0, y = 0}, -- Sprite position
            loc_jimbo, -- Localization
            4, -- Rarity
            0, -- Cost
            nil,
            nil,
            nil,
            nil,
            '',
            '',
            {x = 1, y = 0})

        joker_jimbo:register()

        -- Jimbo Joker uses Card:add_to_deck for some things. Check JIMB_FUN

        function G.UIDEF.jimbo_speech_bubble(text_key, loc_vars)
            local text = {}
            localize {type = 'quips', key = text_key, vars = loc_vars or {}, nodes = text}
            local row = {}
            for k, v in ipairs(text) do
            row[#row+1] =  {n=G.UIT.R, config={align = 'cl'}, nodes=v}
            end
            local t = {n=G.UIT.ROOT, config = {align = 'cm', minh = 1,r = 0.3, padding = 0.07, minw = 1, colour = G.C.JOKER_GREY, shadow = true}, nodes={
                        {n=G.UIT.C, config={align = 'cm', minh = 1,r = 0.2, padding = 0.1, minw = 1, colour = G.C.WHITE}, nodes={
                        {n=G.UIT.C, config={align = 'cm', minh = 1,r = 0.2, padding = 0.03, minw = 1, colour = G.C.WHITE}, nodes=row}}
                        }
                        }}
            return t
        end

        local additional_quips = {

            talk_hello_1 = {"..."},
            talk_hello_2 = {"Well, let's see what you got!"},

            talk_clone_1 = {"Doppelganger?", "No way!"},
            talk_clone_2 = {"Ah wait, that's actually me."},
            talk_clone_3 = {"Hello, handsome!"},
            talk_clone_4 = {"I don't think you can handle two Jimbos.", "{s:0.8}You're underqualified for this."},

            talk_joker_1 = {"Oh, remember when I thaught you", "about this handsome guy?"},
            talk_joker_2 = {"Kids really do grow up too fast!"},

            talk_clown_1 = {"Chaos the Clown... not a lot of", "chaos around him, huh?"},
            talk_clown_2 = {"Maybe I'm a dumbo, but I don't think", "shop rerolls are chaotic!"},

            talk_credit_1 = {"Have you been using my", "credit card this entire time?"},
            talk_credit_2 = {"This explains so many charges I don't recognize."},

            talk_loyalty_1 = {"This is actually for free hot dogs,", "but don't tell anybody."},

            talk_gift_1 = {"Wait a minute..."},
            talk_gift_2 = {"This expired years ago!"},

            talk_caino_1 = {"Hey, how's the wife-"},
            talk_caino_2 = {"Oh right, I forgot."},
            talk_caino_3 = {"This is why you don't talk to me."},

            talk_triboulet_1 = {"Whoof, I hit my head;", "I'm seeing triple!"},
            talk_triboulet_2 = {"Get it, Tribby? Because...", "There's three of you..."},
            talk_triboulet_3 = {"Please say something to me."},

            talk_chicot_1 = {"You know that this guy", "actually knows how to use a sword?"},
            talk_chicot_2 = {"Yet his sharp wit didn't save him", "from being stabbed, hahaha-"},
            talk_chicot_3 = {"Gosh, sorry, sorry!"},

            talk_perkeo_1 = {"I'm sorry, but I do not refill."},
            talk_perkeo_2 = {"Why not? Because you're already", "drunk as a lord."},

            talk_yorick_1 = {"Last I saw you, you were skin and bones."},
            talk_yorick_2 = {"Or was it just a skull?"}

        }

        for k, v in pairs(additional_quips) do
            G.localization.misc.quips[k] = v
            G.localization.quips_parsed[k] = {multi_line = true}
            for kk, vv in ipairs(v) do
                G.localization.quips_parsed[k][kk] = loc_parse_string(vv)
            end
        end

        SMODS.Jokers.j_jimbo.calculate = function(self, context)

        end
    end
end


-- Copied and modifed from LushMod
local generate_UIBox_ability_tableref = Card.generate_UIBox_ability_table
function Card.generate_UIBox_ability_table(self)
    local card_type, hide_desc = self.ability.set or 'None', nil
    local loc_vars = nil
    local main_start, main_end = nil, nil
    local no_badge = nil

    if self.config.center.unlocked == false and not self.bypass_lock then    -- For everyting that is locked
    elseif card_type == 'Undiscovered' and not self.bypass_discovery_ui then -- Any Joker or tarot/planet/voucher that is not yet discovered
    elseif self.debuff then
    elseif card_type == 'Default' or card_type == 'Enhanced' then
    elseif self.ability.set == 'Joker' then

        local customJoker = true

        if self.ability.name == 'Cassette' then -- Cassette Joker localization (\CASS_LOC)
            loc_vars = {self.ability.extra.chips, self.ability.extra.mult}
        elseif self.ability.name == 'Mosaic Joker' then -- Mosaic Joker localization (\MOSA_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Voxel Joker' then -- Voxel Joker localization (\VOXE_LOC)
            loc_vars = {self.ability.extra.base_xmult, self.ability.extra.xmult}
        elseif self.ability.name == 'Crop Circles' then -- Crop Circles Joker localization (\CROP_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'X-Ray' then -- X-Ray Joker localization (\XRAY_LOC)
            loc_vars = {self.ability.extra.xmult}
        elseif self.ability.name == 'Dread' then -- Dread Joker localization (\DREA_LOC)
            -- Nice nachos!
        elseif self.ability.name == 'Prehistoric Joker' then -- Prehistoric Joker localization (\PREH_LOC)
            loc_vars = {self.ability.mult}
        elseif self.ability.name == 'Linocut Joker' then -- Linocut Joker localization (\LINO_LOC)
            -- Hot Dog!
        elseif self.ability.name == 'Ghost Print' then -- Ghost Print Joker localization (\GHOS_LOC)
            loc_vars = {self.ability.extra.last_hand}
        elseif self.ability.name == 'Loan Shark' then -- Loan Shark Joker localization (\LOAN_LOC)
            -- Scammed
        elseif self.ability.name == 'Basement Joker' then -- Basement Joker localization (\BASE_LOC)
            -- Explosive diarrhea
        elseif self.ability.name == 'Shepherd Joker' then -- Shepherd Joker localization (\SHEP_LOC)
            loc_vars = {self.ability.extra.chips}
        elseif self.ability.name == 'Joker Knight' then -- Joker Knight localization (\KNIG_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Joker Man & Jester Boy Trading Card No. 54' then  -- JM & JB localization (\JMJB_LOC)
            -- Invisible boatmobile!
        elseif self.ability.name == 'Dogs Playing Poker' then -- Dogs Playing Poker Joker localization (\DOGS_LOC)
            loc_vars = {self.ability.extra.xmult}
        elseif self.ability.name == 'Righthook Joker' then -- Righthook Joker localization (\RIGH_LOC)
            -- KNOCKOUT!
        elseif self.ability.name == 'Fiendish Joker' then -- Fiendish Joker localization (\FIEN_LOC)
            loc_vars = {G.GAME.probabilities.normal, self.ability.extra.odds}
        elseif self.ability.name == 'Envious Joker' then -- Envious Joker localization (\ENVI_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Proud Joker' then -- Proud Joker localization (\PROU_LOC)
            loc_vars = {self.ability.extra.mult}
        else
            customJoker = false
        end

        if customJoker then
            local badges = {}
            if (card_type ~= 'Locked' and card_type ~= 'Undiscovered' and card_type ~= 'Default') or self.debuff then
                badges.card_type = card_type
            end
            if self.ability.set == 'Joker' and self.bypass_discovery_ui and (not no_badge) then
                badges.force_rarity = true
            end
            if self.edition then
                if self.edition.type == 'negative' and self.ability.consumeable then
                    badges[#badges + 1] = 'negative_consumable'
                else
                    badges[#badges + 1] = (self.edition.type == 'holo' and 'holographic' or self.edition.type)
                end
            end
            if self.seal then
                badges[#badges + 1] = string.lower(self.seal) .. '_seal'
            end
            if self.ability.eternal then
                badges[#badges + 1] = 'eternal'
            end
            if self.pinned then
                badges[#badges + 1] = 'pinned_left'
            end

            if self.sticker then
                loc_vars = loc_vars or {}
                loc_vars.sticker = self.sticker
            end

            return generate_card_ui(self.config.center, nil, loc_vars, card_type, badges, hide_desc, main_start,
                main_end)
        end
    end
    return generate_UIBox_ability_tableref(self)
end

----------------------------------------------
------------MOD CODE END----------------------
