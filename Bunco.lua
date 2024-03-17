--- STEAMODDED HEADER
--- MOD_NAME: Bunco
--- MOD_ID: Bunco
--- MOD_AUTHOR: [Firch]
--- MOD_DESCRIPTION: New high-quality jokers, new enhancements and editions!

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.Bunco()

    -- Jokers' sprite:
        local bunco_mod = SMODS.findModByID("Bunco")

    -- Dread joker:
        SMODS.Sprite:new("j_dread", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

        local loc_dread = {
            ["name"] = "Dread",
            ["text"] = {
                [1] = "AHAHA",
                [2] = "Jokes on",
                [3] = "{C:attention}You{}!"
            }
        }

        -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
        local joker_dread = SMODS.Joker:new(
            "Dread", -- Name
            "dread", -- Slug
            {}, -- Config
            {x = 0, y = 0}, -- Sprite position
            loc_dread, -- Localization
            3, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

        joker_dread:register()

        SMODS.Jokers.j_dread.calculate = function(self, context)
            if SMODS.end_calculate_context(context) then
                return {
                    mult_mod = 20,
                    card = self,
                    colour = G.C.RED,
                    message = "AHAHAHAH"
                }

            end
        end
    
    -- Cassette joker:
    SMODS.Sprite:new("j_cassette", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_cassette = {
        ["name"] = "Cassette",
        ["text"] = {
            [1] = "AHAHA",
            [2] = "Jokes on",
            [3] = "{C:attention}You{}!"
        }
    }

    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_cassette = SMODS.Joker:new(
        "Cassette", -- Name
        "cassette", -- Slug
        {}, -- Config
        {x = 1, y = 0}, -- Sprite position
        loc_cassette, -- Localization
        2, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

    joker_cassette:register()

    SMODS.Jokers.j_cassette.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                mult_mod = 20,
                card = self,
                colour = G.C.RED,
                message = "AHAHAHAH"
            }

        end
    end

    -- Mosaic joker:
    SMODS.Sprite:new("j_mosaic", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_mosaic = {
        ["name"] = "Mosaic Joker",
        ["text"] = {
            [1] = "AHAHA",
            [2] = "Jokes on",
            [3] = "{C:attention}You{}!"
        }
    }

    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_mosaic = SMODS.Joker:new(
        "Mosaic Joker", -- Name
        "mosaic", -- Slug
        {}, -- Config
        {x = 2, y = 0}, -- Sprite position
        loc_mosaic, -- Localization
        2, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary

    joker_mosaic:register()

    SMODS.Jokers.j_mosaic.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                mult_mod = 20,
                card = self,
                colour = G.C.RED,
                message = "AHAHAHAH"
            }

        end
    end

    -- Voxel joker:
    SMODS.Sprite:new("j_voxel", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_voxel = {
        ["name"] = "Voxel Joker",
        ["text"] = {
            [1] = "AHAHA",
            [2] = "Jokes on",
            [3] = "{C:attention}You{}!"
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_voxel = SMODS.Joker:new(
        "Voxel Joker", -- Name
        "voxel", -- Slug
        {}, -- Config
        {x = 3, y = 0}, -- Sprite position
        loc_voxel, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_voxel:register()
 
    SMODS.Jokers.j_voxel.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                mult_mod = 20,
                card = self,
                colour = G.C.RED,
                message = "AHAHAHAH"
            }
 
        end
    end

    -- Crop circles joker:
    SMODS.Sprite:new("j_crop", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_crop = {
        ["name"] = "Crop Circles",
        ["text"] = {
            [1] = "AHAHA",
            [2] = "Jokes on",
            [3] = "{C:attention}You{}!"
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_crop = SMODS.Joker:new(
        "Crop Circles", -- Name
        "crop", -- Slug
        {}, -- Config
        {x = 4, y = 0}, -- Sprite position
        loc_crop, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_crop:register()
 
    SMODS.Jokers.j_crop.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                mult_mod = 20,
                card = self,
                colour = G.C.RED,
                message = "AHAHAHAH"
            }
 
        end
    end

    -- X-Ray joker:
    SMODS.Sprite:new("j_xray", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_xray = {
        ["name"] = "X-Ray",
        ["text"] = {
            [1] = "AHAHA",
            [2] = "Jokes on",
            [3] = "{C:attention}You{}!"
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_xray = SMODS.Joker:new(
        "X-Ray", -- Name
        "xray", -- Slug
        {}, -- Config
        {x = 5, y = 0}, -- Sprite position
        loc_xray, -- Localization
        1, 4) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_xray:register()
 
    SMODS.Jokers.j_xray.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                mult_mod = 20,
                card = self,
                colour = G.C.RED,
                message = "AHAHAHAH"
            }
 
        end
    end

    -- Prehistoric joker:
    SMODS.Sprite:new("j_oonga", bunco_mod.path, "Jokers.png", 71, 95, "asset_atli"):register()

    local loc_oonga = {
        ["name"] = "Prehistoric Joker",
        ["text"] = {
            [1] = "{C:mult}+#1#{} Mult for each",
            [2] = "card of the same rank and suit",
            [3] = "that was already",
            [4] = "played during this round"
        }
    }
 
    -- SMODS.Joker:new(name, slug, config, spritePos, loc_txt, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat)
    local joker_oonga = SMODS.Joker:new(
        "Prehistoric Joker", -- Name
        "oonga", -- Slug
        {mult = 16, extra = {card_list = { }}}, -- Config
        {x = 0, y = 1}, -- Sprite position
        loc_oonga, -- Localization
        2, 6) -- Rarity & Cost. 1 - Common, 2 - Uncommon, 3 - Rare, 4 - Legendary
 
    joker_oonga:register()

    SMODS.Jokers.j_oonga.calculate = function(self, context)
        
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

    -- Jokers' descriptions:
    local card_uiref = Card.generate_UIBox_ability_table

 
    function Card:generate_UIBox_ability_table()

        if self.ability.name == "Dread" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "Cassette" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "Mosaic Joker" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "Voxel Joker" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "Crop Circles" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "X-Ray" then
            return generate_card_ui(self.config.center, nil, nil, self.ability.set, {}, false, nil, nil)
        end

        if self.ability.name == "Prehistoric Joker" then
            return generate_card_ui(self.config.center, nil, {self.ability.mult}, self.ability.set, {}, false, nil, nil)
        end
        
        return card_uiref(self)
    end
end

----------------------------------------------
------------MOD CODE END----------------------
