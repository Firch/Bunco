------------------------------
-- JokerDisplay Integration --
------------------------------

local jd_def = JokerDisplay.Definitions

jd_def["j_bunc_cassette"] = { -- Cassette
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips_mult" }
    },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
            colour = G.C.ORANGE
        },
        { text = ")" },
    },
    calc_function = function(card)
        local chips_mult = 0
        local side = card.ability.extra.side
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if side == 'B' then
                    if scoring_card:is_suit('Spades') or scoring_card:is_suit('Clubs') or scoring_card:is_suit('bunc_Halberds') then
                        chips_mult = chips_mult +
                            card.ability.extra.mult *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                else
                    if scoring_card:is_suit('Hearts') or scoring_card:is_suit('Diamonds') or scoring_card:is_suit('bunc_Fleurons') then
                        chips_mult = chips_mult +
                            card.ability.extra.chips *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        end
        card.joker_display_values.chips_mult = chips_mult
        card.joker_display_values.localized_text = side == "B" and "Dark Suits" or "Light Suits"
    end,
    style_function = function(card, text, reminder_text, extra)
        if text and text.children[1] and text.children[2] then
            text.children[1].config.colour = card.ability.extra.side == "B" and G.C.MULT or G.C.CHIPS
            text.children[2].config.colour = card.ability.extra.side == "B" and G.C.MULT or G.C.CHIPS
        end
        return false
    end
}
jd_def["j_bunc_mosaic"] = { -- Mosaic Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
            colour = G.C.ORANGE
        },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card.config.center == G.P_CENTERS.m_stone then
                mult = mult +
                    card.ability.extra.mult *
                    JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize { type = 'name_text', set = 'Enhanced', key = "m_stone" }
    end
}
jd_def["j_bunc_voxel"] = { -- Voxel Joker
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    }
}
jd_def["j_bunc_crop_circles"] = { -- Crop Circles
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center ~= G.P_CENTERS.m_stone then
                    local retriggers = JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    if scoring_card.base.suit == ('bunc_Fleurons') then
                        if scoring_card:get_id() == 8 then
                            mult = mult + 6 * retriggers
                        elseif scoring_card:get_id() == 12 or scoring_card:get_id() == 10 or scoring_card:get_id() == 9 or scoring_card:get_id() == 6 then
                            mult = mult + 5 * retriggers
                        else
                            mult = mult + 4 * retriggers
                        end
                    elseif scoring_card.base.suit == ('Clubs') then
                        if scoring_card:get_id() == 8 then
                            mult = mult + 5 * retriggers
                        elseif scoring_card:get_id() == 12 or scoring_card:get_id() == 10 or scoring_card:get_id() == 9 or scoring_card:get_id() == 6 then
                            mult = mult + 4 * retriggers
                        else
                            mult = mult + 3 * retriggers
                        end
                    elseif scoring_card:get_id() == 8 then
                        mult = mult + 2 * retriggers
                    elseif scoring_card:get_id() == 12 or scoring_card:get_id() == 10 or scoring_card:get_id() == 9 or scoring_card:get_id() == 6 then
                        mult = mult + 1 * retriggers
                    end
                end
            end
        end
        card.joker_display_values.mult = mult
    end
}
jd_def["j_bunc_xray"] = { -- X-Ray
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    }
}
jd_def["j_bunc_dread"] = { -- Dread
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.active = G.GAME and G.GAME.current_round.hands_left <= 1 and
            localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_prehistoric"] = { -- Prehistoric Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center ~= G.P_CENTERS.m_stone then
                    for _, previously_played_card in pairs(card.ability.extra.card_list) do
                        if (previously_played_card:get_id() == scoring_card:get_id())
                            and (previously_played_card:is_suit(scoring_card.base.suit) or scoring_card.config.center == G.P_CENTERS.m_wild) then
                            mult = mult +
                                card.ability.extra.mult *
                                JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                            break
                        end
                    end
                end
            end
        end
        card.joker_display_values.mult = mult
    end
}
jd_def["j_bunc_linocut"] = { -- Linocut Joker
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, _ = JokerDisplay.evaluate_hand(hand)
        card.joker_display_values.active = #hand == 2 and text == "Pair" and
            localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_ghost_print"] = { -- Ghost Print
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT },
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local chips = 0
        local mult = 0
        if card.ability.extra.last_hand ~= 'Nothing' then
            chips = G.GAME.hands[card.ability.extra.last_hand].chips
            mult = G.GAME.hands[card.ability.extra.last_hand].mult
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = card.ability.extra.last_hand ~= 'Nothing' and
            G.localization.misc['poker_hands'][card.ability.extra.last_hand] or "-"
    end,
}
jd_def["j_bunc_loan_shark"] = { -- Loan Shark

}
jd_def["j_bunc_basement"] = { -- Basement Joker
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "active_text" },
    },
    calc_function = function(card)
        local disableable = G.GAME and G.GAME.blind and G.GAME.blind.get_type and
            (G.GAME.blind:get_type() == 'Boss')
        card.joker_display_values.active = disableable
        card.joker_display_values.active_text = localize(disableable and 'k_active' or 'ph_no_boss_active')
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[1] then
            reminder_text.children[1].config.colour = card.joker_display_values.active and G.C.GREEN or G.C.RED
            reminder_text.children[1].config.scale = card.joker_display_values.active and 0.35 or 0.3
            return true
        end
        return false
    end
}
jd_def["j_bunc_shepherd"] = { -- Shepherd Joker
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
}
jd_def["j_bunc_knight"] = { -- Joker Knight
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
}
jd_def["j_bunc_jmjb"] = { -- Joker Man & Jester Boy Trading Card No. 54

}
jd_def["j_bunc_dogs_playing_poker"] = { -- Dogs Playing Poker
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult" }
            }
        }
    },
    calc_function = function(card)
        local is_dogs_hand = false
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if #hand > 0 and text ~= "Unknown" then
            is_dogs_hand = true
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() >= 6 or
                    scoring_card:get_id() < 2 and
                    scoring_card.config.center ~= G.P_CENTERS.m_stone then
                    is_dogs_hand = false
                end
            end
        end
        card.joker_display_values.x_mult = is_dogs_hand and card.ability.extra.xmult or 1
    end
}
jd_def["j_bunc_righthook"] = { -- Righthook Joker
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then return 0 end
        return JokerDisplay.calculate_rightmost_card(scoring_hand) == playing_card and G.GAME.current_round.hands_left or
            0
    end
}
jd_def["j_bunc_fiendish"] = { -- Fiendish Joker
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}
jd_def["j_bunc_carnival"] = { -- Carnival
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.active = G.GAME.round_resets.ante and card.ability.extra.ante and
            G.GAME.round_resets.ante > card.ability.extra.ante and G.GAME.blind and G.GAME.blind.boss and
            localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_sledgehammer"] = { -- Sledgehammer
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
            colour = G.C.ORANGE
        },
        { text = ")" },
    },
    calc_function = function(card)
        local count = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center == G.P_CENTERS.m_glass then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        -- 1.5 gives you the extra xmult that is added
        card.joker_display_values.x_mult = tonumber(string.format("%.2f", (1.5 ^ count)))
        card.joker_display_values.localized_text = localize { type = 'name_text', set = 'Enhanced', key = "m_glass" }
    end
}
jd_def["j_bunc_doorhanger"] = { -- Doorhanger

}
jd_def["j_bunc_fingerprints"] = { -- Fingerprints

}
jd_def["j_bunc_zero_shapiro"] = { -- Zero Shapiro
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "amount" }
            },
            border_colour = G.C.GREEN
        }
    },
}
jd_def["j_bunc_nil_bill"] = { -- Nil Bill
    text = {
        { text = "+$" },
        { ref_table = "card.joker_display_values", ref_value = "dollars" },
    },
    text_config = { colour = G.C.GOLD },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local dollars = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.debuff then
                    dollars = dollars +
                        card.ability.extra.bonus
                end
            end
        end
        card.joker_display_values.dollars = dollars
        card.joker_display_values.localized_text = localize("k_debuffed")
    end
}
jd_def["j_bunc_bierdeckel"] = { -- Bierdeckel

}
jd_def["j_bunc_registration_plate"] = { -- Registration Plate
    reminder_text = {
        { text = "(" },
        { ref_table = "card.ability.extra", ref_value = "combination" },
        { text = ")" },
    },
}
jd_def["j_bunc_slothful"] = { -- Slothful Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
            colour = G.C.ORANGE
        },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center == G.P_CENTERS.m_wild then
                    mult = mult +
                        card.ability.extra.mult * JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize { type = 'name_text', set = 'Enhanced', key = "m_wild" }
    end
}
jd_def["j_bunc_neon"] = { -- Neon Joker
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    },
}
jd_def["j_bunc_gameplan"] = { -- Gameplan
    mod_function = function(card, mod_joker)
        local mod_joker_pos = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == mod_joker then
                mod_joker_pos = i; break
            end
        end
        local is_debuffed = (G.jokers.cards[mod_joker_pos - 1] and G.jokers.cards[mod_joker_pos - 1] == card) or
            (G.jokers.cards[mod_joker_pos + 1] and G.jokers.cards[mod_joker_pos + 1] == card)
        return { mult = (is_debuffed and mod_joker.ability.extra.mult or nil) }
    end
}
jd_def["j_bunc_conquest"] = { -- Conquest
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
}
jd_def["j_bunc_hierarchy_of_needs"] = { -- Hierarchy of Needs
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
}
jd_def["j_bunc_dwarven"] = { -- Dwarven Joker

}
jd_def["j_bunc_aristocrat"] = { -- Aristocrat

}
jd_def["j_bunc_metallurgist"] = { -- Metallurgist
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
            colour = G.C.ORANGE
        },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local playing_hand = next(G.play.cards)
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if not (playing_card.facing == 'back') and playing_card.config.center == G.P_CENTERS.m_gold then
                    mult = mult + card.ability.extra.mult * JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize { type = 'name_text', set = 'Enhanced', key = "m_gold" }
    end
}
jd_def["j_bunc_juggalo"] = { -- Juggalo

}
jd_def["j_bunc_head_in_the_clouds"] = { -- Head in the Clouds
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}
jd_def["j_bunc_headshot"] = { -- Headshot
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult" }
            }
        }
    },
    calc_function = function(card)
        local count = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_face() then
                    count = count + 1
                end
            end
        end
        card.joker_display_values.x_mult = count == 1 and text ~= "Unknown" and card.ability.extra.xmult or 1
    end
}
jd_def["j_bunc_trigger_finger"] = { -- Trigger Finger
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}
jd_def["j_bunc_hopscotch"] = { -- Hopscotch

}
jd_def["j_bunc_pawn"] = { -- Pawn

}
jd_def["j_bunc_puzzle_board"] = { -- Puzzle Board
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}
jd_def["j_bunc_vandalism"] = { -- Vandalism
    -- This one is kind of hard to calculate without giving too much information to the player
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}
jd_def["j_bunc_protester"] = { -- Protester
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
}
jd_def["j_bunc_doodle"] = { -- Doodle
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.active = card.ability.extra.active and localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_disproportionality"] = { -- Disproportionality
    text = {
        { text = "(a ", scale = 0.3 },
        { text = "+",   colour = G.C.CHIPS, scale = 0.3 },
        {
            dynatext = {
                string = (
                    function()
                        local r_chips = {}
                        for i = 0, 200 do
                            r_chips[#r_chips + 1] = string.format("%03d", i)
                        end
                        return r_chips
                    end
                )(),
                colours = { G.C.CHIPS },
                pop_in_rate = 9999999,
                silent = true,
                pop_delay = 0.005,
                scale = 0.3,
                min_cycle_time = 0
            }
        },
        { text = " value)", scale = 0.3 },
    },
    extra = {
        {
            { text = "field 'chips'" },
        },
        {
            { text = "attempt to index" },
        }
    },
    extra_config = { scale = 0.3 }
}
jd_def["j_bunc_running_joke"] = { -- Running Joke

}
jd_def["j_bunc_on_broadway"] = { -- On Broadway
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT },
    },
    calc_function = function(card)
        local count = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local _, poker_hands, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if poker_hands['Straight'] and next(poker_hands['Straight']) then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_face() then
                    count = count + 1
                end
            end
        end
        card.joker_display_values.chips = count > 0 and card.ability.extra.chips or 0
        card.joker_display_values.mult = count > 0 and card.ability.extra.mult or 0
    end,
}
jd_def["j_bunc_rasta"] = { -- Rasta
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" },
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local enhancement = false
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center ~= G.P_CENTERS.c_base then
                    enhancement = true
                end
            end
        end
        card.joker_display_values.mult = #hand > 0 and not enhancement and card.ability.extra.mult or 0
    end,
}
jd_def["j_bunc_critic"] = { -- Critic
    -- This one is also hard because of timing. I can't believe they gave him a bat credit card.
}
jd_def["j_bunc_cellphone"] = { -- Cellphone
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.active = card.ability.extra.active and localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_wino"] = { -- Wino
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
    reminder_text = { --
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text_hearts",
            colour = lighten(G.C.SUITS["Hearts"], 0.35)
        },
        { text = "/" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text_diamonds",
            colour = lighten(G.C.SUITS["Diamonds"], 0.35)
        },
        { text = ")" },
    },
    calc_function = function(card)
        local chips = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit("Hearts") or scoring_card:is_suit("Diamonds") then
                    chips = chips +
                        card.ability.extra.chips *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.localized_text_hearts = localize("Hearts", 'suits_plural')
        card.joker_display_values.localized_text_diamonds = localize("Diamonds", 'suits_plural')
    end
}
jd_def["j_bunc_bounty_hunter"] = { -- Bounty Hunter
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        card.joker_display_values.mult = G.GAME.dollars < 0 and card.ability.extra.mult * math.abs(G.GAME.dollars) or 0
    end
}
jd_def["j_bunc_mousetrap"] = { -- Mousetrap
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end
}

-- Exotic Jokers

jd_def["j_bunc_zealous"] = { -- Zealous Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local _, poker_hands, _ = JokerDisplay.evaluate_hand(hand)
        if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
            mult = card.ability.t_mult
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize(card.ability.type, 'poker_hands')
    end
}
jd_def["j_bunc_lurid"] = { -- Lurid Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local chips = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local _, poker_hands, _ = JokerDisplay.evaluate_hand(hand)
        if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
            chips = card.ability.t_chips
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.localized_text = localize(card.ability.type, 'poker_hands')
    end
}
jd_def["j_bunc_envious"] = { -- Envious Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
        },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit(card.ability.extra.suit) then
                    mult = mult +
                        card.ability.extra.s_mult *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize(card.ability.extra.suit, 'suits_plural')
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[2] then
            reminder_text.children[2].config.colour = lighten(G.C.SUITS["bunc_Fleurons"], 0.35) or HEX('dbb529')
        end
        return false
    end
}
jd_def["j_bunc_proud"] = { -- Proud Joker
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
        },
        { text = ")" },
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit(card.ability.extra.suit) then
                    mult = mult +
                        card.ability.extra.s_mult *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize(card.ability.extra.suit, 'suits_plural')
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[2] then
            reminder_text.children[2].config.colour = lighten(G.C.SUITS["bunc_Halberds"], 0.35) or HEX('993283')
        end
        return false
    end
}
jd_def["j_bunc_wishalloy"] = { -- Wishalloy
    text = {
        { ref_table = "card.joker_display_values", ref_value = "count" },
        { text = "x",                              scale = 0.35 },
        { text = "$",                              colour = G.C.GOLD },
    },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
        },
        { text = ")" },
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit('bunc_Fleurons') then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_text = localize("bunc_Fleurons", 'suits_plural')
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[2] then
            reminder_text.children[2].config.colour = lighten(G.C.SUITS["bunc_Fleurons"], 0.35) or HEX('dbb529')
        end
        return false
    end
}
jd_def["j_bunc_unobtanium"] = { -- Unobtanium
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT },
    },
    reminder_text = {
        { text = "(" },
        {
            ref_table = "card.joker_display_values",
            ref_value = "localized_text",
        },
        { text = ")" },
    },
    calc_function = function(card)
        local count = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit('bunc_Halberds') then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = count * card.ability.extra.chips
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.localized_text = localize("bunc_Halberds", 'suits_plural')
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[2] then
            reminder_text.children[2].config.colour = lighten(G.C.SUITS["bunc_Halberds"], 0.35) or HEX('993283')
        end
        return false
    end
}
jd_def["j_bunc_dynasty"] = { -- The Dynasty
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local x_mult = 1
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local _, poker_hands, _ = JokerDisplay.evaluate_hand(hand)
        if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
            x_mult = card.ability.x_mult
        end
        card.joker_display_values.x_mult = x_mult
        card.joker_display_values.localized_text = localize(card.ability.type, 'poker_hands')
    end
}
jd_def["j_bunc_magic_wand"] = { -- Magic Wand
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    },
}
jd_def["j_bunc_starfruit"] = { -- Starfruit

}
jd_def["j_bunc_fondue"] = { -- Fondue
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.active = G.GAME and
        ((not next(G.play.cards) and G.GAME.current_round.hands_played < 1) or
            (next(G.play.cards) and G.GAME.current_round.hands_played <= 1)) and
            localize("k_active_ex") or "Inactive"
    end,
}
jd_def["j_bunc_myopia"] = { -- Myopia

}
jd_def["j_bunc_astigmatism"] = { -- Astigmatism

}
jd_def["j_bunc_roygbiv"] = { -- Roy G. Biv
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "active" },
        { text = ")" },
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = " in " },
            { ref_table = "card.ability.extra",        ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local _, poker_hands, _ = JokerDisplay.evaluate_hand(hand)
        card.joker_display_values.active = poker_hands['h_bunc_Spectrum'] and next(poker_hands['h_bunc_Spectrum']) and
        localize("k_active_ex") or "Inactive"
        card.joker_display_values.localized_text = localize("h_bunc_Spectrum", 'poker_hands')
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
    end,
}

-- Legendary Jokers

jd_def["j_bunc_rigoletto"] = { -- Rigoletto
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult" }
            }
        }
    },
}
