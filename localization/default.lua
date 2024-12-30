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
            }
        }
    }
}