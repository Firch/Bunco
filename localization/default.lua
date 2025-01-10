return {
    misc = {
        dictionary = {

            -- Config values

            bunc_colorful_finishers = 'Colorful Final Blinds',
            bunc_colorful_finishers_desc = 'Enables colorful backgrounds for the final blinds',
            bunc_colorful_finishers_desc_2 = 'and removes gray background in the Endless Mode',

            bunc_high_quality_shaders = 'High Quality Shaders',
            bunc_high_quality_shaders_desc = 'Makes some of the vanilla shaders',
            bunc_high_quality_shaders_desc_2 = 'render in higher quality (might cause lag)',

            bunc_fixed_sprites = 'Fixed Sprites',
            bunc_fixed_sprites_desc = 'Tweaks some sprites in a minor way by removing',
            bunc_fixed_sprites_desc_2 = 'stray pixels, improving consistency and high contrast',

            bunc_gameplay_reworks = 'Gameplay Reworks',
            bunc_gameplay_reworks_desc = 'Reworks some of the vanilla mechanics',
            bunc_gameplay_reworks_desc_2 = 'to make the game more enjoyable',

            bunc_fixed_badges = 'Fixed Badges',
            bunc_fixed_badges_desc = 'Changes the badges on consumables by replacing confusing',
            bunc_fixed_badges_desc_2 = 'flavor text with indication of their way of obtaining',

            bunc_jokerlike_consumable_editions = 'Editions in Consumables Slot',
            bunc_jokerlike_consumable_editions_desc = 'Reverts the vanilla behavior of consumables with',
            bunc_jokerlike_consumable_editions_desc_2 = 'editions acting like Jokers (for other conflicting mods)',

            bunc_default_true = 'Enabled by default',
            bunc_default_false = 'Disabled by default',
            bunc_requires_restart = 'Requires game restart',

            -- Miscellaneous

            bunc_copied = 'Copied!',
            bunc_nothing = 'Nothing',
            bunc_chips = 'Chips',
            bunc_loop = 'Loop!',
            bunc_chance = 'Chance',
            bunc_word_and = 'and',
            bunc_debuffed = 'Debuffed!',
            bunc_pew = 'Pew!',
            bunc_declined = 'Declined...',
            bunc_accepted = 'Accepted!',
            bunc_ouch = 'OUCH!',
            bunc_mysterious_tarot = 'Tarot?',
            bunc_mysterious_polymino = 'Polymino?',
            bunc_most_played_rank = '(most played rank)',
            bunc_least_played_hand = '(least played hand)',
            bunc_blade = '(1.5X blind score)',
            bunc_exceeded_score = 'Exceeded the limit!',

            -- Consumable types

            k_polymino = 'Polymino',
            b_polymino_cards = 'Polymino Cards',

            -- Booster types

            k_bunc_blind_pack = 'Blind Pack',
            k_bunc_virtual_pack = 'Virtual Pack'
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Fleuron',
            bunc_Halberds = 'Halberd'
        },
        suits_plural = {
            bunc_Fleurons = 'Fleurons',
            bunc_Halberds = 'Halberds'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Spectrum',
            ['bunc_Straight Spectrum'] = 'Straight Spectrum',
            ['bunc_Straight Spectrum (Royal)'] = 'Royal Spectrum',
            ['bunc_Spectrum House'] = 'Spectrum House',
            ['bunc_Spectrum Five'] = 'Spectrum Five',
            ['bunc_Deal'] = 'Deal'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '5 cards with different suits'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5 cards in a row (consecutive ranks),',
                [2] = 'each with a different suit'
            },
            ['bunc_Spectrum House'] = {
                [1] = 'A Three of a Kind and a Pair with',
                [2] = 'each card having a different suit'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '5 cards with the same rank,',
                [2] = 'each with a different suit'
            },
            ['bunc_Deal'] = {
                [1] = '5 ranks picked',
                [2] = 'by Registration Plate'
            }
        },
        labels = {

            -- Editions

            bunc_glitter = 'Glitter',
            bunc_fluorescent = 'Fluorescent',

            -- Stickers

            bunc_scattering = 'Scattering',
            bunc_hindered = 'Hindered',
            bunc_reactive = 'Reactive'
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} extra chips this round'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Linked{} in this group:'}},
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Linked{} in drawn group'}},
            bunc_exotic_cards = {
                ['name'] = 'Exotic cards',
                ['text'] = {
                    [1] = 'Cards with',
                    [2] = '{C:bunc_fleurons}Fleuron{} or {C:bunc_halberds}Halberd{} suit'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = 'Foil',
                ['text'] = {
                    [1] = 'Create a {C:attention}Chips Tag'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = 'Holographic',
                ['text'] = {
                    [1] = 'Create a {C:attention}Mult Tag'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = 'Polychrome',
                ['text'] = {
                    [1] = 'Create a {C:attention}Megamult Tag'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = 'Glitter',
                ['text'] = {
                    [1] = 'Create a {C:attention}Ultrachips Tag'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Not Discovered',
                ['text'] = {
                    [1] = 'Purchase or use',
                    [2] = 'this card in an',
                    [3] = 'unseeded run to',
                    [4] = 'learn what it does'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = 'Blind Pack',
                ['text'] = {
                    [1] = 'Choose one of up to',
                    [2] = '{C:attention}#1# Boss Blinds{} to',
                    [3] = 'replace on this Ante'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = 'Virtual Pack',
                ['text'] = {
                    [1] = 'Draw the whole deck and',
                    [2] = 'choose {C:attention}#1#{} of up to',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                    [4] = 'be used immediately'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = 'Jumbo Virtual Pack',
                ['text'] = {
                    [1] = 'Draw the whole deck and',
                    [2] = 'choose {C:attention}#1#{} of up to',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                    [4] = 'be used immediately'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = 'Mega Virtual Pack',
                ['text'] = {
                    [1] = 'Draw the whole deck and',
                    [2] = 'choose {C:attention}#1#{} of up to',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                    [4] = 'be used immediately'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Scattering',
                ['text'] = {
                    [1] = 'Destroys random',
                    [2] = 'Joker when sold',
                    [3] = 'or destroyed'
                }
            },
            bunc_hindered = {
                ['name'] = 'Hindered',
                ['text'] = {
                    [1] = 'Stays in place until',
                    [2] = 'the end of the round',
                    [3] = 'after being sold'
                }
            },
            bunc_reactive = {
                ['name'] = 'Reactive',
                ['text'] = {
                    [1] = 'Debuffed if no blinds',
                    [2] = 'are skipped this Ante'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Cyan Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Cyan',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Pink Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Pink',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Magenta Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Magenta',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            }
        },

        -- Consumables

        Tarot = {
            c_bunc_sky = {
                ['name'] = 'The Sky',
                ['text'] = {
                    [1] = 'Converts up to',
                    [2] = '{C:attention}#1#{} selected cards',
                    [3] = 'to {C:bunc_fleurons}Fleurons{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = 'The Abyss',
                ['text'] = {
                    [1] = 'Converts up to',
                    [2] = '{C:attention}#1#{} selected cards',
                    [3] = 'to {C:bunc_halberds}Halberds{}'
                }
            },
        },
        Planet = {
            c_bunc_quaoar = {
                ['name'] = 'Quaoar'
            },
            c_bunc_haumea = {
                ['name'] = 'Haumea'
            },
            c_bunc_sedna = {
                ['name'] = 'Sedna'
            },
            c_bunc_makemake = {
                ['name'] = 'Makemake'
            },
        },
        Spectral = {
            c_bunc_cleanse = {
                ['name'] = 'Cleanse',
                ['text'] = {
                    [1] = 'Add {C:dark_edition}Fluorescent{} to',
                    [2] = '{C:attention}#1#{} selected cards in hand'
                }
            },
            c_bunc_the_8 = {
                ['name'] = 'The 8',
                ['text'] = {
                    [1] = '{C:attention}Link together{} all',
                    [2] = 'unlinked cards in hand',
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'The I',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'that share the {C:attention}same rank or suit'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'The O',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 2 cards share the {C:attention}same property',
                    [3] = '{C:inactive}(rank or suit){} and the other 2 cards',
                    [4] = 'share {C:attention}different type{} of the {C:attention}same property'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'The T',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same property',
                    [3] = '{C:inactive}(rank or suit){} and the other card that',
                    [4] = '{C:attention}does not share{} the {C:attention}same property{}',
                    [5] = 'with the other cards'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'The S',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where {C:attention}2 groups{} of 2 cards share',
                    [3] = 'the {C:attention}same rank{} within each group, with one',
                    [4] = 'card from each group sharing a {C:attention}common suit'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'The Z',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where {C:attention}2 groups{} of 2 cards share',
                    [3] = 'the {C:attention}same suit{} within each group, with one',
                    [4] = 'card from each group sharing a {C:attention}common rank'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'The J',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same rank',
                    [3] = 'and the other card that shares',
                    [4] = 'a {C:attention}common suit{} while',
                    [5] = 'not sharing the same rank'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'The L',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same suit',
                    [3] = 'and the other card that shares',
                    [4] = 'a {C:attention}common rank{} while',
                    [5] = 'not sharing the same suit'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'The /',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where all the cards have a',
                    [3] = '{C:attention}different property{} {C:inactive}(rank and suit)'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Luchador',
                ['text'] = {
                    [1] = 'Sell this card to',
                    [2] = 'create a free',
                    [3] = '{C:attention}Breaking Tag'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Red Card',
                ['text'] = {
                    [1] = 'This Joker gains {C:red}+#1#{} Mult',
                    [2] = 'per skipped choice',
                    [3] = 'in {C:attention}Booster Pack{}',
                    [4] = '{C:inactive}(Currently {C:red}+#2#{C:inactive} Mult)'
                }
            },

            -- Main Jokers

            j_bunc_cassette = {
                ['name'] = 'Cassette',
                ['text'] = {
                    [1] = 'On discard, flip Joker to the other side',
                    [2] = '{C:attention}A side:{} Cards with light suit',
                    [3] = 'give {C:chips}+#1#{} Chips when scored',
                    [4] = '{C:attention}B side:{} Cards with dark suit',
                    [5] = 'give {C:mult}+#2#{} Mult when scored'
                    -- TODO would be good to have a line for the side
                    -- or colorize the active side
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Mosaic Joker',
                ['text'] = {
                    [1] = 'Played {C:attention}Stone Cards',
                    [2] = 'give {C:mult}+#1#{} Mult',
                    [3] = 'when scored'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Stone{} cards'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Voxel Joker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult, {X:mult,C:white}-X#2#{} Mult for each',
                    [2] = '{C:attention}Enhanced card{} in your {C:attention}full deck{}',
                    [3] = '{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = 'Have at least {C:attention}#1#',
                    [2] = '{E:1,C:attention}Enhanced{} cards in',
                    [3] = 'your deck'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Crop Circles',
                ['text'] = {
                    [1] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                    [2] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                    [3] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Crop Circles',
                ['text'] = {
                    [1] = 'Base suit {C:bunc_fleurons}Fleurons{} give {C:mult}+4{} Mult,',
                    [2] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                    [3] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                    [4] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
                }
            },
            j_bunc_xray = {
                ['name'] = 'X-Ray',
                ['text'] = {
                    [1] = 'This Joker gains {X:mult,C:white}X#1#{} Mult',
                    [2] = 'per card drawn face down',
                    [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = 'Complete the {E:1,C:attention}X-ray Vision',
                    [2] = 'challenge'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Dread',
                ['text'] = {
                    [1] = 'After scoring your {C:attention}last{} hand,',
                    [2] = 'upgrade it by {C:attention}#1# levels{}',
                    [3] = 'and {C:attention}destroy{} scored cards',
                    [4] = '{C:inactive,s:0.8}All gained by this Joker levels',
                    [5] = '{C:inactive,s:0.8}are lost on its removal'
                },
                ['unlock'] = {
                    [1] = 'Reduce your deck',
                    [2] = 'by at least {E:1,C:attention}#1#{} cards',
                    [3] = 'in one round'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Prehistoric Joker',
                ['text'] = {
                    [1] = 'Played cards that share',
                    [2] = 'both {C:attention}rank and suit{} with an',
                    [3] = '{C:attention}already-scored card{} this round',
                    [4] = 'give {C:mult}+#1#{} Mult'
                },
                ['unlock'] = {
                    [1] = 'Play a',
                    [2] = '{E:1,C:attention}Flush Five'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Linocut Joker',
                ['text'] = {
                    [1] = 'When you play exactly {C:attention}2{} cards',
                    [2] = 'that form a {C:attention}Pair{},',
                    [3] = "convert the {C:attention}left{} card's suit",
                    [4] = "into the {C:attention}right{} card's suit",
                    [5] = '{C:inactive}(Drag to rearrange)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'Ghost Print',
                ['text'] = {
                    [1] = 'Gives Chips and Mult',
                    [2] = 'from last {C:attention}hand type{} played',
                    [3] = '{C:inactive}(Last poker hand: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Loan Shark',
                ['text'] = {
                    [1] = 'Gain {C:money}$#1#',
                    [2] = 'when acquired...'
                },
                ['unlock'] = {
                    [1] = 'Spend at least {E:1,C:attention}$100',
                    [2] = 'during a single round'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Loan Shark',
                ['text'] = {
                    [1] = 'Gain {C:money}$#1#{} when acquired,',
                    [2] = 'set sell price to {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Basement Joker',
                ['text'] = {
                    [1] = 'When {C:attention}Boss Blind{} is defeated,',
                    [2] = 'create a {C:spectral}Spectral{} card',
                    [3] = '{C:inactive}(Must have room)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Shepherd Joker',
                ['text'] = {
                    [1] = 'This Joker gains {C:chips}+#1#{} Chips',
                    [2] = 'when played hand contains a {C:attention}Pair',
                    [3] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Joker Knight',
                ['text'] = {
                    [1] = 'When {C:attention}Blind{} is selected, {C:attention}shuffle{} all Jokers',
                    [2] = 'and this Joker gains {C:mult}+#1#{} Mult,',
                    [3] = '{C:red}resets{} when any Joker is rearranged',
                    [4] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = 'Defeat {E:1,C:attention}Amber Acorn',
                    [2] = 'without disabling it'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Joker Man & Jester Boy Trading Card No. 54',
                ['text'] = {
                    [1] = '{C:attention}Standard Packs{} contain',
                    [2] = 'only {C:attention}Enhanced cards{}'
                },
                ['unlock'] = {
                    [1] = 'Open {E:1,C:attention}#1#',
                    [2] = 'Booster Packs',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Dogs Playing Poker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult if every scored',
                    [2] = 'rank is {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Righthook Joker',
                ['text'] = {
                    [1] = 'Retrigger rightmost scored card',
                    [2] = 'one time per remaining {C:blue}hand{}',
                },
                ['unlock'] = {
                    [1] = 'Retrigger played',
                    [2] = 'card at least',
                    [3] = '{E:1,C:attention}#1# times{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Fiendish Joker',
                ['text'] = {
                    [1] = 'Double all sources of money,',
                    [2] = '{C:green}#1# in #2#{} chance to pay out',
                    [3] = 'with {C:money}$1{} instead'
                },
                ['unlock'] = {
                    [1] = 'Complete the {E:1,C:attention}Double or Nothing',
                    [2] = 'challenge'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Carnival',
                ['text'] = {
                    [1] = 'After defeating {C:attention}Boss Blind{},',
                    [2] = '{C:attention}destroy{} a random Joker to',
                    [3] = 'go one Ante back, next time',
                    [4] = 'works only on a greater Ante'
                    -- TODO needs a line for whether it's active / ante it will be active
                },
                ['unlock'] = {
                    [1] = 'Reach Ante',
                    [2] = 'level {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Sledgehammer',
                ['text'] = {
                    [1] = '{C:attention}Glass Cards{} give +{X:mult,C:white}X#1#{} Mult',
                    [2] = 'but are guaranteed to break'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Glass{} cards'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Doorhanger',
                ['text'] = {
                    [1] = '{C:blue}Common{} Jokers do not appear',
                    [2] = '{s:0.8}Different rarities appear instead'
                },
                ['unlock'] = {
                    [1] = 'Win a run without',
                    [2] = 'ever having',
                    [3] = '{C:attention,E:1}Common{} Jokers'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Fingerprints',
                ['text'] = {
                    [1] = 'Scored cards in {C:attention}winning hand{}',
                    [2] = 'gain {C:chips}+#1#{} Chips for',
                    [3] = 'next round only',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zero Shapiro',
                ['text'] = {
                    [1] = 'This Joker gains {C:attention}#1#X{} to',
                    [2] = '{C:green,E:1,S:1.1}probabilities{} {C:attention}this round{} when a',
                    [3] = 'card with {C:attention}no{}, {C:attention}zero{}, or {C:attention}non-count{}',
                    [4] = 'rank scores {C:inactive}(K, Q, J, 0, Rankless)',
                    [5] = '{C:inactive}(Currently {C:attention}X#2#{C:inactive} to {C:green,E:1,S:1.1}probabilities{C:inactive})'
                    -- TODO not sure how to word non-countable
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = '{C:attention}Debuffed{} cards earn',
                    [2] = '{C:money}$#1#{} when scored'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Bierdeckel',
                ['text'] = {
                    [1] = 'Cards in hand gain',
                    [2] = '{C:chips}+#1#{} Chips this round',
                    [3] = 'after play or discard'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = 'Registration Plate',
                ['text'] = {
                    [1] = '#1#',
                    [2] = 'has the Chips and Mult of all',
                    [3] = '{C:attention}poker hands{} played this game',
                    [4] = '{s:0.8}Combination changes every round'
                },
                ['unlock'] = {
                    [1] = 'Complete the {E:1,C:attention}15 Minute City',
                    [2] = 'challenge'
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Slothful Joker',
                ['text'] = {
                    [1] = 'Played {C:attention}Wild Cards',
                    [2] = 'give {C:mult}+#1#{} Mult',
                    [3] = 'when scored'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Wild{} cards'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Neon Joker',
                ['text'] = {
                    [1] = 'This Joker gains {X:mult,C:white}X#1#{} Mult',
                    [2] = 'per {C:attention}debuffed{} card scored',
                    [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Debuffed{} cards'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Gameplan',
                ['text'] = {
                    [1] = '{C:attention}Jokers{} next to this Joker',
                    [2] = 'are {C:red}debuffed{} and',
                    [3] = 'give {C:mult}+#1#{} Mult'
                },
                ['unlock'] = {
                    [1] = 'Defeat {E:1,C:attention}Verdant Leaf',
                    [2] = 'without disabling it'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Conquest',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips,',
                    [2] = '{C:red}debuffs{} random Joker',
                    [3] = 'when {C:attention}Blind{} is selected'
                },
                ['unlock'] = {
                    [1] = 'Defeat {E:1,C:attention}Crimson Heart',
                    [2] = 'without disabling it'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Hierarchy of Needs',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult per',
                    -- TODO do wilds count, or base suit only?
                    [2] = '{C:attention}2-Ace{} of the same suit',
                    [3] = 'in your {C:attention}full deck',
                    [4] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Dwarven Joker',
                ['text'] = {
                    [1] = '{C:attention}Stone Cards{} held in hand',
                    [2] = 'have the abilities of',
                    [3] = '{C:attention}Steel{} and {C:attention}Gold Cards'
                },
                ['unlock'] = {
                    [1] = 'Play a hand that',
                    [2] = 'contains {E:1,C:attention}Stone{}, {E:1,C:attention}Steel,',
                    [3] = 'and {E:1,C:attention}Gold{} cards'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Aristocrat',
                ['text'] = {
                    [1] = 'Choose an extra card',
                    [2] = 'from {C:attention}Booster Packs'
                },
                ['unlock'] = {
                    [1] = 'Win a run without',
                    [2] = 'ever opening',
                    [3] = '{C:attention,E:1}Booster Packs'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Metallurgist',
                ['text'] = {
                    [1] = '{C:attention}Gold Cards{} give {C:mult}+#1#{} Mult',
                    [2] = 'while held in hand'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Juggalo',
                ['text'] = {
                    [1] = 'Adds {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    [2] = '{C:dark_edition}Polychrome{}, or {C:dark_edition}Glitter{} edition',
                    [3] = 'to a random {C:attention}consumable{}',
                    [4] = 'when {C:attention}Blind{} is selected'
                },
                ['unlock'] = {
                    [1] = 'Use {C:attention,E:1}#1#{} consumables',
                    [2] = 'with {C:attention,E:1}Editions'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Head in the Clouds',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance to upgrade',
                    [2] = '{C:attention}High Card{} when you',
                    [3] = 'upgrade any {C:attention}poker hand'
                },
                ['unlock'] = {
                    [1] = 'Win a run with',
                    [2] = '{C:attention,E:1}High Card{} being the',
                    [3] = 'most leveled poker hand'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Headshot',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult if played hand',
                    [2] = 'contains only a single',
                    [3] = 'scoring {C:attention}face card{}'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Trigger Finger',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult,',
                    [2] = '{C:attention}selecting{} a card has',
                    [3] = 'a {C:green}#2# in #3#{} chance to',
                    [4] = 'play selected cards'
                },
                ['unlock'] = {
                    [1] = 'Defeat {E:1,C:attention}Cerulean Bell',
                    [2] = 'without disabling it'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Hopscotch',
                ['text'] = {
                    [1] = 'Gain {C:red}+#1#{} discard',
                    [2] = 'if played hand',
                    [3] = 'contains a {C:attention}Straight{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Pawn',
                ['text'] = {
                    [1] = 'Cards of the {C:attention}lowest{}',
                    [2] = 'rank in your full deck',
                    [3] = '{C:attention}increase in rank{} when scored'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Puzzle Board',
                ['text'] = {
                    [1] = 'When {C:tarot}Tarot{} card is used,',
                    [2] = '{C:green}#1# in #2#{} chance to add',
                    [3] = '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or',
                    [4] = '{C:dark_edition}Polychrome{} edition to a random',
                    [5] = 'selected playing card'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Vandalism',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance for',
                    [2] = 'cards to be drawn face down',
                    [3] = 'Face down cards give',
                    [4] = '{X:mult,C:white}X#3#{} Mult when scored'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Flipped{} cards'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Protester',
                ['text'] = {
                    [1] = 'Adds {C:attention}#1#X{} the highest rank',
                    [2] = 'discarded this round to Chips',
                    [3] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Doodle',
                ['text'] = {
                    [1] = '{C:attention}Copy{} first consumable',
                    [2] = 'used this round',
                    [3] = '{C:inactive}(Must have room)'
                },
                ['unlock'] = {
                    [1] = 'Win {C:attention,E:1}#1#{} runs',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Disproportionality',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Running Joke',
                ['text'] = {
                    [1] = 'Create a {C:dark_edition}Negative',
                    [2] = '"{C:attention}Joker{}" at the',
                    [3] = 'start of every shop'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'On Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult if',
                    [2] = 'played hand contains a {C:attention}Straight{}',
                    [3] = 'with a scoring {C:attention}face card'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult if no',
                    [2] = '{C:attention}Enhanced cards{}',
                    [3] = 'are scored'
                },
                ['unlock'] = {
                    [1] = 'Win a run without ever',
                    [2] = 'having {C:attention,E:1}Enhanced cards'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Critic',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Mult if played hand's",
                    [2] = 'current score is',
                    [3] = '{C:attention}less than 1/#2#{} of',
                    [4] = "blind's required score"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Cellphone',
                ['text'] = {
                    [1] = '{C:attention}Return{} scored cards to hand',
                    [2] = 'after first play of round',
                    [3] = 'if no discards were used'
                }
            },
            j_bunc_wino = {
                ['name'] = 'Wino',
                ['text'] = {
                    [1] = 'Played cards with',
                    [2] = '{C:hearts}Heart{} and {C:diamonds}Diamond{} suit',
                    [3] = 'give {C:chips}+#1#{} Chips when scored'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Bounty Hunter',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult for',
                    [2] = 'each {C:money}$1{} below {C:money}$0',
                    [3] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = 'Have less than {E:1,C:attention}$#1#',
                    [2] = 'during a single run'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Mousetrap',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips,',
                    [2] = '{C:green}#2# in #3#{} chance to',
                    [3] = '{C:attention}lose{} one hand instead'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'The Joker',
                ['text'] = {
                    [1] = 'After play, each scored',
                    [2] = 'card without an enhancement has',
                    [3] = '{C:green}#1# in #2#{} chance to be destroyed',
                },
                ['unlock'] = {
                    [1] = 'Discover every',
                    [2] = '{C:attention}Boss Blind'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangram',
                ['text'] = {
                    [1] = 'When a {C:attention}7{} is scored,',
                    [2] = '{C:mult}+#1#{} Mult times the',
                    [3] = 'amount of scored {C:attention}7s{}'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Domino',
                ['text'] = {
                    [1] = 'Upon {C:attention}acquiring{} or {C:attention}using',
                    [2] = 'a card from shop or',
                    [3] = 'Booster Pack, acquire {C:attention}2',
                    [4] = 'adjacent cards if possible'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = 'Glue Gun',
                ['text'] = {
                    [1] = 'Sell this card to',
                    [2] = '{C:attention}link together{} #1# selected',
                    [3] = 'playing cards'
                }
            },
            j_bunc_taped = {
                ['name'] = 'Taped Jokers',
                ['text'] = {
                    [1] = '{C:attention}Link together{} all',
                    [2] = 'played cards in first',
                    [3] = 'scored hand during',
                    [4] = '{C:attention}Boss Blind{}'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = 'Rubber Band Ball',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult per {C:attention}link{}',
                    [2] = 'created this run',
                    [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
                }
            },
            j_bunc_headache = {
                ['name'] = 'Headache',
                ['text'] = {
                    [1] = 'Create a {C:bunco_virtual_dark}Polymino{} card',
                    [2] = 'for each {C:attention}#1#{} playing cards',
                    [3] = 'destroyed {C:inactive}(Must have room)',
                    [4] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# cards destroyed)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = 'Games Collector',
                ['text'] = {
                    [1] = 'Gains {C:chips}+#1#{} Chips',
                    [2] = 'when a linked group',
                    [3] = 'is {C:attention}drawn{} to hand',
                    [4] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },
            j_bunc_jumper = {
                ['name'] = 'Jumper',
                ['text'] = {
                    [1] = 'Gains {C:chips}+#1#{} Chips',
                    [2] = 'if played hand',
                    [3] = 'contains a {C:attention}Flush{}',
                    [4] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Zealous Joker',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult if played',
                    [2] = 'hand contains',
                    [3] = 'a {C:attention}Spectrum'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Lurid Joker',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips if played',
                    [2] = 'hand contains',
                    [3] = 'a {C:attention}Spectrum'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Envious Joker',
                ['text'] = {
                    [1] = 'Played cards with',
                    [2] = '{C:bunc_fleurons}Fleuron{} suit give',
                    [3] = '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_bunc_proud = {
                ['name'] = 'Proud Joker',
                ['text'] = {
                    [1] = 'Played cards with',
                    [2] = '{C:bunc_halberds}Halberd{} suit give',
                    [3] = '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Wishalloy',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance for',
                    [2] = 'played {C:bunc_fleurons}Fleurons{} to',
                    [3] = 'earn {C:money}${} equal to',
                    [4] = "card's scored Chips"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Unobtanium',
                ['text'] = {
                    [1] = 'Played cards with',
                    [2] = '{C:bunc_halberds}Halberd{} suit give',
                    [3] = '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult',
                    [4] = "when scored"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'The Dynasty',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult if played',
                    [2] = 'hand contains',
                    [3] = 'a {C:attention}Spectrum'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Magic Wand',
                ['text'] = {
                    [1] = 'This Joker gains {X:mult,C:white}X#1#{} Mult',
                    [2] = 'per {C:attention}consecutive{} played hand',
                    [3] = 'containing a {C:attention}Spectrum{}',
                    [4] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Starfruit',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance to level up played',
                    [2] = '{C:attention}poker hand{} if it contains a {C:attention}Spectrum',
                    [3] = '{C:green}#1# in #3#{} chance to destroy this Joker at end of round',
                    [4] = 'if a {C:attention}Spectrum{}-containing hand was played this round'
                    -- TODO this joker is way too long
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Fondue',
                ['text'] = {
                    [1] = 'Scored cards in the',
                    [2] = '{C:attention}first hand{} of round are',
                    [3] = 'converted to {C:bunc_fleurons}Fleurons'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Myopia',
                ['text'] = {
                    [1] = '{C:spades}Spades{} and {C:clubs}Clubs{}',
                    [2] = 'count as {C:bunc_halberds}Halberds'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Astigmatism',
                ['text'] = {
                    [1] = '{C:hearts}Hearts{} and {C:diamonds}Diamonds{}',
                    [2] = 'count as {C:bunc_fleurons}Fleurons'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Roy G. Biv',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance to add',
                    [2] = '{C:dark_edition}Polychrome{} edition',
                    [3] = 'to a random scored card if',
                    [4] = 'hand contains a {C:attention}Spectrum'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult per {C:bunco_exotic}Exotic card{}',
                    [2] = 'in your {C:attention}full deck',
                    [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'The Paling',
                ['text'] = {
                    [1] = 'Playing or Discarding costs',
                    [2] = 'both hand and discard'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = 'The Umbrella',
                ['text'] = {
                    [1] = 'After Play, flip all',
                    [2] = 'cards in hand face down'
                }
            },
            bl_bunc_tine = {
                ['name'] = 'The Tine',
                ['text'] = {
                    [1] = 'Each #1# is debuffed'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'The Swing',
                ['text'] = {
                    [1] = 'After Play or Discard,',
                    [2] = 'flip all cards'
                }
            },
            bl_bunc_miser = {
                ['name'] = 'The Miser',
                ['text'] = {
                    [1] = 'Skip the shop after',
                    [2] = 'defeating this blind'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'The Gate',
                ['text'] = {
                    [1] = 'Cards cannot',
                    [2] = 'be deselected'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'The Flame',
                ['text'] = {
                    [1] = 'All Enhanced cards',
                    [2] = 'are debuffed'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'The Mask',
                ['text'] = {
                    [1] = '#1# has the base',
                    [2] = 'Chips and Mult of #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'The Bulwark',
                ['text'] = {
                    [1] = 'Playing a #1# discards',
                    [2] = 'all cards in hand'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'The Knoll',
                ['text'] = {
                    [1] = 'Having more than $5',
                    [2] = 'debuffs first hand drawn'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'The Stone',
                ['text'] = {
                    [1] = '+1X Base score for',
                    [2] = 'every $10 held'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'The Sand',
                ['text'] = {
                    [1] = '+1X Base score for',
                    [2] = 'every tag held'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'The Blade',
                ['text'] = {
                    [1] = 'First time score exceeds #1#',
                    [2] = 'makes played hand score 0'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'The Claw',
                ['text'] = {
                    [1] = 'Discarded cards',
                    [2] = 'go back into the deck'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'The Veil',
                ['text'] = {
                    [1] = 'Selected cards are',
                    [2] = 'flipped face down'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'The Cadaver',
                ['text'] = {
                    [1] = 'Must not play face cards'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'The Wind',
                ['text'] = {
                    [1] = 'Leftmost Joker',
                    [2] = 'is debuffed'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'The Prince',
                ['text'] = {
                    [1] = 'All Jokers are debuffed',
                    [2] = 'until first hand is played'
                }
            },
            bl_bunc_depths = {
                ['name'] = 'The Depths',
                ['text'] = {
                    [1] = 'After Play, gain Eternal,',
                    [2] = 'Perishable, or Scattering tag'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'The Chasm',
                ['text'] = {
                    [1] = 'After Play, gain Hindered,',
                    [2] = 'Reactive, or Rental tag'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Chartreuse Crown',
                ['text'] = {
                    [1] = 'All Spade, Heart, Club, and Diamond',
                    [2] = 'base suit cards are debuffed'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Vermilion Trident',
                ['text'] = {
                    [1] = 'No shops this Ante'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Indigo Tower',
                ['text'] = {
                    [1] = 'Cards not played previously',
                    [2] = 'this Ante are debuffed'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Magenta Dagger',
                ['text'] = {
                    [1] = 'Discarding cards plays them',
                    [2] = 'and subtracts scored value'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Turquoise Shield',
                ['text'] = {
                    [1] = 'Excess score this Ante adds',
                    [2] = "to this blind's required score"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Fairy Deck',
                ['text'] = {
                    [1] = 'After defeating each',
                    [2] = '{C:attention}Boss Blind{}, add #1#',
                    [3] = 'random {C:bunco_exotic,T:bunc_exotic_cards}#2#',
                    [4] = 'to your deck'
                },
                ['unlock'] = {
                    [1] = 'Play {E:1,C:attention}5 different suits',
                    [2] = 'in a single hand'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Digital Deck',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}Polymino{} cards may',
                    [2] = 'appear in the shop,',
                    [3] = "start with {C:bunco_virtual_dark,T:c_bunc_the_i}The I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Boss Tag',
                ['text'] = {
                    [1] = 'Gives a free',
                    [2] = '{C:attention}Blind Pack'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Double Tag',
                ['text'] = {
                    [1] = 'Gives a copy of the',
                    [2] = 'next selected {C:attention}Tag{}',
                    [3] = '{s:0.6,C:attention}Double and Triple Tags{s:0.8} excluded'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Breaking Tag',
                ['text'] = {
                    [1] = 'Disables the',
                    [2] = '{C:attention}Boss Blind{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = 'Arcade Tag',
                ['text'] = {
                    [1] = 'Gives a free',
                    [2] = '{C:bunco_virtual_dark}Mega Virtual Pack'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Triple Tag',
                ['text'] = {
                    [1] = 'Gives two copies of the',
                    [2] = 'next selected {C:attention}Tag{}',
                    [3] = '{s:0.8,C:attention}Triple Tag{s:0.8} excluded'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Glitter Tag',
                ['text'] = {
                    [1] = 'Next base edition shop',
                    [2] = 'Joker is free and',
                    [3] = 'becomes {C:dark_edition}Glitter'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Fluorescent Tag',
                ['text'] = {
                    [1] = 'Next base edition shop',
                    [2] = 'Joker is free and',
                    [3] = 'becomes {C:dark_edition}Fluorescent'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Chips Tag',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips next hand'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Mult Tag',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult next hand',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Megamult Tag',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult next hand',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Ultrachips Tag',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Chips next hand'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Filigree Tag',
                ['text'] = {
                    [1] = 'Next {C:attention}Standard Pack{} opened',
                    [2] = 'has only {C:bunco_exotic}Exotic cards'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Eternal Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Eternal{} sticker'
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Perishable Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Perishable{} sticker'
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Scattering Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Scattering{} sticker'
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Hindered Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Hindered{} sticker'
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Reactive Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Reactive{} sticker'
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Rental Tag',
                ['text'] = {
                    [1] = 'Next shop Joker',
                    [2] = 'will gain {C:attention}Rental{} sticker'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Glitter',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Chips'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Fluorescent',
                ['text'] = {
                    [1] = 'Cannot be flipped, debuffed',
                    [2] = 'or forced to be selected'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Lamination',
                ['text'] = {
                    [1] = 'Consumables in',
                    [2] = '{C:attention}Booster Packs{} may',
                    [3] = 'appear with {C:dark_edition}Edition'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Supercoating',
                ['text'] = {
                    [1] = 'All consumables in',
                    [2] = '{C:attention}Booster Packs{} will',
                    [3] = 'appear with {C:dark_edition}Edition'
                },
                ['unlock'] = {
                    [1] = 'Use {C:attention,E:1}#1#{} consumables',
                    [2] = 'with {C:attention,E:1}Editions',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Hedge Trimmer',
                ['text'] = {
                    [1] = "Reduce blind's score",
                    [2] = 'by {C:attention}#1#%{} every hand played'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Chainsaw',
                ['text'] = {
                    [1] = 'All required scores',
                    [2] = 'reduced by {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Reduce blind's score using",
                    [2] = 'Hedge Trimmer',
                    [3] = 'a total of {C:attention,E:1}#1#{} times',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Cups 'n' Balls",
                ['text'] = {
                    [1] = '{C:attention}+1{} Booster Pack',
                    [2] = 'slot available in shop'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Shell Game',
                ['text'] = {
                    [1] = 'Reroll {C:attention}contents',
                    [2] = 'of Booster Packs',
                    [3] = '{C:attention}1{} time per pack'
                },
                ['unlock'] = {
                    [1] = 'Open {E:1,C:attention}#1#',
                    [2] = 'Booster Packs',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = 'Disguise',
                ['text'] = {
                    [1] = '{C:attention}Blind Packs{} may',
                    [2] = 'appear in the shop'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Masquerade',
                ['text'] = {
                    [1] = 'All {C:attention}Blind Packs{} in',
                    [2] = 'the shop are free'
                },
                ['unlock'] = {
                    [1] = 'Replace {E:1,C:attention}#1#{}',
                    [2] = 'Blinds with Blinds',
                    [3] = 'from Blind Pack',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = 'Fanny Pack',
                ['text'] = {
                    [1] = '{C:green}#1# in #2#{} chance to',
                    [2] = 'gain a {C:attention}Double Tag',
                    [3] = 'each time a blind',
                    [4] = 'is {C:attention}skipped'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = 'Pin Collector',
                ['text'] = {
                    [1] = 'All new {C:attention}Double Tags',
                    [2] = 'appear as {C:attention}Triple Tags'
                },
                ['unlock'] = {
                    [1] = 'Skip a total of',
                    [2] = '{E:1,C:attention}#1#{} blinds',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = 'Arcade Machine',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}Virtual Packs',
                    [2] = 'appear {C:attention}4X{} more often'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}Polymino{} cards allow to',
                    [2] = 'link {C:attention}one more{} card',
                    [3] = '{s:0.6,C:inactive}Extra card can be of any property'
                },
                ['unlock'] = {
                    [1] = 'Create a total of',
                    [2] = '{E:1,C:attention}#1#{} linked groups',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Cyan Stake',
                ['text'] = {
                    [1] = 'Shop can have {C:attention}Scattering{} Jokers',
                    [2] = '{C:inactive,s:0.8}(Destroys random Joker when sold or destroyed)'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Pink Stake',
                ['text'] = {
                    [1] = 'Shop can have {C:attention}Hindered{} Jokers',
                    [2] = '{C:inactive,s:0.8}(Stays in place until the end of the round after being sold)'
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Magenta Stake',
                ['text'] = {
                    [1] = 'Shop can have {C:attention}Reactive{} Jokers',
                    [2] = '{C:inactive,s:0.8}(Debuffed if no blinds are skipped this Ante)'
                }
            }
        }
    }
}