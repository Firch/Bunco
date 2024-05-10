--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch, RENREN, Peas, minichibis, J.D., Guwahavel, Ciirulean]
--- MOD_DESCRIPTION: Mod aiming for vanilla style, currently adding 34 new Jokers and Exotic Suits system!

----------------------------------------------
------------MOD CODE -------------------------

---- Bunco 3.3
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
--  Deletion (DEL) - manages the rerolling of exotic cards such as Jokers and Tarots when exotic suits didn't exist
--
-- Generic Functions (FUNC)
--
-- Ver 1 Jokers: Cassette (CASS), Mosaic (MOSA), Voxel (VOXE), Crop Circles (CROP), X-Ray (XRAY), Dread (DREA), Prehistoric (PREH),
-- Ver 2: Linocut (LINO), Ghost Print (GHOS), Loan Shark (LOAN), Basement (BASE), Shepherd (SHEP), Knight (KNIG), JM & JB (JMJB),
-- Dogs Playing Poker (DOGS), Righthook (RIGH), Fiendish (FIEN), Carnival (CARN), Envious (ENVI), Proud (PROU)
-- Ver 3: Sledgehammer (SLED), Doorhanger (DOOR), Fingerprints (FING), Zealous (ZEAL), Lurid (LURI), The Dynasty (DYNA),
-- Starfruit (STAR), Wishalloy (WISH), Unobtanium (UNOB), Fondue (FOND), Myopia (MYOP), Astigmatism (ASTI), Magic Wand (MAGI), Rigoletto (RIGO)
-- Disabled: Jimbo (JIMB)
--  Base (BAS)
--  Localization (LOC)
--  Additional function(s) (FUN)
--
-- Blinds (BLIN)
--  Color (COL) - restores colors on finisher boss blinds and slightly remixes them
--  Debuffs (DEB) - manages the debuffs of custom blinds
--  Appearance (APP) - manages the rerolling of blinds
--  Initializing (INI)

function SMODS.INIT.Bunco()

    ---- Global variables (\GLOB):

    local bunco_mod = SMODS.findModByID('Bunco')
    local NFS = NFS or love.filesystem

    local sprite_tarots = SMODS.Sprite:new('bunco_tarots', bunco_mod.path, 'Tarots.png', 71, 95, 'asset_atli') sprite_tarots:register()
    local sprite_planets = SMODS.Sprite:new('bunco_planets', bunco_mod.path, 'Planets.png', 71, 95, 'asset_atli') sprite_planets:register()

    exotic_table = {
        'The Sky',
        'The Abyss',
        'Envious Joker',
        'Proud Joker',
        'Zealous Joker',
        'Lurid Joker',
        'The Dynasty',
        'Starfruit',
        'Wishalloy',
        'Unobtanium',
        'Fondue',
        'Myopia',
        'Astigmatism',
        'Magic Wand',
        'Rigoletto'}

    ---- Config loading (\CONF):

    local config = NFS.load(bunco_mod.path.."config.lua")()

    ---- Exotic cards (\EX):

    -- Exotic cards sprites (\EX_SPR):

    local sprite_exotic_cards = SMODS.Sprite:new('exotic_cards', bunco_mod.path, 'ExoticCards.png', 71, 95, 'asset_atli') sprite_exotic_cards:register()
    local sprite_exotic_cards_ui = SMODS.Sprite:new('exotic_cards_ui', bunco_mod.path, 'ExoticSuits.png', 18, 18, 'asset_atli') sprite_exotic_cards_ui:register()

    local sprite_exotic_cards_high_contrast = SMODS.Sprite:new('exotic_cards_high_contrast', bunco_mod.path, 'ExoticCardsHC.png', 71, 95, 'asset_atli') sprite_exotic_cards_high_contrast:register()
    local sprite_exotic_cards_ui_high_contrast = SMODS.Sprite:new('exotic_cards_ui_high_contrast', bunco_mod.path, 'ExoticSuitsHC.png', 18, 18, 'asset_atli') sprite_exotic_cards_ui_high_contrast:register()

    -- LunaAstraCassiopeia's awesome high contrast card resprites
    if config.high_contrast then
        local card_contrast = SMODS.Sprite:new("cards_2", bunco_mod.path, "EnhancedContrast.png", 71, 95, "asset_atli") card_contrast:register()
        local ui_contrast = SMODS.Sprite:new("ui_2", bunco_mod.path, "EnhancedUIContrast.png", 18, 18, "asset_atli") ui_contrast:register()

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

        t.hands['Spectrum Five'] =     { visible = false, order = t.hands['Flush Five'].order + 0.1,     mult = 18, chips = 180, s_mult = 18, s_chips = 180, level = 1, l_mult = 5, l_chips = 60, played = 0, played_this_round = 0, example = { { 'S_A', true }, { 'H_A', true }, { 'C_A', true }, { 'D_A', true }, { 'HALBERDS_A', true } } }
        t.hands['Spectrum House'] =    { visible = false, order = t.hands['Flush Five'].order - 0.1, mult = 15,  chips = 150,  s_mult = 15,  s_chips = 150,  level = 1, l_mult = 5, l_chips = 50, played = 0, played_this_round = 0, example = { { 'D_7', true }, { 'H_7', true }, { 'FLEURONS_7', true }, { 'HALBERDS_4', true }, { 'C_4', true } } }
        t.hands['Straight Spectrum'] = { visible = false, order = t.hands['Flush Five'].order - 0.1, mult = 10,  chips = 130,  s_mult = 13,  s_chips = 120,  level = 1, l_mult = 5, l_chips = 35, played = 0, played_this_round = 0, example = { { 'S_Q', true }, { 'FLEURONS_J', true }, { 'C_T', true }, { 'HALBERDS_9', true }, { 'H_8', true } } }
        t.hands['Spectrum'] =          { visible = false, order = t.hands['Full House'].order + 0.1,     mult = 6,  chips = 50,  s_mult = 6,  s_chips = 50,  level = 1, l_mult = 3, l_chips = 25, played = 0, played_this_round = 0, example = { { 'H_2', true }, { 'D_5', true }, { 'S_8', true }, { 'C_T', true }, { 'FLEURONS_A', true } } }
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
            if hand[i].ability.name == 'Wild Card' and not hand[i].debuff then
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

    function forget(suit, initial, deck, forced) -- G.GAME.Suit returns nil if the suit wasn't encountered, true if it is currently in the deck and false if it was encountered but not in the deck

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

                G.GAME.Halberds = false

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

    function acknowledge(suit, initial)

        if suit == 'Fleurons' then

            SMODS.Card:new_suit('Fleurons', 'exotic_cards', 'exotic_cards_high_contrast', { y = 0 }, 'exotic_cards_ui', 'exotic_cards_ui_high_contrast',
                { x = 0, y = 0 }, 'd6901a', 'dbb529')

            if G.GAME ~= nil and (G.GAME.Fleurons == false or G.GAME.Fleurons == nil) and initial == nil then

                G.GAME.allow_exotic = true

                G.GAME.Fleurons = true

                if G.GAME.first_exotic_suit == nil then
                    G.GAME.first_exotic_suit = 'Fleurons'
                end

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

            if initial ~= nil and initial == true then

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

        elseif suit == 'Halberds' then

            SMODS.Card:new_suit('Halberds', 'exotic_cards', 'exotic_cards_high_contrast', { y = 1 }, 'exotic_cards_ui', 'exotic_cards_ui_high_contrast',
                { x = 1, y = 0 }, '6e3c63', '993283')

            if G.GAME ~= nil and (G.GAME.Halberds == false or G.GAME.Halberds == nil) and initial == nil then

                G.GAME.allow_exotic = true

                G.GAME.Halberds = true

                if G.GAME.first_exotic_suit == nil then
                    G.GAME.first_exotic_suit = 'Halberds'
                end

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

            end

            if initial ~= nil and initial == true then

                sendDebugMessage('Acknowledged '..suit..'! (Initial:'..tostring(initial or 'false')..')')

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
        sendDebugMessage('Which suit was registered first? - '..tostring(saved_game and saved_game.GAME.first_exotic_suit))

        if saved_game ~= nil then
            if saved_game.GAME.first_exotic_suit == 'Fleurons' then
                if saved_game.GAME.Fleurons ~= nil then
                    if saved_game.GAME.Fleurons == true then
                        sendDebugMessage('Registered fleurons, because the current run already had them!')
                        acknowledge('Fleurons')
                    else
                        sendDebugMessage('Flash-registered fleurons, because the current run already had them!')
                        acknowledge('Fleurons')
                        forget('Fleurons')
                    end
                else
                    sendDebugMessage('Removed fleurons; undiscovered in the current run!')
                    forget('Fleurons')
                end
                if saved_game.GAME.Halberds ~= nil then
                    if saved_game.GAME.Halberds == true then
                        sendDebugMessage('Registered halberds, because the current run already had them!')
                        acknowledge('Halberds')
                    else
                        sendDebugMessage('Flash-registered halberds, because the current run already had them!')
                        acknowledge('Halberds')
                        forget('Halberds')
                    end
                else
                    sendDebugMessage('Removed halberds; undiscovered in the current run!')
                    forget('Halberds')
                end
            elseif saved_game.GAME.first_exotic_suit == 'Halberds' then
                if saved_game.GAME.Halberds ~= nil then
                    if saved_game.GAME.Halberds == true then
                        sendDebugMessage('Registered halberds, because the current run already had them!')
                        acknowledge('Halberds')
                    else
                        sendDebugMessage('Flash-registered halberds, because the current run already had them!')
                        acknowledge('Halberds')
                        forget('Halberds')
                    end
                else
                    sendDebugMessage('Removed halberds; undiscovered in the current run!')
                    forget('Halberds')
                end
                if saved_game.GAME.Fleurons ~= nil then
                    if saved_game.GAME.Fleurons == true then
                        sendDebugMessage('Registered fleurons, because the current run already had them!')
                        acknowledge('Fleurons')
                    else
                        sendDebugMessage('Flash-registered fleurons, because the current run already had them!')
                        acknowledge('Fleurons')
                        forget('Fleurons')
                    end
                else
                    sendDebugMessage('Removed fleurons; undiscovered in the current run!')
                    forget('Fleurons')
                end
            end
        else

            sendDebugMessage('Removed exotic suits; new run!')
            forget('Fleurons')
            forget('Halberds')

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

    local original_evaluate_play = G.FUNCS.evaluate_play

    G.FUNCS.evaluate_play = function(e) -- Unlocks exotic suits in the run
        original_evaluate_play(e)
        local text, disp_text, poker_hands, scoring_hand, non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards)

        if text == ('Spectrum' or 'Straight Spectrum' or 'Spectrum House' or 'Spectrum Five' or 'Royal Spectrum') and G.GAME.hands[text].played > 0 then

            if G.GAME.Fleurons == nil then
                acknowledge('Fleurons')
                forget('Fleurons')
            end

            if G.GAME.Halberds == nil then
                acknowledge('Halberds')
                forget('Halberds')
            end
        end
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

    -- Exotic cards Tarots (\EX_TAR):

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

        -- Sledgehammer Joker additional function (\SLED_FUN)

        if G.jokers ~= nil then -- I don't think this currently compatible with other things that may change the same values, but I'm not aware of any

            G.P_CENTERS.m_glass.config.Xmult = 2 -- Default values. This additional check is for when there's no Jokers at all
            G.P_CENTERS.m_glass.config.extra = 4

            local condition = false

            for _, v in ipairs(G.jokers.cards) do

                if v.ability.name == 'Sledgehammer' and not self.debuff then
                    condition = true
                end

                if condition then
                    G.P_CENTERS.m_glass.config.Xmult = 3
                    G.P_CENTERS.m_glass.config.extra = 1
                else
                    G.P_CENTERS.m_glass.config.Xmult = 2 -- Default values
                    G.P_CENTERS.m_glass.config.extra = 4
                end
            end
        else
            G.P_CENTERS.m_glass.config.Xmult = 2 -- Default values
            G.P_CENTERS.m_glass.config.extra = 4
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

        if self.ability.name == 'Dread' then
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

        -- Loan Shark Joker additional function (\LOAN_FUN)

        if self.ability.name == 'Loan Shark' then
            ease_dollars(50)
            self.ability.extra_value = -100 - self.sell_cost
            self:set_cost()
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

         -- Doorhanger Joker additional function (\DOOR_FUN)
         -- I do not create card immedeately for this one because of the sound Jokers make when they have edition

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Doorhanger' and not v.debuff then
                    if _rarity == nil or _rarity < 0.9 then

                        local new_rarity = 0.9

                        if pseudorandom('doorhanger'..G.SEED) > 0.98 then
                            new_rarity = 1
                            sendDebugMessage(new_rarity)
                        end

                        sendDebugMessage(new_rarity)

                        return create_card(_type, area, legendary, new_rarity, skip_materialize, soulable, forced_key, key_append)
                    end
                end
            end
        end

        local card = original_create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)

        sendDebugMessage('Key: '..((card.ability.name) or 'none')..', Type: '..(_type or 'nil'))

        -- JM & JB additional function (\JMJB_FUN2)

        if card.ability.name == 'Joker Man & Jester Boy Trading Card No. 54' then
            sendDebugMessage('Edition enforcement on JM & JB')
            if card:get_edition() == nil then
                local edition = poll_edition('aura', nil, true, true)
                card:set_edition(edition)
            end
        end

        -- Exotic suit deletion (\EX_DEL1):

        local function has_value(tab, val)
            for index, value in ipairs(tab) do
                if value == val then
                    return true
                end
            end
            return false
        end

        if G.GAME.Fleurons ~= nil or G.GAME.Halberds ~= nil then
            G.GAME.allow_exotic = true
        end

        if not G.GAME.allow_exotic and has_value(exotic_table, card.ability.name) then
            sendDebugMessage('Exotic card appeared! But the exotic suit did not exist.')
            sendDebugMessage('Rerolling...')
            card:remove()
            return create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
        else
            return card
        end
    end

    local original_ease_dollars = ease_dollars

    function ease_dollars(mod, instant)

        -- Fiendish Joker additional function (\FIEN_FUN)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Fiendish Joker' and not v.debuff then
                    if mod > 0 then
                        if pseudorandom('fiendish'..G.SEED) < G.GAME.probabilities.normal / v.ability.extra.odds then
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

    local original_card_is_suit = Card.is_suit

    function Card:is_suit(suit, bypass_debuff, flush_calc)

        local returnable = original_card_is_suit(self, suit, bypass_debuff, flush_calc)

        -- Myopia Joker additional function (\MYOP_FUN)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Myopia' and not v.debuff then
                    if self.base.suit == 'Spades' and (self.base.suit == 'Spades') == (suit == 'Spades' or suit == 'Halberds') then
                        returnable = true
                    end
                    if self.base.suit == 'Clubs' and (self.base.suit == 'Clubs') == (suit == 'Clubs' or suit == 'Halberds') then
                        returnable = true
                    end
                end
            end
        end

        -- Astigmatism Joker additional function (\ASTI_FUN)

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Astigmatism' and not v.debuff then
                    if self.base.suit == 'Hearts' and (self.base.suit == 'Hearts') == (suit == 'Hearts' or suit == 'Fleurons') then
                        returnable = true
                    end
                    if self.base.suit == 'Diamonds' and (self.base.suit == 'Diamonds') == (suit == 'Diamonds' or suit == 'Fleurons') then
                        returnable = true
                    end
                end
            end
        end

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.ability.name == 'Smeared Joker' and not v.debuff then
                    if self.base.suit == 'Fleurons' and (suit ~= 'Fleurons') then
                        returnable = false
                    end
                    if self.base.suit == 'Halberds' and (suit ~= 'Halberds') then
                        returnable = false
                    end
                    if (self.base.suit ~= 'Fleurons' and self.base.suit ~= 'Halberds') and (suit == 'Fleurons' or suit == 'Halberds') then
                        returnable = false
                    end
                end
            end
        end

        return returnable
    end

    local original_get_chip_mult = Card.get_chip_mult

    function Card:get_chip_mult()
        if self.ability.perma_bonus_mult then
            return self.ability.mult + self.ability.perma_bonus_mult
        end
        return original_get_chip_mult(self)
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

    local function forced_message(_message, _card, _colour, delay) -- Copied from Blizzow, tweaked slightly (added delay)
        if delay then delay = 0.7 * 1.25
        else delay = 0 end
        G.E_MANAGER:add_event(Event({ trigger = 'before', delay = delay,
            func = function() card_eval_status_text(_card, 'extra', nil, nil, nil, {message = _message, colour = _colour, instant=true}); return true
            end}))
    end

    local function invert_color(color, invert_red, invert_green, invert_blue)
        local inverted_color = {
          1 - (color[1] or 0),
          1 - (color[2] or 0),
          1 - (color[3] or 0),
          color[4] or 1
        }

        if invert_red then
          inverted_color[1] = color[1] or 0
        end
        if invert_green then
          inverted_color[2] = color[2] or 0
        end
        if invert_blue then
          inverted_color[3] = color[3] or 0
        end

        return inverted_color
    end

    local function increase_saturation(color, value)
        -- Extract RGB components
        local r = color[1] or 0
        local g = color[2] or 0
        local b = color[3] or 0

        -- Convert RGB to HSL
        local max_val = math.max(r, g, b)
        local min_val = math.min(r, g, b)
        local delta = max_val - min_val

        local h, s, l = 0, 0, (max_val + min_val) / 2

        if delta ~= 0 then
          if l < 0.5 then
            s = delta / (max_val + min_val)
          else
            s = delta / (2 - max_val - min_val)
          end

          if r == max_val then
            h = (g - b) / delta
          elseif g == max_val then
            h = 2 + (b - r) / delta
          else
            h = 4 + (r - g) / delta
          end

          h = h * 60
          if h < 0 then
            h = h + 360
          end
        end

        -- Increase saturation
        s = math.min(s + value, 1)

        -- Convert back to RGB
        local c = (1 - math.abs(2 * l - 1)) * s
        local x = c * (1 - math.abs((h / 60) % 2 - 1))
        local m = l - c / 2

        local r_new, g_new, b_new = 0, 0, 0

        if h < 60 then
          r_new, g_new, b_new = c, x, 0
        elseif h < 120 then
          r_new, g_new, b_new = x, c, 0
        elseif h < 180 then
          r_new, g_new, b_new = 0, c, x
        elseif h < 240 then
          r_new, g_new, b_new = 0, x, c
        elseif h < 300 then
          r_new, g_new, b_new = x, 0, c
        else
          r_new, g_new, b_new = c, 0, x
        end

        -- Adjust RGB values
        r_new, g_new, b_new = (r_new + m), (g_new + m), (b_new + m)

        return {r_new, g_new, b_new, color[4] or 1}
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
        false, -- Discovered
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
            [2] = 'give {C:mult}+#1#{} Mult',
            [3] = 'when scored'
        }
    }

    local joker_mosaic = SMODS.Joker:new(
        'Mosaic Joker', -- Name
        'mosaic', -- Slug
        {extra = {mult = 6}}, -- Config
        {x = 2, y = 0}, -- Sprite position
        loc_mosaic, -- Localization
        2, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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
        false, -- Discovered
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
            [1] = '{C:fleurons}Fleurons{} give {C:mult}+4{} Mult,',
            [2] = '{C:clubs}Clubs{} give {C:mult}+3{} Mult,',
            [3] = '8 give {C:mult}+2{} Mult,',
            [4] = 'Q, 10, 9, 6 give {C:mult}+1{} Mult'
        }
    }

    local joker_crop = SMODS.Joker:new(
        'Crop Circles', -- Name
        'crop', -- Slug
        {}, -- Config
        {x = 4, y = 0}, -- Sprite position
        loc_crop, -- Localization
        1, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_crop:register()

    SMODS.Jokers.j_crop.calculate = function(self, context)

        if context.individual and context.cardarea == G.play and context.other_card.ability.effect ~= 'Stone Card' then
            if context.other_card.base.suit == ('Fleurons') then
                if context.other_card:get_id() == 8 then
                    return {
                        mult = 6,
                        card = self
                    }
                elseif context.other_card:get_id() == 12 or context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 6 then
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
            elseif context.other_card.base.suit == ('Clubs') then
                if context.other_card:get_id() == 8 then
                    return {
                        mult = 5,
                        card = self
                    }
                elseif context.other_card:get_id() == 12 or context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 6 then
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
            elseif context.other_card:get_id() == 8 then
                return {
                    mult = 2,
                    card = self
                }
            elseif context.other_card:get_id() == 12 or context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 6 then
                return {
                    mult = 1,
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
        false, -- Discovered
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
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_dread:register()

    -- Dread Joker uses Card:remove_from_deck for some things. Check DREA_FUN

    SMODS.Jokers.j_dread.calculate = function(self, context)

        if context.full_hand ~= nil and context.full_hand[1] and not context.other_card and not context.blueprint then
            self.ability.extra.trash_list = {}
            for k, v in ipairs(context.full_hand) do
                table.insert(self.ability.extra.trash_list, v)
            end
        end

        if context.after and G.GAME.current_round.hands_left == 0 and context.scoring_name ~= nil and not context.blueprint then

            level_up_hand(self, context.scoring_name, true, 2)

            if self.ability.extra.level_up_list[context.scoring_name] then
                self.ability.extra.level_up_list[context.scoring_name] = self.ability.extra.level_up_list[context.scoring_name] + 2
            else
                self.ability.extra.level_up_list[context.scoring_name] = 2
            end

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                func = function()

                    for i = 1, #self.ability.extra.trash_list do
                        self.ability.extra.trash_list[i].destroyed = true
                        self.ability.extra.trash_list[i]:start_dissolve(nil, nil, 3)
                        self.ability.extra.trash_list[i].destroyed = true
                    end
                    self.ability.extra.trash_list = {}

            return true end }))

            return {
                colour = G.C.RED,
                message = localize('k_level_up_ex')
            }
        end
    end

    -- Prehistoric Joker (\PREH_BAS):
    SMODS.Sprite:new('j_prehistoric', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_prehistoric = {
        ['name'] = 'Prehistoric Joker',
        ['text'] = {
            [1] = '{C:mult}+#1#{} Mult for each card',
            [2] = 'of the same rank and suit',
            [3] = 'that was already played',
            [4] = 'during this round'
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
        false, -- Discovered
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

            if not context.blueprint then
                table.insert(self.ability.extra.card_list, context.other_card.base.id .. context.other_card.base.suit) -- Add card to the list
            end

        end

        if context.end_of_round and not context.other_card then -- Clear the list if end of round
            self.ability.extra.card_list = {}
        end
    end

    -- Linocut Joker (\LINO_BAS):
    SMODS.Sprite:new('j_linocut', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_linocut = {
        ['name'] = 'Linocut Joker',
        ['text'] = {
            [1] = 'When playing a {C:attention}Pair,',
            [2] = 'convert the suit of the {C:attention}left{} card',
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
        4, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_linocut:register()

    SMODS.Jokers.j_linocut.calculate = function(self, context)

        if context.individual and context.cardarea == G.play and context.poker_hands ~= nil and context.poker_hands and next(context.poker_hands['Pair']) then

            if context.scoring_hand ~= nil and #context.scoring_hand == 2 and context.scoring_hand[1] == context.other_card then
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.scoring_hand[1]:flip();play_sound('card1', 1);context.scoring_hand[1]:juice_up(0.3, 0.3);return true end }))
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()  context.scoring_hand[1]:change_suit(context.scoring_hand[2].config.card.suit);return true end }))
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.scoring_hand[1]:flip();play_sound('tarot2', 1, 0.6);context.scoring_hand[1]:juice_up(0.3, 0.3);return true end }))

                forced_message('Copied!', self, G.C.RED, true)

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
        6, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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

                    forced_message(tostring(self.ability.extra.last_hand)..'!', self, G.C.HAND_LEVELS[G.GAME.hands[self.ability.extra.last_hand].level], true)

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
            [2] = 'when acquired...'
        }
    }

    local joker_loanshark = SMODS.Joker:new(
        'Loan Shark', -- Name
        'loanshark', -- Slug
        {}, -- Config
        {x = 4, y = 1}, -- Sprite position
        loc_loanshark, -- Localization
        2, -- Rarity
        3, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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
            [1] = 'When {C:attention}Boss Blind{} is defeated',
            [2] = 'create a {C:spectral}Spectral{} card'
        }
    }

    local joker_basement = SMODS.Joker:new(
        'Basement Joker', -- Name
        'basement', -- Slug
        {}, -- Config
        {x = 5, y = 1}, -- Sprite position
        loc_basement, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_basement:register()

    SMODS.Jokers.j_basement.calculate = function(self, context)

        if context.end_of_round and G.GAME.blind.boss and not context.other_card then

            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                if not context.blueprint then
                    forced_message(localize('k_plus_spectral'), self, G.C.SECONDARY_SET.Spectral)
                end
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                local card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil)
                card:add_to_deck()
                G.consumeables:emplace(card)
                G.GAME.consumeable_buffer = 0
            end
        end
    end

    -- Shepherd Joker (\SHEP_BAS):
    SMODS.Sprite:new('j_shepherd', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_shepherd = {
        ['name'] = 'Shepherd Joker',
        ['text'] = {
            [1] = 'Gains {C:chips}+6{} Chips',
            [2] = 'when played hand contains a {C:attention}Pair',
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
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_shepherd:register()

    SMODS.Jokers.j_shepherd.calculate = function(self, context)
        if context.after and context.poker_hands ~= nil and next(context.poker_hands['Pair']) and not context.blueprint then
            self.ability.extra.chips = self.ability.extra.chips + 6

            forced_message('+'..tostring(self.ability.extra.chips)..' Chips', self, G.C.BLUE)

            delay(0.5)
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
        2, -- Rarity
        6, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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
            [1] = '{C:attention}Standard Packs{} will contain',
            [2] = 'only {C:attention}Enhanced Cards{}'
        }
    }

    local joker_jokermanjesterboy = SMODS.Joker:new(
        'Joker Man & Jester Boy Trading Card No. 54', -- Name
        'jokermanjesterboy', -- Slug
        {}, -- Config
        {x = 2, y = 2}, -- Sprite position
        loc_jokermanjesterboy, -- Localization
        3, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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

                        if G.pack_cards and G.pack_cards.cards ~= nil and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center == G.P_CENTERS.c_base then
                                    v:set_ability(enhancement_pool[math.random(#enhancement_pool)])
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
            [2] = 'cards are {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5{}'
        }
    }

    local joker_dogs = SMODS.Joker:new(
        'Dogs Playing Poker', -- Name
        'dogs', -- Slug
        {extra = {xmult = 2.5}}, -- Config
        {x = 3, y = 2}, -- Sprite position
        loc_dogs, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_dogs:register()

    SMODS.Jokers.j_dogs.calculate = function(self, context)

        if SMODS.end_calculate_context(context) then

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
            [2] = 'the same amount of times as',
            [3] = 'your current amount of hands'
        }
    }

    local joker_righthook = SMODS.Joker:new(
        'Righthook Joker', -- Name
        'righthook', -- Slug
        {}, -- Config
        {x = 4, y = 2}, -- Sprite position
        loc_righthook, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_righthook:register()

    SMODS.Jokers.j_righthook.calculate = function(self, context)

        if context.repetition and context.cardarea == G.play and context.scoring_hand ~= nil and context.other_card == context.scoring_hand[#context.scoring_hand] then

            local repetitions = G.GAME.current_round.hands_left

            return {
                message = localize('k_again_ex'),
                repetitions = repetitions,
                card = self
            }
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
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
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
            [1] = 'After beating Ante, destroy',
            [2] = 'Joker to the right to',
            [3] = 'go one Ante back',
            [4] = '{s:0.8,C:attention}will not work on the same Ante twice'
        }
    }

    local joker_carnival = SMODS.Joker:new(
        'Carnival', -- Name
        'carnival', -- Slug
        {extra = {ante_list = {}}}, -- Config
        {x = 0, y = 3}, -- Sprite position
        loc_carnival, -- Localization
        3, -- Rarity
        10, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_carnival:register()

    SMODS.Jokers.j_carnival.calculate = function(self, context)

        if context.end_of_round and G.GAME.blind.boss and not context.other_card and not context.blueprint then

            local function has_value(tab, val)
                for index, value in ipairs(tab) do
                    if value == val then
                        return true
                    end
                end
                return false
            end

            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == self then my_pos = i; break end
            end

            if my_pos and G.jokers.cards[my_pos+1] and not self.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then
                if not has_value(self.ability.extra.ante_list, G.GAME.round_resets.ante) then
                    local sliced_card = G.jokers.cards[my_pos+1]
                    sliced_card.getting_sliced = true
                    self:juice_up(0.8, 0.8)
                    ease_ante(-1)
                    forced_message('Loop!', self, G.C.BLACK)
                    sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
                    play_sound('slice1', 0.96+math.random()*0.08)
                end
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
        false, -- Discovered
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
        false, -- Discovered
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

    -- Sledgehammer Joker (\SLED_BAS):
    SMODS.Sprite:new('j_sledgehammer', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_sledgehammer = {
        ['name'] = 'Sledgehammer',
        ['text'] = {
            [1] = '{C:attention}Glass Cards{} give {X:mult,C:white}X3{} Mult',
            [2] = 'and guaranteed to break'
        }
    }

    local joker_sledgehammer = SMODS.Joker:new(
        'Sledgehammer', -- Name
        'sledgehammer', -- Slug
        {}, -- Config
        {x = 3, y = 3}, -- Sprite position
        loc_sledgehammer, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_sledgehammer:register()

    SMODS.Jokers.j_sledgehammer.calculate = function(self, context)

    end

    -- Doorhanger Joker (\DOOR_BAS):
    SMODS.Sprite:new('j_doorhanger', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_doorhanger = {
        ['name'] = 'Doorhanger',
        ['text'] = {
            [1] = 'Disables {C:blue}Common{} Jokers',
            [2] = 'from appearing',
            [3] = '{s:0.8}different rarities appear instead'
        }
    }

    local joker_doorhanger = SMODS.Joker:new(
        'Doorhanger', -- Name
        'doorhanger', -- Slug
        {}, -- Config
        {x = 4, y = 3}, -- Sprite position
        loc_doorhanger, -- Localization
        3, -- Rarity
        10, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_doorhanger:register()

    -- Doorhanger Joker uses Card:update for some things. Check DOOR_FUN

    SMODS.Jokers.j_doorhanger.calculate = function(self, context)

    end

    -- Fingerprints Joker (\FING_BAS):
    SMODS.Sprite:new('j_fingerprints', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_fingerprints = {
        ['name'] = 'Fingerprints',
        ['text'] = {
            [1] = 'Cards played on {C:attention}final hand{} of round',
            [2] = 'gain temporary {C:chips}+#1#{} Chips when scored,',
            [3] = 'bonus lasts for one round'
        }
    }

    local joker_fingerprints = SMODS.Joker:new(
        'Fingerprints', -- Name
        'fingerprints', -- Slug
        {extra = {bonus = 50, new_card_list = {}, old_card_list = {}}}, -- Config
        {x = 5, y = 3}, -- Sprite position
        loc_fingerprints, -- Localization
        2, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_fingerprints:register()

    SMODS.Jokers.j_fingerprints.calculate = function(self, context)
        if context.after and context.scoring_name ~= nil and context.scoring_hand ~= nil and not context.blueprint then
            self.ability.extra.new_card_list = {}

            for i = 1, #context.scoring_hand do
                table.insert(self.ability.extra.new_card_list, context.scoring_hand[i])
            end
        end

        if context.end_of_round and not context.other_card and not context.blueprint then
            for _, v in ipairs(self.ability.extra.old_card_list) do
                v.ability.perma_bonus = v.ability.perma_bonus or 0
                v.ability.perma_bonus = v.ability.perma_bonus - self.ability.extra.bonus
            end

            for _, v in ipairs(self.ability.extra.new_card_list) do
                v.ability.perma_bonus = v.ability.perma_bonus or 0
                v.ability.perma_bonus = v.ability.perma_bonus + self.ability.extra.bonus

                table.insert(self.ability.extra.old_card_list, v)
            end

            forced_message(localize('k_upgrade_ex'), self, G.C.CHIPS)

        end
    end

    -- Zealous Joker (\ZEAL_BAS):
    SMODS.Sprite:new('j_zealous', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_zealous = {
        ['name'] = 'Zealous Joker',
        ['text'] = {
            [1] = '{C:red}+30{} Mult if played',
            [2] = 'hand contains',
            [3] = 'a {C:attention}Spectrum'
        }
    }

    local joker_zealous = SMODS.Joker:new(
        'Zealous Joker', -- Name
        'zealous', -- Slug
        {t_mult = 30, type = 'Spectrum'}, -- Config
        {x = 0, y = 4}, -- Sprite position
        loc_zealous, -- Localization
        1, -- Rarity
        3, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_zealous:register()

    SMODS.Jokers.j_zealous.calculate = function(self, context)

    end

    -- Lurid Joker (\LURI_BAS):
    SMODS.Sprite:new('j_lurid', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_lurid = {
        ['name'] = 'Lurid Joker',
        ['text'] = {
            [1] = '{C:chips}+120{} Chips if played',
            [2] = 'hand contains',
            [3] = 'a {C:attention}Spectrum'
        }
    }

    local joker_lurid = SMODS.Joker:new(
        'Lurid Joker', -- Name
        'lurid', -- Slug
        {t_chips = 120, type = 'Spectrum'}, -- Config
        {x = 1, y = 4}, -- Sprite position
        loc_lurid, -- Localization
        1, -- Rarity
        3, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_lurid:register()

    SMODS.Jokers.j_lurid.calculate = function(self, context)

    end

    -- The Dynasty Joker (\DYNA_BAS):
    SMODS.Sprite:new('j_dynasty', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_dynasty = {
        ['name'] = 'The Dynasty',
        ['text'] = {
            [1] = '{X:mult,C:white}X5{} Mult if played',
            [2] = 'hand contains',
            [3] = 'a {C:attention}Spectrum'
        }
    }

    local joker_dynasty = SMODS.Joker:new(
        'The Dynasty', -- Name
        'dynasty', -- Slug
        {Xmult = 5, type = 'Spectrum'}, -- Config
        {x = 2, y = 4}, -- Sprite position
        loc_dynasty, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_dynasty:register()

    SMODS.Jokers.j_dynasty.calculate = function(self, context)

    end

    -- Starfruit Joker (\STAR_BAS):
    SMODS.Sprite:new('j_starfruit', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_starfruit = {
        ['name'] = 'Starfruit',
        ['text'] = {
            [1] = '{C:green}#1# in #2#{} chance to level up',
            [2] = 'played poker hand if it contains a {C:attention}Spectrum',
            [3] = '{C:green}#1# in #3#{} chance to destroy itself',
            [4] = 'at the end of the round if that hand was played'
        }
    }

    local joker_starfruit = SMODS.Joker:new(
        'Starfruit', -- Name
        'starfruit', -- Slug
        {extra = {level_odds = 3, destroy_odds = 6, condition = false}}, -- Config
        {x = 3, y = 4}, -- Sprite position
        loc_starfruit, -- Localization
        2, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_starfruit:register()

    SMODS.Jokers.j_starfruit.calculate = function(self, context)

        if context.before and context.poker_hands ~= nil and next(context.poker_hands['Spectrum']) and not context.blueprint then
            if pseudorandom('starfruit'..G.SEED) < G.GAME.probabilities.normal / self.ability.extra.level_odds then

                level_up_hand(self, context.scoring_name, false, 1)
                --update_hand_text({delay = 0, sound = false})

                forced_message(localize('k_level_up_ex'), self, G.C.RED, true)

            end

            self.ability.extra.condition = true

        end

        if context.end_of_round and not context.other_card and self.ability.extra.condition == true and not context.blueprint then
            if pseudorandom('starfruit'..G.SEED) < G.GAME.probabilities.normal / self.ability.extra.destroy_odds then

                forced_message(localize('k_eaten_ex'), self, G.C.FILTER)
                self:start_dissolve()

            else

                forced_message(localize('k_safe_ex'), self)
                self.ability.extra.condition = false

            end
        end
    end

    -- Wishalloy Joker (\WISH_BAS):
    SMODS.Sprite:new('j_wishalloy', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_wishalloy = {
        ['name'] = 'Wishalloy',
        ['text'] = {
            [1] = '{C:green}#1# in #2#{} chance for',
            [2] = 'played {C:fleurons}Fleurons{}',
            [3] = 'to earn money equal',
            [4] = "to card's scored chips"
        }
    }

    local joker_wishalloy = SMODS.Joker:new(
        'Wishalloy', -- Name
        'wishalloy', -- Slug
        {extra = {odds = 7}}, -- Config
        {x = 4, y = 4}, -- Sprite position
        loc_wishalloy, -- Localization
        2, -- Rarity
        7, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_wishalloy:register()

    SMODS.Jokers.j_wishalloy.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Fleurons') then
                if pseudorandom('wishalloy'..G.SEED) < G.GAME.probabilities.normal / self.ability.extra.odds then

                    local value = context.other_card:get_chip_bonus()
                    ease_dollars(value)
                end
            end
        end
    end

    -- Unobtanium Joker (\UNOB_BAS):
    SMODS.Sprite:new('j_unobtanium', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_unobtanium = {
        ['name'] = 'Unobtanium',
        ['text'] = {
            [1] = 'Played cards with',
            [2] = '{C:halberds}Halberd{} suit',
            [3] = 'give {C:chips}+100{} Chips and {C:red}+12{} Mult',
            [4] = "when scored"
        }
    }

    local joker_unobtanium = SMODS.Joker:new(
        'Unobtanium', -- Name
        'unobtanium', -- Slug
        {extra = {mult = 12, chips = 100}}, -- Config
        {x = 5, y = 4}, -- Sprite position
        loc_unobtanium, -- Localization
        2, -- Rarity
        7, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_unobtanium:register()

    SMODS.Jokers.j_unobtanium.calculate = function(self, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit('Halberds') then

            chips = hand_chips + self.ability.extra.chips
            update_hand_text({delay = 0, sound = 'chips1'}, {chips = chips, mult = mult})

            forced_message('+'..tostring(self.ability.extra.chips), context.other_card, G.C.CHIPS, true)

            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = { self.ability.extra.mult }
                },
                mult = self.ability.extra.mult,
                card = self
            }
        end
    end

    -- Fondue Joker (\FOND_BAS):
    SMODS.Sprite:new('j_fondue', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_fondue = {
        ['name'] = 'Fondue',
        ['text'] = {
            [1] = 'Scored cards in the first',
            [2] = 'hand of round are converted',
            [3] = 'to {C:fleurons}Fleurons'
        }
    }

    local joker_fondue = SMODS.Joker:new(
        'Fondue', -- Name
        'fondue', -- Slug
        {}, -- Config
        {x = 0, y = 5}, -- Sprite position
        loc_fondue, -- Localization
        3, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_fondue:register()

    SMODS.Jokers.j_fondue.calculate = function(self, context)
        if G.GAME.current_round.hands_played == 0 and context.individual and context.cardarea == G.play and context.other_card and not context.blueprint then
            acknowledge('Fleurons')
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.other_card:flip();play_sound('card1', 1);context.other_card:juice_up(0.3, 0.3);return true end }))
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()  context.other_card:change_suit('Fleurons');return true end }))
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.other_card:flip();play_sound('tarot2', 1, 0.6);context.other_card:juice_up(0.3, 0.3);return true end }))
        end
    end

    -- Myopia Joker (\MYOP_BAS):
    SMODS.Sprite:new('j_myopia', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_myopia = {
        ['name'] = 'Myopia',
        ['text'] = {
            [1] = '{C:spades}Spades{} and {C:clubs}Clubs{}',
            [2] = 'count as {C:halberds}Halberds'
        }
    }

    local joker_myopia = SMODS.Joker:new(
        'Myopia', -- Name
        'myopia', -- Slug
        {}, -- Config
        {x = 1, y = 5}, -- Sprite position
        loc_myopia, -- Localization
        2, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_myopia:register()

    -- Myopia Joker uses Card:is_suit for some things. Check MYOP_FUN

    SMODS.Jokers.j_myopia.calculate = function(self, context)

    end

    -- Astigmatism Joker (\ASTI_BAS):
    SMODS.Sprite:new('j_astigmatism', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_astigmatism = {
        ['name'] = 'Astigmatism',
        ['text'] = {
            [1] = '{C:hearts}Hearts{} and {C:diamonds}Diamonds{}',
            [2] = 'count as {C:fleurons}Fleurons'
        }
    }

    local joker_astigmatism = SMODS.Joker:new(
        'Astigmatism', -- Name
        'astigmatism', -- Slug
        {}, -- Config
        {x = 2, y = 5}, -- Sprite position
        loc_astigmatism, -- Localization
        2, -- Rarity
        8, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        false, -- Blueprint compat
        true) -- Eternal compat

    joker_astigmatism:register()

    -- Astigmatism Joker uses Card:is_suit for some things. Check ASTI_FUN

    SMODS.Jokers.j_astigmatism.calculate = function(self, context)

    end

    -- Magic Wand Joker (\MAGI_BAS):
    SMODS.Sprite:new('j_magicwand', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_magicwand = {
        ['name'] = 'Magic Wand',
        ['text'] = {
            [1] = 'Gains {X:mult,C:white}X0.3{} Mult for each played',
            [2] = 'hand containing a {C:attention}Spectrum{}, resets',
            [3] = 'when a non-Spectrum hand is played',
            [4] = '{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)'
        }
    }

    local joker_magicwand = SMODS.Joker:new(
        'Magic Wand', -- Name
        'magicwand', -- Slug
        {extra = {xmult = 1}}, -- Config
        {x = 3, y = 5}, -- Sprite position
        loc_magicwand, -- Localization
        1, -- Rarity
        5, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_magicwand:register()

    SMODS.Jokers.j_magicwand.calculate = function(self, context)
        if context.after and context.poker_hands ~= nil and next(context.poker_hands['Spectrum']) and not context.blueprint then
            self.ability.extra.xmult = self.ability.extra.xmult + 0.3

            forced_message('X'..tostring(self.ability.extra.xmult)..' Mult', self, G.C.RED)
        elseif context.after and context.poker_hands ~= nil and not next(context.poker_hands['Spectrum']) and not context.blueprint then
            self.ability.extra.xmult = 1

            forced_message(localize('k_reset'), self, G.C.RED)
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

    -- Zero Shapiro (\ZERO_BAS):
    SMODS.Sprite:new('j_zero', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_zero = {
        ['name'] = 'Zero Shapiro',
        ['text'] = {
            [1] = 'Played cards with',
            [2] = '{C:attention}no{} or {C:attention}zero{} rank give',
            [3] = '{C:green}+0.1{} to {C:green,E:1,S:1.1}probabilities{}',
            [4] = 'for current round when scored'
        }
    }

    local joker_zero = SMODS.Joker:new(
        'Zero Shapiro', -- Name
        'zero', -- Slug
        {extra = {proc_amount = 0}}, -- Config
        {x = 4, y = 5}, -- Sprite position
        loc_zero, -- Localization
        2, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_zero:register()

    SMODS.Jokers.j_zero.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_stone or context.other_card:get_id() == 0 then

                self.ability.extra.proc_amount = self.ability.extra.proc_amount + 1

                for k, v in pairs(G.GAME.probabilities) do
                    G.GAME.probabilities[k] = v + 0.1
                end

                return {
                    extra = {focus = context.other_card, message = '+0.1 Chance', colour = G.C.GREEN},
                    card = self
                }
            end
        end

        if context.end_of_round and not context.other_card then
            for k, v in pairs(G.GAME.probabilities) do
                G.GAME.probabilities[k] = v - (self.ability.extra.proc_amount * 0.1)
            end

            self.ability.extra.proc_amount = 0

            forced_message(localize('k_reset'), self, G.C.GREEN, true)
        end
    end

    -- Nil Bill (\BILL_BAS):
    SMODS.Sprite:new('j_bill', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_bill = {
        ['name'] = 'Nil Bill',
        ['text'] = {
            [1] = 'Played cards with',
            [2] = '{C:attention}debuff{} give',
            [3] = '{C:money}$1{} when scored'
        }
    }

    local joker_bill = SMODS.Joker:new(
        'Nil Bill', -- Name
        'bill', -- Slug
        {}, -- Config
        {x = 5, y = 5}, -- Sprite position
        loc_bill, -- Localization
        2, -- Rarity
        4, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true) -- Eternal compat

    joker_bill:register()

    SMODS.Jokers.j_bill.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.debuff then

                G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + 1
                G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
                return {
                    extra = {focus = context.other_card, message = '$1', colour = G.C.MONEY},
                    dollars = 1,
                    card = self
                }
            end
        end
    end

    -- Rigoletto Joker (\RIGO_BAS):
    SMODS.Sprite:new('j_rigoletto', bunco_mod.path, 'Rigoletto.png', 71, 95, 'asset_atli'):register()

    local loc_rigoletto = {
        ['name'] = 'Rigoletto',
        ['text'] = {
            [1] = 'Each scored card permanently',
            [2] = 'gains {C:red}+4{} Mult if played hand',
            [3] = 'contains {C:halberds}Halberd{} or {C:fleurons}Fleuron'
        }
    }

    local joker_rigoletto = SMODS.Joker:new(
        'Rigoletto', -- Name
        'rigoletto', -- Slug
        {}, -- Config
        {x = 0, y = 0}, -- Sprite position
        loc_rigoletto, -- Localization
        4, -- Rarity
        0, -- Cost
        nil, -- Unlocked
        false, -- Discovered
        true, -- Blueprint compat
        true, -- Eternal compat
        '',
        '',
        {x = 1, y = 0}) -- Soul position

    joker_rigoletto:register()

    SMODS.Jokers.j_rigoletto.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then

            local condition = false

            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_suit('Halberds') or context.scoring_hand[i]:is_suit('Fleurons') then
                    condition = true
                end
            end

            if condition then

                context.other_card.ability.perma_bonus_mult = context.other_card.ability.perma_bonus_mult or 0
                context.other_card.ability.perma_bonus_mult = context.other_card.ability.perma_bonus_mult + 4

                return {
                    extra = {focus = context.other_card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                    card = self
                }
            end
        end
    end

    -- Jimbo Joker (\JIMB_BAS):

    if config.jimbo then
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
            nil, -- Unlocked
            nil, -- Discovered
            nil, -- Blueprint compat
            nil, -- Eternal compat
            '',
            '',
            {x = 1, y = 0}) -- Soul position

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

    -- Blinds (\BL)

    -- Finisher blind color restoration (\BL_COL)

    if config.colorful_finishers then
        local original_ease_background_colour_blind = ease_background_colour_blind

        function ease_background_colour_blind(state, blind_override)
            local blindname = ((blind_override or (G.GAME.blind and G.GAME.blind.name ~= '' and G.GAME.blind.name)) or 'Small Blind')
            local blindname = (blindname == '' and 'Small Blind' or blindname)

            for k, v in pairs(G.P_BLINDS) do
                if v.name == blindname then
                    local boss_col = v.boss_colour
                    if v.boss and v.boss.showdown then
                        ease_background_colour{
                            new_colour = increase_saturation(mix_colours(boss_col, invert_color(boss_col), 0.3), 1),
                            special_colour = boss_col,
                            tertiary_colour = darken(increase_saturation(mix_colours(boss_col, invert_color(boss_col, true, false, false), 0.3), 0.6), 0.4), contrast = 1.7}
                        return
                    else
                        original_ease_background_colour_blind(state, blind_override)
                    end
                end
            end
        end
    end

    if config.high_quality_background then
        local background_shader = NFS.read(bunco_mod.path..'resources/shaders/background.fs')
        local splash_shader = NFS.read(bunco_mod.path..'resources/shaders/splash.fs')

        G.SHADERS['background'] = love.graphics.newShader(background_shader)
        G.SHADERS['splash'] = love.graphics.newShader(splash_shader)
    end

    -- Blind debuffs (\BL_DEB)

    local original_blind_debuff_card = Blind.debuff_card

    function Blind:debuff_card(card, from_blind)

        if self.debuff and not self.disabled and card.area ~= G.jokers then
            if self.name == 'Chartreuse Crown' then
                if card.ability.name ~= 'Stone Card' and card.ability.name ~= 'Wild Card' then
                    if card.base.suit == ('Spades') or card.base.suit == ('Hearts') or card.base.suit == ('Clubs') or card.base.suit == ('Diamonds') then
                        card:set_debuff(true)
                        return
                    end
                end
            end

            if self.name == 'The Flame' and not self.disabled then
                if card.config.center ~= G.P_CENTERS.c_base then
                    card:set_debuff(true)
                    return
                end
            end

            if self.name == 'The Knoll' and not self.disabled then
                return
            end
        end

        original_blind_debuff_card(self, card, from_blind)
    end

    local original_game_update_shop = Game.update_shop

    function Game:update_shop(dt)
        if G.GAME.final_trident == true and not G.GAME.blind.disabled and not find_joker('Chicot') then
            G.STATE = G.STATES.BLIND_SELECT
            return false
        end

        if G.GAME.miser == true then
            G.STATE = G.STATES.BLIND_SELECT
            G.GAME.miser = false
            return false
        end

        original_game_update_shop(self, dt)
    end

    local original_card_highlight = Card.highlight

    function Card:highlight(is_higlighted)
        original_card_highlight(self, is_higlighted)

        if G.GAME.blind and G.GAME.blind.name == 'The Gate' and not G.GAME.blind.disabled and is_higlighted then
            self.ability.forced_selection = true
        end
    end

    local original_cardarea_remove_from_highlighted = CardArea.remove_from_highlighted

    function CardArea:remove_from_highlighted(card, force)
        if G.GAME.blind and G.GAME.blind.name == 'The Gate' and G.GAME.blind.disabled and self == G.hand and not force then
            card.ability.forced_selection = false
        elseif G.GAME.blind and G.GAME.blind.name == 'The Gate' and not G.GAME.blind.disabled and card.ability.forced_selection == true and not force then
            G.GAME.blind:wiggle()
        end
        original_cardarea_remove_from_highlighted(self, card, force)
    end

    local original_blind_defeat = Blind.defeat

    function Blind:defeat(silent)
        original_blind_defeat(self, silent)

        if self.name == 'The Miser' and not self.disabled then
            G.GAME.miser = true
        end

        if self.name == 'The Swing' then
            G.GAME.swing = false
        end

        if self.name == 'The Knoll' then
            G.GAME.knoll = false
        end
    end

    local original_discard_cards_from_highlighted = G.FUNCS.discard_cards_from_highlighted

    G.FUNCS.discard_cards_from_highlighted = function(e, hook)
    original_discard_cards_from_highlighted(e, hook)

        if G.GAME.blind and G.GAME.blind.name == 'The Swing' and not G.GAME.blind.disabled then
            G.E_MANAGER:add_event(Event({ func = function()
                for k, v in ipairs(G.hand.cards) do
                    v:flip()
                end

                G.GAME.blind:wiggle()

                if G.GAME.swing == true then
                    G.GAME.swing = false
                else
                    G.GAME.swing = true
                end
            return true end }))
        end
    end

    local original_play_cards_from_highlighted = G.FUNCS.play_cards_from_highlighted

    G.FUNCS.play_cards_from_highlighted = function(e, hook)
    original_play_cards_from_highlighted(e, hook)

        if G.GAME.blind and G.GAME.blind.name == 'The Swing' and not G.GAME.blind.disabled then
            G.E_MANAGER:add_event(Event({ func = function()
                for k, v in ipairs(G.hand.cards) do
                    v:flip()
                end

                G.GAME.blind:wiggle()

                if G.GAME.swing == true then
                    G.GAME.swing = false
                else
                    G.GAME.swing = true
                end
            return true end }))
        end

        if G.GAME.blind and G.GAME.blind.name == 'The Umbrella' and not G.GAME.blind.disabled then
            G.E_MANAGER:add_event(Event({ func = function()

                for k, v in ipairs(G.hand.cards) do
                    if v.facing == 'front' then
                        v:flip()
                    end
                end

                G.GAME.blind:wiggle()

            return true end }))
        end
    end

    local original_blind_stay_flipped = Blind.stay_flipped

    function Blind:stay_flipped(area, card)
        original_blind_stay_flipped(self, area, card)

        if self.name == 'The Swing' and not self.disabled then
            if G.GAME.swing == true then
                return true
            else
                return false
            end
        end

        if self.name == 'The Knoll' and not self.disabled then
            if G.GAME.knoll ~= true and G.GAME.dollars > 10 and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
                G.GAME.knoll = true
            end
            if G.GAME.knoll and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
                card:set_debuff(true)
                return false
            end
        end
    end

    local original_blind_debuff_hand = Blind.debuff_hand

    function Blind:debuff_hand(cards, hand, handname, check)

        if self.debuff and not self.disabled then
            if self.name == 'The Mask' then
                if handname == G.GAME.current_round.most_played_poker_hand then
                    if not check then
                        local mult = G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_mult
                        local chips = G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_chips
                        update_hand_text({sound = '', modded = true}, {chips = chips, mult = mult})
                    end
                end
            end
        end

        original_blind_debuff_hand(self, cards, hand, handname, check)
    end

    local original_blind_press_play = Blind.press_play

    function Blind:press_play()
        original_blind_press_play(self)

        if self.name == 'The Bulwark' then
            if G.FUNCS.get_poker_hand_info(G.hand.highlighted) == G.GAME.current_round.most_played_poker_hand then
                G.E_MANAGER:add_event(Event({ func = function()
                    G.hand.config.highlighted_limit = math.huge
                    if G.hand.cards then
                        for k, v in ipairs(G.hand.cards) do
                            G.hand:add_to_highlighted(v, true)
                            if k <= 3 then
                                play_sound('card1', 1)
                            end
                        end
                        G.hand.config.highlighted_limit = config.highlight_limit or 5
                        G.FUNCS.discard_cards_from_highlighted(nil, true)
                    end
                return true end }))
                self.triggered = true
                delay(0.7)
            end
        end
    end

    -- Blind appearance (\BL_APP)

    local original_get_new_boss = get_new_boss

    function get_new_boss()
        local boss = original_get_new_boss()

        local function startsWith(str, start)
            return str:sub(1, #start) == start
        end

        if boss == 'bl_miser' and
        (G.GAME.round_resets.ante == 7 or
        G.GAME.round_resets.ante == 15 or
        G.GAME.round_resets.ante == 23) then
            sendDebugMessage('Rerolled The Miser!')
            boss = get_new_boss()
        end

        if startsWith(boss, 'bl_final') then

            local exotic_amount = 0

            for k, v in pairs(G.playing_cards) do
                if v:is_suit('Fleurons') or v:is_suit('Halberds') then exotic_amount = exotic_amount + 1 end
            end

            if G.GAME.allow_exotic and exotic_amount >= 5 then
                sendDebugMessage('Chartreuse Crown is allowed.')
            elseif boss == 'bl_final_crown' then
                sendDebugMessage('Rerolled Chartreuse Crown!')
                boss = get_new_boss()
            end
        end

        if boss == 'bl_final_trident' then
            if G.STATE == G.STATES.SHOP then
                sendDebugMessage('Rerolled Vermilion Trident!')
                boss = get_new_boss()
                return boss
            end
            G.GAME.final_trident = true
        else
            G.GAME.final_trident = false
        end

        return boss
    end

    local original_end_round = end_round

    function end_round()
        original_end_round()

        local lowestValue = math.huge
        local leastPlayedHand = ''

        for i = #G.handlist, 1, -1 do
            local v = G.handlist[i]
            local playedCount = G.GAME.hands[v].played
            if playedCount < lowestValue then
                lowestValue = playedCount
                leastPlayedHand = v
            end
        end

        G.GAME.current_round.least_played_poker_hand = leastPlayedHand

        sendDebugMessage(G.GAME.current_round.least_played_poker_hand)

    end

    -- Blind Initializing (\BL_INI)

    SMODS.Sprite:new('thegate', bunco_mod.path, 'TheGate.png', 34, 34, 'animation_atli', 21):register()
    local TheGate = SMODS.Blind:new(
        'The Gate', -- Name
        'gate', -- Slug
        {name = 'The Gate',
        text = {'Cards cannot', 'be unselected'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 1, max = 10}, -- Boss antes
        HEX('c9a27a'), -- Color
        false, -- Discovered
        'thegate') -- Atlas
    TheGate:register()

    SMODS.Sprite:new('themiser', bunco_mod.path, 'TheMiser.png', 34, 34, 'animation_atli', 21):register()
    local TheMiser = SMODS.Blind:new(
        'The Miser', -- Name
        'miser', -- Slug
        {name = 'The Miser',
        text = {'Shop is skipped after', 'defeating this blind'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 2, max = 10}, -- Boss antes
        HEX('991a7f'), -- Color
        false, -- Discovered
        'themiser') -- Atlas
    TheMiser:register()

    SMODS.Sprite:new('theswing', bunco_mod.path, 'TheSwing.png', 34, 34, 'animation_atli', 21):register()
    local TheSwing = SMODS.Blind:new(
        'The Swing', -- Name
        'swing', -- Slug
        {name = 'The Swing',
        text = {'After Play or Discard,', 'all cards are flipped'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 3, max = 10}, -- Boss antes
        HEX('17f3d0'), -- Color
        false, -- Discovered
        'theswing') -- Atlas
    TheSwing:register()

    SMODS.Sprite:new('theumbrella', bunco_mod.path, 'TheUmbrella.png', 34, 34, 'animation_atli', 21):register()
    local TheUmbrella = SMODS.Blind:new(
        'The Umbrella', -- Name
        'umbrella', -- Slug
        {name = 'The Umbrella',
        text = {'After Play, all non-flipped', 'cards get flipped'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 2, max = 10}, -- Boss antes
        HEX('1e408e'), -- Color
        false, -- Discovered
        'theumbrella') -- Atlas
    TheUmbrella:register()

    SMODS.Sprite:new('themask', bunco_mod.path, 'TheMask.png', 34, 34, 'animation_atli', 21):register()
    local TheMask = SMODS.Blind:new(
        'The Mask', -- Name
        'mask', -- Slug
        {name = 'The Mask',
        text = {'#1# has the base', 'Chips and Mult of #2#'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 2, max = 10}, -- Boss antes
        HEX('efcca6'), -- Color
        false, -- Discovered
        'themask') -- Atlas
    TheMask:register()

    SMODS.Sprite:new('theflame', bunco_mod.path, 'TheFlame.png', 34, 34, 'animation_atli', 21):register()
    local TheFlame = SMODS.Blind:new(
        'The Flame', -- Name
        'flame', -- Slug
        {name = 'The Flame',
        text = {'All Enhanced cards', 'are debuffed'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 3, max = 10}, -- Boss antes
        HEX('9b2d49'), -- Color
        false, -- Discovered
        'theflame') -- Atlas
    TheFlame:register()

    SMODS.Sprite:new('thebulwark', bunco_mod.path, 'TheBulwark.png', 34, 34, 'animation_atli', 21):register()
    local TheBulwark = SMODS.Blind:new(
        'The Bulwark', -- Name
        'bulwark', -- Slug
        {name = 'The Bulwark',
        text = {'Playing a #1# discards', 'all cards held in hand'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 2, max = 10}, -- Boss antes
        HEX('672f69'), -- Color
        false, -- Discovered
        'thebulwark') -- Atlas
    TheBulwark:register()

    SMODS.Sprite:new('theknoll', bunco_mod.path, 'TheKnoll.png', 34, 34, 'animation_atli', 21):register()
    local TheKnoll = SMODS.Blind:new(
        'The Knoll', -- Name
        'knoll', -- Slug
        {name = 'The Knoll',
        text = {'Having more than $10', 'debuffs first hand drawn'}},
        5, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {min = 4, max = 10}, -- Boss antes
        HEX('6d8f2d'), -- Color
        false, -- Discovered
        'theknoll') -- Atlas
    TheKnoll:register()

    SMODS.Sprite:new('chartreusecrown', bunco_mod.path, 'ChartreuseCrown.png', 34, 34, 'animation_atli', 21):register()
    local ChartreuseCrown = SMODS.Blind:new(
        'Chartreuse Crown', -- Name
        'final_crown', -- Slug
        {name = 'Chartreuse Crown',
        text = {'All Spade, Heart, Club and Diamond', 'base suit cards are debuffed'}},
        8, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {showdown = true, min = 10, max = 10}, -- Boss antes
        HEX('96a756'), -- Color
        false, -- Discovered
        'chartreusecrown') -- Atlas
    ChartreuseCrown:register()

    SMODS.Sprite:new('vermiliontrident', bunco_mod.path, 'VermilionTrident.png', 34, 34, 'animation_atli', 21):register()
    local VermilionTrident = SMODS.Blind:new(
        'Vermilion Trident', -- Name
        'final_trident', -- Slug
        {name = 'Vermilion Trident',
        text = {'Shops are disabled', 'this Ante'}},
        8, -- Reward
        2, -- Multiplier
        {}, -- Vars
        {}, -- Debuff
        {x = 0, y = 0}, -- Sprite position
        {showdown = true, min = 10, max = 10}, -- Boss antes
        HEX('db481e'), -- Color
        false, -- Discovered
        'vermiliontrident') -- Atlas
    VermilionTrident:register()

    local original_game_init_object = Game.init_game_object

    function Game:init_game_object()
        local returnable = original_game_init_object(self)

        returnable.current_round.least_played_poker_hand = 'High Card'

        return returnable
    end

    local original_blind_set_text = Blind.set_text

    function Blind:set_text()
        original_blind_set_text(self)
        if self.config.blind then
            if not self.disabled then
                if self.name == 'The Mask' then
                    local loc_vars = nil
                    loc_vars = {
                    localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands'),
                    localize(G.GAME.current_round.least_played_poker_hand, 'poker_hands')}

                    local loc_target = localize{type = 'raw_descriptions', key = self.config.blind.key, set = 'Blind', vars = loc_vars or self.config.blind.vars}
                    if loc_target then
                        self.loc_name = self.name == '' and self.name or localize{type ='name_text', key = self.config.blind.key, set = 'Blind'}
                        self.loc_debuff_text = ''
                        for k, v in ipairs(loc_target) do
                            self.loc_debuff_text = self.loc_debuff_text..v..(k <= #loc_target and ' ' or '')
                        end
                        self.loc_debuff_lines[1] = loc_target[1] or ''
                        self.loc_debuff_lines[2] = loc_target[2] or ''
                    else
                        self.loc_name = ''; self.loc_debuff_text = ''
                        self.loc_debuff_lines[1] = ''
                        self.loc_debuff_lines[2] = ''
                    end
                end
                if self.name == 'The Bulwark' then
                    local loc_vars = nil
                    loc_vars = {
                    localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}

                    local loc_target = localize{type = 'raw_descriptions', key = self.config.blind.key, set = 'Blind', vars = loc_vars or self.config.blind.vars}
                    if loc_target then
                        self.loc_name = self.name == '' and self.name or localize{type ='name_text', key = self.config.blind.key, set = 'Blind'}
                        self.loc_debuff_text = ''
                        for k, v in ipairs(loc_target) do
                            self.loc_debuff_text = self.loc_debuff_text..v..(k <= #loc_target and ' ' or '')
                        end
                        self.loc_debuff_lines[1] = loc_target[1] or ''
                        self.loc_debuff_lines[2] = loc_target[2] or ''
                    else
                        self.loc_name = ''; self.loc_debuff_text = ''
                        self.loc_debuff_lines[1] = ''
                        self.loc_debuff_lines[2] = ''
                    end
                end
            end
        end
    end

    function create_UIBox_blind_choice(type, run_info) -- Very stinky! No lovely makes people go insane
        if not G.GAME.blind_on_deck then
            G.GAME.blind_on_deck = 'Small'
        end
        if not run_info then G.GAME.round_resets.blind_states[G.GAME.blind_on_deck] = 'Select' end
        local disabled = false
        type = type or 'Small'
        local blind_choice = {
            config = G.P_BLINDS[G.GAME.round_resets.blind_choices[type]],
        }
        local blind_atlas = 'blind_chips'
        if blind_choice.config and blind_choice.config.atlas then
            blind_atlas = blind_choice.config.atlas
        end
        blind_choice.animation = AnimatedSprite(0, 0, 1.4, 1.4, G.ANIMATION_ATLAS[blind_atlas], blind_choice.config.pos)
        blind_choice.animation:define_draw_steps({
            { shader = 'dissolve', shadow_height = 0.05 },
            { shader = 'dissolve' }
        })
        local extras = nil
        local stake_sprite = get_stake_sprite(G.GAME.stake or 1, 0.5)
        G.GAME.orbital_choices = G.GAME.orbital_choices or {}
        G.GAME.orbital_choices[G.GAME.round_resets.ante] = G.GAME.orbital_choices[G.GAME.round_resets.ante] or {}
        if not G.GAME.orbital_choices[G.GAME.round_resets.ante][type] then
            local _poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible then _poker_hands[#_poker_hands + 1] = k end
            end
            G.GAME.orbital_choices[G.GAME.round_resets.ante][type] = pseudorandom_element(_poker_hands, pseudoseed('orbital'))
        end
        if type == 'Small' then
            extras = create_UIBox_blind_tag(type, run_info)
        elseif type == 'Big' then
            extras = create_UIBox_blind_tag(type, run_info)
        elseif not run_info then
            local dt1 = DynaText({ string = { { string = localize('ph_up_ante_1'), colour = G.C.FILTER } }, colours = { G.C.BLACK }, scale = 0.55, silent = true, pop_delay = 4.5, shadow = true, bump = true, maxw = 3 })
            local dt2 = DynaText({ string = { { string = localize('ph_up_ante_2'), colour = G.C.WHITE } }, colours = { G.C.CHANCE }, scale = 0.35, silent = true, pop_delay = 4.5, shadow = true, maxw = 3 })
            local dt3 = DynaText({ string = { { string = localize('ph_up_ante_3'), colour = G.C.WHITE } }, colours = { G.C.CHANCE }, scale = 0.35, silent = true, pop_delay = 4.5, shadow = true, maxw = 3 })
            extras =
            {
                n = G.UIT.R,
                config = { align = "cm" },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.07, r = 0.1, colour = { 0, 0, 0, 0.12 }, minw = 2.9 },
                        nodes = {
                            {
                                n = G.UIT.R,
                                config = { align = "cm" },
                                nodes = {
                                    { n = G.UIT.O, config = { object = dt1 } },
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cm" },
                                nodes = {
                                    { n = G.UIT.O, config = { object = dt2 } },
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cm" },
                                nodes = {
                                    { n = G.UIT.O, config = { object = dt3 } },
                                }
                            },
                        }
                    },
                }
            }
        end
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        local loc_target = localize{ type = 'raw_descriptions', key = blind_choice.config.key, set = 'Blind', vars = { localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands'), localize(G.GAME.current_round.least_played_poker_hand, 'poker_hands') } }
        local loc_name = localize{ type = 'name_text', key = blind_choice.config.key, set = 'Blind' }
        local text_table = loc_target
        local blind_col = get_blind_main_colour(type)
        local blind_amt = get_blind_amount(G.GAME.round_resets.blind_ante) * blind_choice.config.mult *
            G.GAME.starting_params.ante_scaling
        local blind_state = G.GAME.round_resets.blind_states[type]
        local _reward = true
        if G.GAME.modifiers.no_blind_reward and G.GAME.modifiers.no_blind_reward[type] then _reward = nil end
        if blind_state == 'Select' then blind_state = 'Current' end
        local run_info_colour = run_info and
            (blind_state == 'Defeated' and G.C.GREY or blind_state == 'Skipped' and G.C.BLUE or blind_state == 'Upcoming' and G.C.ORANGE or blind_state == 'Current' and G.C.RED or G.C.GOLD)
        local t =
        {
            n = G.UIT.R,
            config = { id = type, align = "tm", func = 'blind_choice_handler', minh = not run_info and 10 or nil, ref_table = { deck = nil, run_info = run_info }, r = 0.1, padding = 0.05 },
            nodes = {
                {
                    n = G.UIT.R,
                    config = { align = "cm", colour = mix_colours(G.C.BLACK, G.C.L_BLACK, 0.5), r = 0.1, outline = 1, outline_colour = G.C.L_BLACK },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = "cm", padding = 0.2 },
                            nodes = {
                                not run_info and
                                {
                                    n = G.UIT.R,
                                    config = { id = 'select_blind_button', align = "cm", ref_table = blind_choice.config, colour = disabled and G.C.UI.BACKGROUND_INACTIVE or G.C.ORANGE, minh = 0.6, minw = 2.7, padding = 0.07, r = 0.1, shadow = true, hover = true, one_press = true, button = 'select_blind' },
                                    nodes = {
                                        { n = G.UIT.T, config = { ref_table = G.GAME.round_resets.loc_blind_states, ref_value = type, scale = 0.45, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.UI.TEXT_LIGHT, shadow = not disabled } }
                                    }
                                } or
                                {
                                    n = G.UIT.R,
                                    config = { id = 'select_blind_button', align = "cm", ref_table = blind_choice.config, colour = run_info_colour, minh = 0.6, minw = 2.7, padding = 0.07, r = 0.1, emboss = 0.08 },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize(blind_state, 'blind_states'), scale = 0.45, colour = G.C.UI.TEXT_LIGHT, shadow = true } }
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { id = 'blind_name', align = "cm", padding = 0.07 },
                            nodes = {
                                {
                                    n = G.UIT.R,
                                    config = { align = "cm", r = 0.1, outline = 1, outline_colour = blind_col, colour = darken(blind_col, 0.3), minw = 2.9, emboss = 0.1, padding = 0.07, line_emboss = 1 },
                                    nodes = {
                                        { n = G.UIT.O, config = { object = DynaText({ string = loc_name, colours = { disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE }, shadow = not disabled, float = not disabled, y_offset = -4, scale = 0.45, maxw = 2.8 }) } },
                                    }
                                },
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { align = "cm", padding = 0.05 },
                            nodes = {
                                {
                                    n = G.UIT.R,
                                    config = { id = 'blind_desc', align = "cm", padding = 0.05 },
                                    nodes = {
                                        {
                                            n = G.UIT.R,
                                            config = { align = "cm" },
                                            nodes = {
                                                {
                                                    n = G.UIT.R,
                                                    config = { align = "cm", minh = 1.5 },
                                                    nodes = {
                                                        { n = G.UIT.O, config = { object = blind_choice.animation } },
                                                    }
                                                },
                                                text_table[1] and
                                                {
                                                    n = G.UIT.R,
                                                    config = { align = "cm", minh = 0.7, padding = 0.05, minw = 2.9 },
                                                    nodes = {
                                                        text_table[1] and {
                                                            n = G.UIT.R,
                                                            config = { align = "cm", maxw = 2.8 },
                                                            nodes = {
                                                                { n = G.UIT.T, config = { id = blind_choice.config.key, ref_table = { val = '' }, ref_value = 'val', scale = 0.32, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE, shadow = not disabled, func = 'HUD_blind_debuff_prefix' } },
                                                                { n = G.UIT.T, config = { text = text_table[1] or '-', scale = 0.32, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE, shadow = not disabled } }
                                                            }
                                                        } or nil,
                                                        text_table[2] and {
                                                            n = G.UIT.R,
                                                            config = { align = "cm", maxw = 2.8 },
                                                            nodes = {
                                                                { n = G.UIT.T, config = { text = text_table[2] or '-', scale = 0.32, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE, shadow = not disabled } }
                                                            }
                                                        } or nil,
                                                    }
                                                } or nil,
                                            }
                                        },
                                        {
                                            n = G.UIT.R,
                                            config = { align = "cm", r = 0.1, padding = 0.05, minw = 3.1, colour = G.C.BLACK, emboss = 0.05 },
                                            nodes = {
                                                {
                                                    n = G.UIT.R,
                                                    config = { align = "cm", maxw = 3 },
                                                    nodes = {
                                                        { n = G.UIT.T, config = { text = localize('ph_blind_score_at_least'), scale = 0.3, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE, shadow = not disabled } }
                                                    }
                                                },
                                                {
                                                    n = G.UIT.R,
                                                    config = { align = "cm", minh = 0.6 },
                                                    nodes = {
                                                        { n = G.UIT.O, config = { w = 0.5, h = 0.5, colour = G.C.BLUE, object = stake_sprite, hover = true, can_collide = false } },
                                                        { n = G.UIT.B, config = { h = 0.1, w = 0.1 } },
                                                        { n = G.UIT.T, config = { text = number_format(blind_amt), scale = score_number_scale(0.9, blind_amt), colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.RED, shadow = not disabled } }
                                                    }
                                                },
                                                _reward and {
                                                    n = G.UIT.R,
                                                    config = { align = "cm" },
                                                    nodes = {
                                                        { n = G.UIT.T, config = { text = localize('ph_blind_reward'), scale = 0.35, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.WHITE, shadow = not disabled } },
                                                        { n = G.UIT.T, config = { text = string.rep(localize("$"), blind_choice.config.dollars) .. '+', scale = 0.35, colour = disabled and G.C.UI.TEXT_INACTIVE or G.C.MONEY, shadow = not disabled } }
                                                    }
                                                } or nil,
                                            }
                                        },
                                    }
                                },
                            }
                        },
                    }
                },
                {
                    n = G.UIT.R,
                    config = { id = 'blind_extras', align = "cm" },
                    nodes = {
                        extras,
                    }
                }
            }
        }
        return t
    end
end

local generate_card_ui_ref = generate_card_ui
function generate_card_ui(_c, full_UI_table, specific_vars, card_type, badges, hide_desc, main_start, main_end)
    local returnable = generate_card_ui_ref(_c, full_UI_table, specific_vars, card_type, badges, hide_desc, main_start, main_end)

    if _c.name == 'Crop Circles' and (_c.exotic == nil or _c.exotic == false or _c.cardarea.collection) then
        table.remove(returnable.main, 1)
    end

    return returnable
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
            -- Scammed!
        elseif self.ability.name == 'Basement Joker' then -- Basement Joker localization (\BASE_LOC)
            -- Explosive diarrhea!
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
        elseif self.ability.name == 'Carnival' then -- Carnival Joker localization (\FIEN_LOC)
            -- Loop!
        elseif self.ability.name == 'Envious Joker' then -- Envious Joker localization (\ENVI_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Proud Joker' then -- Proud Joker localization (\PROU_LOC)
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Sledgehammer' then -- Sledgehammer Joker localization (\SLED_LOC)
            -- Program has encountered a problem.
        elseif self.ability.name == 'Doorhanger' then -- Doorhanger Joker localization (\DOOR_LOC)
            -- [Do not disturb]
        elseif self.ability.name == 'Fingerprints' then -- Fingerprints Joker localization (\FING_LOC)
            loc_vars = {self.ability.extra.bonus}
        elseif self.ability.name == 'Zealous Joker' then -- Zealous Joker localization (\ZEAL_LOC)

        elseif self.ability.name == 'Lurid Joker' then -- Lurid Joker localization (\LURI_LOC)

        elseif self.ability.name == 'The Dynasty' then -- The Dynasty Joker localization (\DYNA_LOC)

        elseif self.ability.name == 'Starfruit' then -- Starfruit Joker localization (\STAR_LOC)
            loc_vars = {G.GAME.probabilities.normal, self.ability.extra.level_odds, self.ability.extra.destroy_odds}
        elseif self.ability.name == 'Wishalloy' then -- Wishalloy Joker localization (\WISH_LOC)
            loc_vars = {G.GAME.probabilities.normal, self.ability.extra.odds}
        elseif self.ability.name == 'Fondue' then -- Fondue Joker localization (\FOND_LOC)
            -- Cheesy
        elseif self.ability.name == 'Myopia' then -- Myopia Joker localization (\MYOP_LOC)
            -- WOAH
        elseif self.ability.name == 'Astigmatism' then -- Astigmatism Joker localization (\ASTI_LOC)
            -- wwooaahh
        elseif self.ability.name == 'Magic Wand' then -- Magic Wand Joker localization (\MAGI_LOC)
            loc_vars = {self.ability.extra.xmult}

        elseif self.ability.name == 'Zero Shapiro' then -- Zero Shapiro Joker localization (\ZERO_LOC)

        elseif self.ability.name == 'Rigoletto' then -- Rigoletto Joker localization (\RIGO_LOC)

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

            if not self.config.center.discovered then
                card_type = 'Undiscovered'

                if self.area.config.collection then
                    hide_desc = true
                    badges = {}
                end
            end

            self.config.center.cardarea = self.area.config
            self.config.center.exotic = G.GAME.allow_exotic or nil

            return generate_card_ui(self.config.center, nil, loc_vars, card_type, badges, hide_desc, main_start, main_end)
        end
    end

    -- Code from AutumnMood & Victin
    local generate_UIBox_ability_table_val = generate_UIBox_ability_tableref(self)

    if self then
        local bonus_mult = "none"
        if self.ability.perma_bonus_mult then bonus_mult = self.ability.perma_bonus_mult end
        bonus_mult = tostring(bonus_mult)
        local mult_row = {}
        if bonus_mult ~= "none" and bonus_mult ~= "0" then
            mult_row[#mult_row + 1] = {
                                    n=G.UIT.T,
                                    config={
                                        text="+",
                                        colour=G.C.MULT,
                                        scale=0.32
                                    }
                                }
            mult_row[#mult_row + 1] = {
                                    n=G.UIT.T,
                                    config={
                                        text=bonus_mult,
                                        colour=G.C.MULT,
                                        scale=0.32
                                    }
                                }
            mult_row[#mult_row + 1] =
                                {
                                    n=G.UIT.T,
                                    config={
                                        text=" extra mult",
                                        colour=G.C.L_BLACK,
                                        scale=0.32
                                    }
                                }
        end
        local main_text = generate_UIBox_ability_table_val.main
        if #mult_row > 0 then main_text[#main_text + 1] = mult_row end

        return generate_UIBox_ability_table_val
    end

    return generate_UIBox_ability_tableref(self)
end

----------------------------------------------
------------MOD CODE END----------------------
