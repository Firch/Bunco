return {
    misc = {
        dictionary = {

            -- Config values

            bunc_colorful_finishers = 'Colorful Final Blinds',
            bunc_high_quality_shaders = 'High Quality Shaders',
            bunc_double_lovers = 'Double Lovers',
            bunc_jokerlike_consumable_editions = 'Editions in Consumables Slot',
            bunc_fixed_badges = 'Fixed Badges',
            bunc_fixed_sprites = 'Fixed Sprites',
            bunc_gameplay_reworks = 'Gameplay Reworks',

            bunc_requires_restart = '(Requires game restart)',

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
            b_polymino_cards = 'Polymino Cards'

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

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Not Discovered',
                ['text'] = {
                    [1] = 'Purchase or use',
                    [2] = 'this card in an',
                    [3] = 'unseeded run to',
                    [4] = 'learn what it does'
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
            }
        }
    }
}