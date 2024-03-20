--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch]
--- MOD_DESCRIPTION: New high-quality jokers, new enhancements and editions!

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.Bunco()

    -- Custom editions:

    local original_set_edition = Card.set_edition

    function Card:set_edition(edition, immediate, silent)
        original_set_edition(self, edition, immediate, silent)
    end

    -- Custom contexts:

    local original_update = Card.update

    function Card:update(dt)
        original_update(self, dt)

        if self.ability.name == 'Cassette' then
            if self.VT.w <= 0 then
                if self.ability.extra.side == 'A' then
                    self.config.center.pos.x = 0
                else
                    self.config.center.pos.x = 1
                end
            end
        end

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

        if G.jokers ~= nil and self == G.hand then
            for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({emplace = true, emplaced_card = card})
            end
        end
    end

    -- Joker sprites:
        local bunco_mod = SMODS.findModByID('Bunco')
    
    -- Cassette joker:
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

    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_cassette = SMODS.Joker:new(
        'Cassette', -- Name
        'cassette', -- Slug
        {extra = {chips = 45, mult = 6, side = 'A'}}, -- Config
        {x = 0, y = 0}, -- Sprite position
        loc_cassette, -- Localization
        2, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

    joker_cassette:register()

    -- Cassette uses Card:update for some things. Look at the start of the code

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
            context.other_card:is_suit('Stars') then
                if self.ability.extra.side == 'A' then
                    return {
                        chips = self.ability.extra.chips,
                        card = self
                    }
                end
            end

            if context.other_card:is_suit('Spades') or 
            context.other_card:is_suit('Clubs') or 
            context.other_card:is_suit('Moons') then
                if self.ability.extra.side == 'B' then
                    return {
                        mult = self.ability.extra.mult,
                        card = self
                    }
                end
            end
        end
    end

    -- Mosaic joker:
    SMODS.Sprite:new('j_mosaic', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_mosaic = {
        ['name'] = 'Mosaic Joker',
        ['text'] = {
            [1] = 'Played {C:attention}Stone Cards',
            [2] = 'give {C:mult}#1# Mult',
            [3] = 'when scored'
        }
    }

    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_mosaic = SMODS.Joker:new(
        'Mosaic Joker', -- Name
        'mosaic', -- Slug
        {extra = {mult = 4}}, -- Config
        {x = 2, y = 0}, -- Sprite position
        loc_mosaic, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

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

    -- Voxel joker:
    SMODS.Sprite:new('j_voxel', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_voxel = {
        ['name'] = 'Voxel Joker',
        ['text'] = {
            [1] = '{X:mult,C:white}X#1#{} Mult, {X:mult,C:white}-X0.1{} Mult for each',
            [2] = '{C:attention}Enhanced card{} in your full deck',
            [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_voxel = SMODS.Joker:new(
        'Voxel Joker', -- Name
        'voxel', -- Slug
        {extra = {base_xmult = 3, xmult = 3, voxel_tally = 0}}, -- Config
        {x = 3, y = 0}, -- Sprite position
        loc_voxel, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_voxel:register()

    -- Voxel Joker uses Card:update for some things. Look at the start of the code

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

    -- Crop circles joker:
    SMODS.Sprite:new('j_crop', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_crop = {
        ['name'] = 'Crop Circles',
        ['text'] = {
            [1] = 'Each circle in suit and rank',
            [2] = 'of played card gives',
            [3] = '{C:mult}+#1#{} Mult when scored'
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_crop = SMODS.Joker:new(
        'Crop Circles', -- Name
        'crop', -- Slug
        {extra = {mult = 1}}, -- Config
        {x = 4, y = 0}, -- Sprite position
        loc_crop, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_crop:register()
 
    SMODS.Jokers.j_crop.calculate = function(self, context)

        if context.individual and context.cardarea == G.play then
            if context.other_card.base.suit == ("Clubs") and context.other_card.ability.effect ~= 'Stone Card' then
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

    -- X-Ray joker:
    SMODS.Sprite:new('j_xray', bunco_mod.path, 'Jokers.png', 71, 95, 'asset_atli'):register()

    local loc_xray = {
        ['name'] = 'X-Ray',
        ['text'] = {
            [1] = 'Gains {X:mult,C:white}X0.2{} Mult',
            [2] = 'per card drawn face down',
            [3] = '{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)'
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_xray = SMODS.Joker:new(
        'X-Ray', -- Name
        'xray', -- Slug
        {extra = {xmult = 1}}, -- Config
        {x = 5, y = 0}, -- Sprite position
        loc_xray, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_xray:register()

    SMODS.Jokers.j_xray.calculate = function(self, context)

        if context.emplace and context.emplaced_card.facing == 'back' then
            self.ability.extra.xmult = self.ability.extra.xmult + 0.2
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

    -- Dread joker:
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

    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_dread = SMODS.Joker:new(
        'Dread', -- Name
        'dread', -- Slug
        {extra = {trash_list = {}, level_up_list = {}}}, -- Config
        {x = 0, y = 1}, -- Sprite position
        loc_dread, -- Localization
        3, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

    joker_dread:register()

    local original_remove_from_deck = Card.remove_from_deck

    function Card:remove_from_deck(from_debuff)
        original_remove_from_deck(self, from_debuff)

        if self.ability.name == 'Dread' then
            for name, level in pairs(self.ability.extra.level_up_list) do
                level_up_hand(self, name, true, level * -1)
            end
        end
    end

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
                message = "Level up!"
            }
        end

        if context.end_of_round and G.GAME.current_round.hands_left == 0 then
            for i = 1, #self.ability.extra.trash_list do
                self.ability.extra.trash_list[i]:start_dissolve()
            end
            self.ability.extra.trash_list = {}
        end
    end

    -- Prehistoric joker:
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
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_prehistoric = SMODS.Joker:new(
        'Prehistoric Joker', -- Name
        'prehistoric', -- Slug
        {mult = 16, extra = {card_list = { }}}, -- Config
        {x = 1, y = 1}, -- Sprite position
        loc_prehistoric, -- Localization
        2, 6) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
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

        if self.ability.name == 'Cassette' then
            loc_vars = {self.ability.extra.chips, self.ability.extra.mult}
        elseif self.ability.name == 'Mosaic Joker' then
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'Voxel Joker' then
            loc_vars = {self.ability.extra.base_xmult, self.ability.extra.xmult}
        elseif self.ability.name == 'Crop Circles' then
            loc_vars = {self.ability.extra.mult}
        elseif self.ability.name == 'X-Ray' then
            loc_vars = {self.ability.extra.xmult}
        elseif self.ability.name == 'Dread' then
            
        elseif self.ability.name == 'Prehistoric Joker' then
            loc_vars = {self.ability.mult}
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
