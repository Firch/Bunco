BUNCOMOD = {vars = {}, funcs = {}, content = SMODS.current_mod}
local filesystem = NFS or love.filesystem

local config = BUNCOMOD.content.config

-- Debug message

local function say(message)
    sendDebugMessage('[BUNCO] - '..(message or '???'))
end

-- Talisman-related functions

to_big = to_big or function(x)
    return x
end

to_number = to_number or function(x)
    return x
end

-- Index-based coordinates generation

local function get_coordinates(position, width)
    if width == nil then width = 10 end -- 10 is default for Jokers
    return {x = (position) % width, y = math.floor((position) / width)}
end

local function coordinate(position)
    return get_coordinates(position - 1)
end

-- math.huge replacement

local huge_number = 9999

-- Forced messages for evaluation

local function event(config)
    local e = Event(config)
    G.E_MANAGER:add_event(e)
    return e
end

local function big_juice(card)
    card:juice_up(0.7)
end

local function extra_juice(card)
    card:juice_up(0.6, 0.1)
end

local function forced_message(message, card, color, delay, juice)
    if delay == true then
        delay = 0.7 * 1.25
    elseif delay == nil then
        delay = 0
    end

    event({trigger = 'before', delay = delay, func = function()

        if juice then big_juice(juice) end

        card_eval_status_text(
            card,
            'extra',
            nil, nil, nil,
            {message = message, colour = color, instant = true}
        )
        return true
    end})
end

-- Exotic in_pool function

BUNCOMOD.funcs.exotic_in_pool = function()
    return G.GAME and G.GAME.Exotic
end

-- Dictionary wrapper

function BUNCOMOD.content.process_loc_text()
    G.P_CENTERS['bunc_exotic_cards'] = {key = 'bunc_exotic_cards', set = 'Other'}
    G.P_CENTERS['bunc_consumable_edition_foil'] = {key = 'bunc_consumable_edition_foil', set = 'Other'}
    G.P_CENTERS['bunc_consumable_edition_holo'] = {key = 'bunc_consumable_edition_holo', set = 'Other'}
    G.P_CENTERS['bunc_consumable_edition_polychrome'] = {key = 'bunc_consumable_edition_polychrome', set = 'Other'}
    G.P_CENTERS['bunc_consumable_edition_bunc_glitter'] = {key = 'bunc_consumable_edition_bunc_glitter', set = 'Other'}
end

-- Mod icon

SMODS.Atlas({
    key = 'modicon',
    path = 'Icon/Icon.png',
    px = 34,
    py = 34
})

-- Config globals

BUNCOMOD.vars.jokerlike_consumable_editions = config.jokerlike_consumable_editions

-- Config options

function BUNCOMOD.content.save_config(self)
    SMODS.save_mod_config(self)
end

function BUNCOMOD.content.config_tab()
    return {n = G.UIT.ROOT, config = {r = 0.1, minw = 4, align = "tm", padding = 0.2, colour = G.C.BLACK}, nodes = {
        {n = G.UIT.C, config = {r = 0.1, minw = 4, align = "tl", padding = 0.2, colour = G.C.BLACK}, nodes =
            {
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                            label = G.localization.misc.dictionary.bunc_colorful_finishers,
                            info = {
                                G.localization.misc.dictionary.bunc_default_true,
                                '',
                                G.localization.misc.dictionary.bunc_colorful_finishers_desc,
                                G.localization.misc.dictionary.bunc_colorful_finishers_desc_2
                            },
                            ref_table = BUNCOMOD.content.config,
                            ref_value = 'colorful_finishers',
                            callback = function() BUNCOMOD.content:save_config()
                        end})
                    }
                },
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                            label = G.localization.misc.dictionary.bunc_high_quality_shaders,
                            info = {
                                G.localization.misc.dictionary.bunc_default_true..', '..G.localization.misc.dictionary.bunc_requires_restart,
                                '',
                                G.localization.misc.dictionary.bunc_high_quality_shaders_desc,
                                G.localization.misc.dictionary.bunc_high_quality_shaders_desc_2
                            },
                            ref_table = BUNCOMOD.content.config,
                            ref_value = 'high_quality_shaders',
                            callback = function() BUNCOMOD.content:save_config()
                        end})
                    }
                },
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                            label = G.localization.misc.dictionary.bunc_fixed_sprites,
                            info = {
                                G.localization.misc.dictionary.bunc_default_true..', '..G.localization.misc.dictionary.bunc_requires_restart,
                                '',
                                G.localization.misc.dictionary.bunc_fixed_sprites_desc,
                                G.localization.misc.dictionary.bunc_fixed_sprites_desc_2
                            },
                            ref_table = BUNCOMOD.content.config,
                            ref_value = 'fixed_sprites',
                            callback = function() BUNCOMOD.content:save_config()
                        end})
                    }
                }
            }
        },
        {n = G.UIT.C, config = {r = 0.1, minw = 4, align = "tc", padding = 0.2, colour = G.C.BLACK}, nodes =
            {
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                        label = G.localization.misc.dictionary.bunc_gameplay_reworks,
                        info = {
                            G.localization.misc.dictionary.bunc_default_true..', '..G.localization.misc.dictionary.bunc_requires_restart,
                            '',
                            G.localization.misc.dictionary.bunc_gameplay_reworks_desc,
                            G.localization.misc.dictionary.bunc_gameplay_reworks_desc_2
                        },
                        ref_table = BUNCOMOD.content.config,
                        ref_value = 'gameplay_reworks',
                        callback = function() BUNCOMOD.content:save_config()
                            if config.gameplay_reworks then
                                G.P_CENTERS.c_lovers.config.max_highlighted = 2
                            else
                                G.P_CENTERS.c_lovers.config.max_highlighted = 1
                            end
                        end})
                    }
                },
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                            label = G.localization.misc.dictionary.bunc_fixed_badges,
                            info = {
                                G.localization.misc.dictionary.bunc_default_false,
                                '',
                                G.localization.misc.dictionary.bunc_fixed_badges_desc,
                                G.localization.misc.dictionary.bunc_fixed_badges_desc_2
                            },
                            ref_table = BUNCOMOD.content.config,
                            ref_value = 'fixed_badges',
                            callback = function() BUNCOMOD.content:save_config()
                        end})
                    }
                },
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        r = 0.1,
                        emboss = 0.1,
                        outline = 1,
                        padding = 0.14
                    },
                    nodes = {
                        create_toggle({
                            label = G.localization.misc.dictionary.bunc_jokerlike_consumable_editions,
                            info = {
                                G.localization.misc.dictionary.bunc_default_false,
                                '',
                                G.localization.misc.dictionary.bunc_jokerlike_consumable_editions_desc,
                                G.localization.misc.dictionary.bunc_jokerlike_consumable_editions_desc_2
                            },
                            ref_table = BUNCOMOD.content.config,
                            ref_value = 'jokerlike_consumable_editions',
                            callback = function() BUNCOMOD.content:save_config()
                        end})
                    }
                }
            }
        }
    }}
end

-- Credits tab

SMODS.current_mod.extra_tabs = function()
    local text_scale = 0.6
	return {
		{
			label = G.localization.misc.dictionary.b_credits,
			tab_definition_function = function()
				return {n = G.UIT.ROOT, config = {r = 0.1, minw = 4, align = "tm", padding = 0.2, colour = G.C.BLACK}, nodes = {
                {n=G.UIT.R, config={align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1}, nodes={
                    {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                        {n=G.UIT.T, config={text = G.localization.misc.dictionary.b_credits, scale = text_scale*0.6, colour = G.C.ORANGE, shadow = true}},
                    }},
                    {n=G.UIT.R, config={align = "tm", padding = 0}, nodes={
                        {n=G.UIT.C, config={align = "tl", padding = 0.05, minw = 2.0}, nodes={
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Firch', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'RENREN', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Peas', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'minichibis', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'J.D.', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Guwahavel', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Ciirulean', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'ejwu', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'sadlyjustal', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Domique', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Haloway', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'hapty', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Joey', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'hellfirejune', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Oroshibu', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'women', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'cometz', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'ferrium', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'hippocrunchy', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Biverom', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Just_Shrimmp', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'wingedcatgirl', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }}
                        }},
                        {n=G.UIT.C, config={align = "tl", padding = 0.05, minw = 2.0}, nodes={
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Mikadoe', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Lyman', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'jostro', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'kingbobson', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'aure__', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'itayfeder', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'autumnmood', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'arachneii', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'mysthaps', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'iwas_nevergood', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'chromapie', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'kaishi_', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Victin', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'sdm_0', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'PinkMaggit', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'Ardub23', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'nh6574', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'jumbocarrot0', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'weird_autumn', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'unascribed', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'itsmythie', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }},
                            {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
                                {n=G.UIT.T, config={text = 'VisJoker', scale = text_scale*0.5, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
                            }}
                        }},
                    }},
                    }}
				}}
			end,
		}
	}
end

-- Shaders

SMODS.Shader({key = 'pinch', path = 'pinch.fs'})

if config.high_quality_shaders then
    local background_shader = NFS.read(BUNCOMOD.content.path..'assets/shaders/background.fs')
    local splash_shader = NFS.read(BUNCOMOD.content.path..'assets/shaders/splash.fs')
    local flame_shader = NFS.read(BUNCOMOD.content.path..'assets/shaders/flame.fs')
    G.SHADERS['background'] = love.graphics.newShader(background_shader)
    G.SHADERS['splash'] = love.graphics.newShader(splash_shader)
    G.SHADERS['flame'] = love.graphics.newShader(flame_shader)
end

-- Fixed badges

SMODS.Consumable:take_ownership('pluto', {
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end
})

SMODS.Consumable:take_ownership('ceres', {
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end
})

SMODS.Consumable:take_ownership('eris', {
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end
})

-- Fixed sprites

SMODS.Atlas({key = 'bunco_resprites_jokers', path = 'Resprites/Jokers.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_resprites_consumables', path = 'Resprites/Consumables.png', px = 71, py = 95})

if config.fixed_sprites then

    -- High contrast

    G.C['SO_1']['Spades'] = HEX('3c4368')

    G.C.SUITS = G.C["SO_" .. (G.SETTINGS.colourblind_option and 2 or 1)]

    if not (SMODS.Mods["malverk"] or {}).can_load then

        -- Jokers

        SMODS.Joker:take_ownership('juggler', {
            pos = coordinate(1),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('drunkard', {
            pos = coordinate(2),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('acrobat', {
            pos = coordinate(3),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('credit_card', {
            pos = coordinate(4),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('troubadour', {
            pos = coordinate(5),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('even_steven', {
            pos = coordinate(6),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('odd_todd', {
            pos = coordinate(7),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('fibonacci', {
            pos = coordinate(8),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('drivers_license', {
            pos = coordinate(9),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('gift', {
            pos = coordinate(10),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('flash', {
            pos = coordinate(11),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('ramen', {
            pos = coordinate(12),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('selzer', {
            pos = coordinate(13),
            atlas = 'bunco_resprites_jokers'
        })

        SMODS.Joker:take_ownership('scholar', {
            pos = coordinate(14),
            atlas = 'bunco_resprites_jokers'
        })

        -- Consumables

        SMODS.Consumable:take_ownership('fool', {
            pos = coordinate(1),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('lovers', {
            pos = coordinate(2),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('chariot', {
            pos = coordinate(3),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('wheel_of_fortune', {
            pos = coordinate(4),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('tower', {
            pos = coordinate(5),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('moon', {
            pos = coordinate(6),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('world', {
            pos = coordinate(7),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('soul', {
            pos = coordinate(8),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('ceres', {
            pos = coordinate(9),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('mercury', {
            pos = coordinate(10),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('uranus', {
            pos = coordinate(11),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('pluto', {
            pos = coordinate(12),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('incantation', {
            pos = coordinate(13),
            atlas = 'bunco_resprites_consumables'
        })

        SMODS.Consumable:take_ownership('black_hole', {
            pos = coordinate(14),
            atlas = 'bunco_resprites_consumables'
        })

    end

end

-- Text icons

local font_replacement = NFS.read(BUNCOMOD.content.path..'assets/fonts/font.ttf')
love.filesystem.write('font_replacement.ttf', font_replacement)
G.FONTS[1].FONT = love.graphics.newFont('font_replacement.ttf', G.TILESIZE * 10)
love.filesystem.remove('font_replacement.ttf')

-- Gameplay reworks

if config.gameplay_reworks then

    BUNCOMOD.content.config.gameplay_reworks = true

    G.P_CENTERS.c_lovers.config.max_highlighted = 2

    SMODS.Joker:take_ownership('luchador', {
        loc_vars = function(self, info_queue)
            info_queue[#info_queue + 1] = {key = 'tag_bunc_breaking', set = 'Tag'}
            return {key = 'j_bunc_luchador'}
        end,
        calculate = function(self, card, context)
            if context.selling_self then
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        add_tag(Tag('tag_bunc_breaking'))
                        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                        return true
                    end)
                }))
            end
        end
    })

    SMODS.Joker:take_ownership('red_card', {
        loc_vars = function(self, info_queue)
            return {key = 'j_bunc_red_card'}
        end,
        calculate = function(self, card, context)
            if context.skipping_booster and not context.blueprint then
                card.ability.mult = card.ability.mult + (card.ability.extra * G.GAME.pack_choices)
                event({
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {
                        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra * G.GAME.pack_choices}},
                        colour = G.C.RED,
                        delay = 0.45,
                        card = card
                    })
                return true end})
            end
        end
    })

    SMODS.Tag:take_ownership('boss', {
        loc_vars = function(self, info_queue)
            info_queue[#info_queue + 1] = {key = 'p_bunc_blind', set = 'Other', vars = {G.P_CENTERS.p_bunc_blind_1.config.extra}}
            return {key = 'tag_bunc_boss'}
        end,
        config = {type = 'new_blind_choice'},
        apply = function(self, tag, context)
            if context.type == self.config.type then
                G.CONTROLLER.locks[tag.ID] = true
                tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                    local key = 'p_bunc_blind_'..(math.random(4))
                    local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
                    G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
                    card.cost = 0
                    card.from_tag = true
                    G.FUNCS.use_card({config = {ref_table = card}})
                    card:start_materialize()
                    G.CONTROLLER.locks[tag.ID] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    })

    SMODS.Tag:take_ownership('d_six', {
        loc_vars = function(self, info_queue)
            return {key = 'tag_bunc_d_six'}
        end,
        config = {type = 'shop_final_pass'},
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('+', G.C.GREEN, function()
                    return true
                end)

                G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
                calculate_reroll_cost(true)

                tag.triggered = true
                return true
            end
        end
    })

    -- Glitter-related

    SMODS.Consumable:take_ownership('wheel_of_fortune', {
        loc_vars = function(self, info_queue)

            info_queue[#info_queue+1] = G.P_CENTERS.e_foil
            info_queue[#info_queue+1] = G.P_CENTERS.e_holo
            info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
            info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter

            local vars
            if G.GAME and G.GAME.probabilities.normal then
                vars = {G.GAME.probabilities.normal, self.config.extra}
            else
                vars = {1, self.config.extra}
            end
            return {key = 'c_bunc_wheel_of_fortune', vars = vars}
        end,
        pos = config.fixed_sprites and coordinate(4) or nil,
        atlas = config.fixed_sprites and 'bunco_resprites_consumables' or nil
    })

    SMODS.Consumable:take_ownership('aura', {
        loc_vars = function(self, info_queue)

            info_queue[#info_queue+1] = G.P_CENTERS.e_foil
            info_queue[#info_queue+1] = G.P_CENTERS.e_holo
            info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
            info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter

            return {key = 'c_bunc_aura'}
        end
    })
end

-- Temporary extra chips

local original_end_round = end_round
function end_round()
    for _, v in ipairs(G.playing_cards) do
        if v.ability and type(v.ability) == 'table' and v.ability.temporary_extra_chips then
            v.ability.temporary_extra_chips = nil
        end
    end
    original_end_round()
end

local Card_get_chip_bonus = Card.get_chip_bonus
function Card:get_chip_bonus()
    return Card_get_chip_bonus(self) + (self.ability and type(self.ability) == 'table' and not self.debuff and self.ability.temporary_extra_chips or 0)
end

-- Miscellaneous stuff

-- Post-effect card eval (for specific cases)

function post_eval_card(card, context)
    if not card then return end
    if card.ability.set ~= 'Joker' and card.debuff then return {} end
    context = context or {}
    local ret = {}

    if card.ability.set == 'Enhanced' and card.config.center.post_effect then
        local enhancement = card:calculate_enhancement(context)
        if enhancement then
            ret.enhancement = enhancement
        end
    end

    return ret
end

local original_calculate_main_scoring = SMODS.calculate_main_scoring
function SMODS.calculate_main_scoring(context, scoring_hand)
    original_calculate_main_scoring(context, scoring_hand)

    -- Post-scoring

    for _, card in ipairs(scoring_hand or context.cardarea.cards) do
        local post_context = context
        post_context.main_scoring = true
        post_context.post_effect = true
        post_context.cardarea = G.play
        post_context.full_hand = G.play.cards
        post_context.scoring_hand = scoring_hand
        SMODS.trigger_effects({post_eval_card(card, post_context)}, card)
    end
end

-- Repetitions unlocking

local original_calculate_repetitions = SMODS.calculate_repetitions
SMODS.calculate_repetitions = function(card, context, reps)
    original_calculate_repetitions(card, context, reps)

    local locked_card

    for i = 1, #G.P_LOCKED do
        locked_card = G.P_LOCKED[i]

        if not locked_card.unlocked and locked_card.check_for_unlock and type(locked_card.check_for_unlock) == 'function' then
            locked_card:check_for_unlock({type = 'repetition', repetition_amount = #reps - 1})
        end
    end
end

-- Various on-money-gain functions

BUNCOMOD.funcs.ease_dollars = function(mod)
    if G.GAME.Trident and (to_big(mod) <= to_big(0)) then --Vermilion Trident 1/2
        G.GAME.ante_purchases = (G.GAME.ante_purchases or 0) + 1
    end

    G.GAME.money_spend_this_round = G.GAME.money_spend_this_round or 0 --Money spent in one shop unlock 1/2
    if to_big(mod) < to_big(0) then
        G.GAME.money_spend_this_round = G.GAME.money_spend_this_round - mod

        local locked_card

        for i = 1, #G.P_LOCKED do
            locked_card = G.P_LOCKED[i]

            if not locked_card.unlocked and locked_card.check_for_unlock and type(locked_card.check_for_unlock) == 'function' then
                locked_card:check_for_unlock({type = 'round_spend_money', round_spend_money = G.GAME.money_spend_this_round})
            end
        end
    end

    if G.jokers ~= nil then --Jokers that affect money income
        for _, v in ipairs(G.jokers.cards) do
            if v.config.center.key == 'j_bunc_fiendish' and not v.debuff then
                if to_big(mod) > to_big(0) then
                    if pseudorandom('fiendish'..G.SEED) < G.GAME.probabilities.normal / v.ability.extra.odds then
                        mod = to_big(1)
                        local message = to_number(mod)
                        G.E_MANAGER:add_event(Event{func = function()
                            card_eval_status_text(
                            v,
                            'extra',
                            nil, nil, nil,
                            {message = '$'..(message or '1'), colour = G.C.RED, instant = true})
                        return true end})
                    else
                        mod = to_big(mod) * to_big(2)
                        local message = to_number(mod)
                        G.E_MANAGER:add_event(Event{func = function()
                            card_eval_status_text(
                            v,
                            'extra',
                            nil, nil, nil,
                            {message = '$'..message, colour = G.C.ORANGE, instant = true})
                        return true end})
                    end
                end
            end
            if v.config.center.key == 'j_bunc_bounty_hunter' and not v.debuff then
                if to_big(mod) > to_big(0) then
                    v:calculate_joker({get_money = true})
                    mod = to_big(mod) - to_big(1)
                    G.E_MANAGER:add_event(Event{func = function()
                        card_eval_status_text(
                        v,
                        'extra',
                        nil, nil, nil,
                        {message = G.localization.misc.dictionary.bunc_robbed, colour = G.C.ORANGE, instant = true})
                    return true end})
                end
            end
        end
    end
    return(mod)
end

local original_game_update = Game.update

function Game:update(dt)

    -- The 8

    if G.GAME then
        G.GAME.THE_8_BYPASS = false
    end

    -- The Wind

    if G.GAME and G.GAME.blind and G.GAME.blind.name == 'bl_bunc_wind' and G.GAME.blind.ready and not G.GAME.blind.disabled then
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end

    -- Reactive

    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.bunc_reactive then
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end

    original_game_update(self, dt)
end

function BUNCOMOD.content.set_debuff(card)

    -- Fluorescent edition

    if card.edition and card.edition.bunc_fluorescent then
        return 'prevent_debuff'
    end

    -- Card position

    local my_pos = nil
    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then my_pos = i; break end
    end

    -- The Wind

    if G.GAME.blind.name == 'bl_bunc_wind' and G.GAME.blind.ready and not G.GAME.blind.disabled and my_pos == 1 then
        return true
    end

    -- The Prince

    if G.GAME.blind.name == 'bl_bunc_prince' and G.GAME.blind.ready and not G.GAME.blind.disabled and card.area == G.jokers then
        return true
    end

    -- Gameplan

    if my_pos then
        if G.jokers.cards[my_pos - 1] and G.jokers.cards[my_pos - 1].config.center.key == 'j_bunc_gameplan' and not G.jokers.cards[my_pos - 1].debuff then return true end
        if G.jokers.cards[my_pos + 1] and G.jokers.cards[my_pos + 1].config.center.key == 'j_bunc_gameplan' and not G.jokers.cards[my_pos + 1].debuff then return true end
    end

    -- Conquest

    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i].config.center.key == 'j_bunc_conquest' then
            if G.jokers.cards[i].ability.extra.joker ~= 0 and card == G.jokers.cards[i].ability.extra.joker then
                return true
            end
        end
    end

    -- Reactive

    for i = 1, #G.jokers.cards do
        if card == G.jokers.cards[i] and G.jokers.cards[i].ability.bunc_reactive then
            local condition
            for _, v in pairs(G.GAME.round_resets.blind_states) do
                if v == 'Skipped' then
                    condition = true
                end
            end
            if not condition then
                return true
            end
        end
    end

    return false
end

local original_start_run = Game.start_run

function Game:start_run(args)
    original_start_run(self, args)

    local sledgehammers = SMODS.find_card('j_bunc_sledgehammer')
    for _, card in ipairs(sledgehammers) do
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult + card.ability.extra.plus_xmult
    end
    if #sledgehammers >= 1 then
        G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra / G.P_CENTERS['j_bunc_sledgehammer'].config.extra.div_chance_denom
    end
end

SMODS.Tag:take_ownership('double', {
    loc_vars = function(self)
        if G.GAME and G.GAME.used_vouchers['v_bunc_pin_collector'] then
            return {key = 'tag_bunc_double'}
        end
    end,
})

-- Joker creation setup

SMODS.Atlas({key = 'bunco_jokers', path = 'Jokers/Jokers.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_exotic', path = 'Jokers/JokersExotic.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_legendary', path = 'Jokers/JokersLegendary.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_the_joker', path = 'Jokers/JokerBlind.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_taped', path = 'Jokers/JokerTaped.png', px = 127, py = 113})
SMODS.Atlas({key = 'bunco_jokers_headache', path = 'Jokers/JokerHeadache.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_winking', path = 'Jokers/JokerWinking.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_jokers_border', path = 'Jokers/JokerBorder.png', px = 71, py = 95})

SMODS.Sound({key = 'gunshot', path = 'gunshot.ogg'})
SMODS.Sound({key = 'mousetrap', path = 'mousetrap.ogg'})
SMODS.Sound({key = 'spade', path = 'spade.ogg'})
SMODS.Sound({key = 'club', path = 'club.ogg'})
SMODS.Sound({key = 'heart', path = 'heart.ogg'})
SMODS.Sound({key = 'diamond', path = 'diamond.ogg'})
SMODS.Sound({key = 'fleuron', path = 'fleuron.ogg'})
SMODS.Sound({key = 'halberd', path = 'halberd.ogg'})
SMODS.Sound({key = 'stone', path = 'stone.ogg'})

SMODS.Shader({key = 'headache', path = 'headache.fs'})

local function create_joker(joker)

    -- Sprite position

    local width = 10 -- Width of the spritesheet (in Jokers)

        -- Soul sprite

        if joker.rarity == 'Legendary' then
            joker.soul = get_coordinates(joker.position) -- Calculates coordinates based on the position variable
        end

    joker.position = get_coordinates(joker.position - 1)

    -- Sprite atlas

    local atlas

    if joker.type == nil then
        atlas = 'bunco_jokers'
    elseif joker.type == 'Exotic' then
        atlas = 'bunco_jokers_exotic'
    end

    if joker.rarity == 'Legendary' then
        atlas = 'bunco_jokers_legendary'
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

    -- Exotic Joker pool isolation

    local pool

    if joker.type == 'Exotic' then
        pool = BUNCOMOD.funcs.exotic_in_pool
    end

    -- Joker creation

    if not (joker.purist == false and config.purist_mode) then SMODS.Joker{
        name = joker.name,
        key = key,

        atlas = joker.custom_atlas or atlas,
        pos = joker.position,
        soul_pos = joker.soul,

        rarity = joker.rarity,
        cost = joker.cost,

        unlocked = joker.unlocked,
        check_for_unlock = joker.check_for_unlock,
        unlock_condition = joker.unlock_condition,
        discovered = false,

        blueprint_compat = joker.blueprint,
        eternal_compat = joker.eternal,
        perishable_compat = joker.perishable,

        process_loc_text = joker.process_loc_text,

        config = joker.custom_config or joker.config,
        loc_vars = joker.custom_vars or function(self, info_queue, card)

            -- Localization values

            local vars = {}

            for _, kv_pair in ipairs(joker.vars) do
                -- kv_pair is {a = 1}
                local k, v = next(kv_pair)
                -- k is `a`, v is `1`
                table.insert(vars, card.ability.extra[k])
            end

            return {vars = vars}
        end,
        locked_loc_vars = joker.locked_vars,

        calculate = joker.calculate,
        update = joker.update,
        remove_from_deck = joker.remove,
        add_to_deck = joker.add,
        set_ability = joker.set_ability,
        set_sprites = joker.set_sprites,
        load = joker.load,
        in_pool = joker.custom_in_pool or pool,

        effect = joker.effect
        }
    end
    if joker.drawsteps then
        for index, drawstep in ipairs(joker.drawsteps) do
            drawstep.key = key..'_'..index
            SMODS.DrawStep(drawstep)
        end
    end
end

-- Jokers

create_joker({ -- Cassette
    name = 'Cassette', position = 1,
    vars = {{chips = 45}, {mult = 6}, {side = 'A'}},
    custom_vars = function(self, info_queue, card)
        local vars = {card.ability.extra.chips, card.ability.extra.mult}

        local scale = 0.75

        local flip_nodes = {}
        localize{type = 'descriptions', set = 'Joker', key = 'j_bunc_cassette_extra', nodes = flip_nodes, vars = {}, scale = scale}

        local side_nodes = {}
        localize{type = 'descriptions', set = 'Joker', key = 'j_bunc_cassette_'..(card.ability.extra.side == 'A' and 'b' or 'a'), nodes = side_nodes, vars = vars, scale = scale}

        local main_end = {
            {n = G.UIT.R, config = {align = "cm", padding = 0.08}, nodes = {
                {n = G.UIT.R, config = {align = "cm"}, nodes =
                    flip_nodes[1]
                },
                {n = G.UIT.R, config = {align = "cm", padding = 0.08, colour = G.C.UI.BACKGROUND_DARK, r = 0.05}, nodes = {
                    {n = G.UIT.R, config = {align = "cm"}, nodes = {
                        {n = G.UIT.O, config = {
                            object = DynaText({string = {G.localization.misc.dictionary['bunc_'..(card.ability.extra.side == 'A' and 'b' or 'a')..'_side']}, colours = {G.C.WHITE},
                            scale = 0.32 * (scale) * G.LANG.font.DESCSCALE})
                        }},
                    }},
                    {n = G.UIT.R, config = {align = "cm", outline_colour = G.C.UI.BACKGROUND_WHITE, colour = G.C.UI.BACKGROUND_WHITE, outline = 1, r = 0.05, padding = 0.05}, nodes = {
                        {n = G.UIT.R, config = {align = "cm"}, nodes =
                            side_nodes[1]
                        },
                        {n = G.UIT.R, config = {align = "cm"}, nodes =
                            side_nodes[2]
                        }
                    }}
                }},
            }}
        }

        if card.ability.extra.side == 'A' then

            if card.area and card.area.config.collection and G.P_CENTERS['b_bunc_fairy'].unlocked then
                info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_light_suits_exotic'}
            else
                if G.GAME and G.GAME.Exotic then
                    info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_light_suits_exotic'}
                else
                    info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_light_suits'}
                end
            end

            return {key = self.key..'_a',
            main_end = main_end,
            vars = vars}
        else

            if card.area and card.area.config.collection and G.P_CENTERS['b_bunc_fairy'].unlocked then
                info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_dark_suits_exotic'}
            else
                if G.GAME and G.GAME.Exotic then
                    info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_dark_suits_exotic'}
                else
                    info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_dark_suits'}
                end
            end

            return {key = self.key..'_b',
            main_end = main_end,
            vars = vars}
        end
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.pre_discard and not context.blueprint then
            card:flip()
        end

        if context.flip and not context.blueprint then
            forced_message(G.localization.misc.dictionary['bunc_'..(card.ability.extra.side == 'A' and 'b' or 'a')..'_side'], card, G.C.RED)
            if card.ability.extra.side == 'A' then
                card.ability.extra.side = 'B'
            else
                card.ability.extra.side = 'A'
            end
        end

        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card
            local side = card.ability.extra.side

            if other_card:is_suit('Hearts') or other_card:is_suit('Diamonds') or other_card:is_suit('bunc_Fleurons') then
                if side == 'A' then
                    return {
                        chips = card.ability.extra.chips,
                        card = card
                    }
                end
            end

            if other_card:is_suit('Spades') or other_card:is_suit('Clubs') or other_card:is_suit('bunc_Halberds') then
                if side == 'B' then
                    return {
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end
    end,
    update = function(self, card)
        if card.VT.w <= 0 then
            if card.ability.extra.side == 'A' then
                card.children.center:set_sprite_pos(coordinate(1))
            else
                card.children.center:set_sprite_pos(coordinate(2))
            end
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            if card.ability and card.ability.extra and card.ability.extra.side then
                if card.ability.extra.side == 'A' then
                    card.children.center:set_sprite_pos(coordinate(1))
                else
                    card.children.center:set_sprite_pos(coordinate(2))
                end
            end
        end
    end
})

create_joker({ -- Mosaic
    name = 'Mosaic', position = 3,
    vars = {{mult = 6}},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_stone then
                    tally = tally + 1
                end
            end
            if tally >= 5 then
                unlock_card(self)
            end
        end
    end,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_stone then condition = true break end
            end
        end
        return condition
    end,
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
    vars = {{base = 3}, {bonus = 0.1}, {xmult = 3}, {tally = 0}, {unlock = 10}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock}}
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'modify_deck' then
            local count = 0
            for _, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then count = count + 1 end
            end
            if count >= self.config.extra.unlock then
                unlock_card(self)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
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
        end
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            card.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.tally = card.ability.extra.tally + 1 end
            end

            if (card.ability.extra.base - card.ability.extra.tally * card.ability.extra.bonus) >= 1 then
                card.ability.extra.xmult = card.ability.extra.base - card.ability.extra.tally * card.ability.extra.bonus
            else
                card.ability.extra.xmult = 1
            end
        end
    end
})

create_joker({ -- Crop Circles
    name = 'Crop Circles', position = 5,
    rarity = 'Common', cost = 4,
    custom_vars = function(self, info_queue, card)
        if card.area and card.area.config.collection and G.P_CENTERS['b_bunc_fairy'].unlocked then
            return {key = self.key..'_exotic'}
        else
            if G.GAME and G.GAME.Exotic then
                return {key = self.key..'_exotic'}
            end
        end
    end,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card

            if other_card.config.center ~= G.P_CENTERS.m_stone then

                if other_card.base.suit == ('bunc_Fleurons') then
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
    vars = {{bonus = 0.2}, {xmult = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true, perishable = false,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_xray_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.emplaced_card and context.emplaced_card.facing == 'back' and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.bonus

            forced_message('X'..tostring(card.ability.extra.xmult)..' '..localize('k_mult'), card, G.C.RED, card.ability.extra.bonus)
        end

        if context.joker_main then
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
    vars = {{levels = 2}, {trash_list = {}}, {level_up_list = {}}, {unlock = 10}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock}}
    end,
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'round_deck_size' and args.round_deck_size_diff <= -self.config.extra.unlock then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if not context.blueprint then
            if context.full_hand and not context.other_card then
                card.ability.extra.trash_list = {}
                for k, v in ipairs(context.full_hand) do
                    table.insert(card.ability.extra.trash_list, v)
                end
            end

            if (context.after or context.first_hand_drawn) and G.GAME.current_round.hands_left == 1 then -- For shaking the card when there's one hand left
                event({func = function ()
                    local eval = function() return G.GAME.current_round.hands_left == nil or G.GAME.current_round.hands_left ~= 0 end
                    juice_card_until(card, eval, true)
                return true end})
            end

            if context.after and G.GAME.current_round.hands_left <= 0 and context.scoring_name then
                ---- Event (1): display message
                forced_message(localize('k_level_up_ex'), card, G.C.RED, true)
                ---- Events (2): animate level up
                -- line copied from planet use
                update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(context.scoring_name, 'poker_hands'),chips = G.GAME.hands[context.scoring_name].chips, mult = G.GAME.hands[context.scoring_name].mult, level=G.GAME.hands[context.scoring_name].level})
                -- Has immediate effects
                level_up_hand(card, context.scoring_name, false, card.ability.extra.levels)
                card.ability.extra.level_up_list[context.scoring_name] =
                    (card.ability.extra.level_up_list[context.scoring_name] or 0) + card.ability.extra.levels
                local trash_list = card.ability.extra.trash_list
                ---- Event (3): start_dissolve() on every card to trash
                -- start_dissolve() calls run concurrently with blocking events.
                -- To treat them as a normal event, wrap them in a
                -- 'before' event with delay equal to how long start_dissolve() takes

                -- (From Firch) UPD: Trying to make this work with other Dread copies a bit better,
                -- added an additional check if the cards are already destroyed.
                -- Without this check a second Dread would cause a destroying sound to play
                -- despite not having any cards to destroy
                local dissolve_time_fac = 3
                event({
                    trigger = 'before',
                    delay = 0.7*dissolve_time_fac*1.051,
                    func = function()
                        big_juice(card)
                        for _, card_to_trash in ipairs(trash_list) do
                            if not card_to_trash.removed then
                                card_to_trash:start_dissolve(nil, nil, dissolve_time_fac)
                            end
                        end
                        return true
                    end
                })
                update_hand_text({delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                -- Has immediate effects, so make sure this is set for other mods
                for _, card_to_trash in ipairs(trash_list) do
                    card_to_trash.destroyed = true
                end
                SMODS.calculate_context({remove_playing_cards = true, removed = trash_list})
                card.ability.extra.trash_list = {}
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
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local eval = evaluate_poker_hand(args.cards)
            if next(eval['Flush Five']) then
                unlock_card(self)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            for k, v in pairs(card.ability.extra.card_list) do
                if (v:get_id() == context.other_card:get_id())
                and (v:is_suit(context.other_card.base.suit) or context.other_card.config.center == G.P_CENTERS.m_wild)
                and context.other_card.config.center ~= G.P_CENTERS.m_stone then
                    return {
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end

            if not context.blueprint then
                if context.other_card.config.center ~= G.P_CENTERS.m_stone then
                    table.insert(card.ability.extra.card_list, context.other_card) -- Add the card to the list
                end
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
        if context.after and context.scoring_hand and #context.scoring_hand == 2 and not context.blueprint then
            if context.poker_hands and next(context.poker_hands['Pair']) then
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('card1', 1); context.scoring_hand[1]:juice_up(0.3, 0.3); return true end })
                event({trigger = 'after', delay = 0.1,  func = function() context.scoring_hand[1]:change_suit(context.scoring_hand[2].config.card.suit); return true end })
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[1]:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); context.scoring_hand[1]:juice_up(0.3, 0.3); return true end })
                forced_message(G.localization.misc.dictionary.bunc_copied, card, G.C.RED, true)
            end
        end
    end
})

create_joker({ -- Ghost Print
    name = 'Ghost Print', position = 10,
    vars = {{last_hand = 'Nothing'}},
    custom_vars = function(self, info_queue, card)
        local vars
        if card.ability.extra.last_hand == 'Nothing' then
            vars = {G.localization.misc.dictionary.bunc_nothing}
        else
            vars = {G.localization.misc['poker_hands'][card.ability.extra.last_hand]}
        end
        return {vars = vars}
    end,
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
    vars = {{dollars = 50}, {cost = -100}},
    custom_vars = function(self, info_queue, card)
        local vars = {card.ability.extra.dollars, card.ability.extra.cost}
        if card.area and card.area.config.collection then
            return {key = self.key..'_full', vars = vars}
        else
            return {vars = vars}
        end
    end,
    rarity = 'Uncommon', cost = 3,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'round_spend_money' and to_number(args.round_spend_money) >= 100 then
            unlock_card(self)
        end
    end,
    add = function(self, card)
        ease_dollars(card.ability.extra.dollars)
        card:set_cost()
    end
})

create_joker({ -- Basement
    name = 'Basement', position = 12,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    purist = false,
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
    vars = {{bonus = 6}, {chips = 0}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['Pair']) and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus

            forced_message('+'..tostring(card.ability.extra.chips)..' '..G.localization.misc.dictionary.bunc_chips, card, G.C.BLUE, true)
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
    blueprint = true, eternal = true, perishable = false,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'defeat_blind' and args.blind.name == 'Amber Acorn' then
            unlock_card(self)
        end
    end,
    purist = false,
    calculate = function(self, card, context)
        if context.setting_blind and not card.getting_sliced and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus

            event({ trigger = 'after', delay = 0.2, func = function()
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 0.85);return true end })
                delay(0.15)
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1.15);return true end })
                delay(0.15)
                event({ func = function() G.jokers:shuffle('aajk'); play_sound('cardSlide1', 1);return true end })
                delay(0.5)
            return true end })

            forced_message('+'..tostring(card.ability.extra.mult)..' '..localize('k_mult'), card, G.C.RED)
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
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.h = card.T.w
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.y = card.children.center.scale.x
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- JMJB
    name = 'JMJB', position = 15,
    vars = {{unlock = 50}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock, G.PROFILES[G.SETTINGS.profile].booster_packs_opened or 0}}
    end,
    rarity = 'Rare', cost = 5,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'open_pack' and args.packs_total >= self.config.extra.unlock then
            unlock_card(self)
        end
    end,
    purist = false,
    calculate = function(self, card, context)
        if context.open_booster and context.card.ability.name then
            if (context.open_booster and context.card.ability.name == 'Standard Pack' or
            context.open_booster and context.card.ability.name == 'Jumbo Standard Pack' or
            context.open_booster and context.card.ability.name == 'Mega Standard Pack') then
                event({
                    trigger = 'after',
                    delay = 0,
                    blockable = false,
                    blocking = false,
                    func = function()
                        if G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                            for _, v in ipairs(G.pack_cards.cards) do
                                if v.config.center == G.P_CENTERS.c_base then
                                    v:set_ability(G.P_CENTER_POOLS.Enhanced[math.random(#G.P_CENTER_POOLS.Enhanced)])
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

            if context.scoring_hand then
                for i = 1, #context.scoring_hand do
                    if (context.scoring_hand[i]:get_id() >= 6 or
                    context.scoring_hand[i]:get_id() < 2) and
                    context.scoring_hand[i].config.center ~= G.P_CENTERS.m_stone then
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
    vars = {{unlock = 5}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock}}
    end,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'repetition' and args.repetition_amount >= self.config.extra.unlock then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.scoring_hand and context.other_card == context.scoring_hand[#context.scoring_hand] then

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
    vars = {{odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_double_nothing_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    purist = false
})

create_joker({ -- Carnival
    name = 'Carnival', position = 19,
    vars = {{ante = -huge_number}},
    custom_vars = function (self, info_queue, card)
        local active = (G.GAME and G.GAME.round_resets and (G.GAME.round_resets.ante > card.ability.extra.ante)) or false
        local main_end = {
            {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
                {n=G.UIT.C, config={ref_table = self, align = "m", colour = active and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06}, nodes={
                    {n=G.UIT.T, config={text = ' '..localize(active and 'k_active' or 'bunc_inactive')..' ',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.9}},
                }}
            }}
        }
        return {main_end = main_end}
    end,
    rarity = 'Rare', cost = 10,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'ante_down' and args.ante == 0 then
            unlock_card(self)
        end
    end,
    purist = false,
    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind.boss and not context.other_card and not context.blueprint then
            if G.GAME.round_resets.ante > card.ability.extra.ante then
                local destructable_jokers = {}
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] ~= card and not G.jokers.cards[i].ability.eternal and not G.jokers.cards[i].getting_sliced then destructable_jokers[#destructable_jokers+1] = G.jokers.cards[i] end
                end
                local joker_to_destroy = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('carnival')) or nil

                if joker_to_destroy and not card.getting_sliced then
                    joker_to_destroy.getting_sliced = true
                    card:juice_up(0.8, 0.8)
                    card.ability.extra.ante = G.GAME.round_resets.ante
                    ease_ante(-1)
                    forced_message(G.localization.misc.dictionary.bunc_loop, card, G.C.BLACK)
                    joker_to_destroy:start_dissolve({G.C.BLACK}, nil, 1.6)
                    play_sound('slice1', 0.96+math.random()*0.08)
                end
            end
        end
    end
})

create_joker({ -- Sledgehammer
    name = 'Sledgehammer', position = 20,
    vars = {{plus_xmult = 1}, {div_chance_denom = 4}},
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_glass then
                    tally = tally + 1
                end
            end
            if tally >= 5 then
                unlock_card(self)
            end
        end
    end,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_glass then condition = true break end
            end
        end
        return condition
    end,
    add = function(self, card)
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult + card.ability.extra.plus_xmult
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_glass then
                deck_card.ability.Xmult = deck_card.ability.Xmult + card.ability.extra.plus_xmult
                deck_card.ability.x_mult = deck_card.ability.x_mult + card.ability.extra.plus_xmult
            end
        end
        if #SMODS.find_card('j_bunc_sledgehammer') == 0 then
            G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra / self.config.extra.div_chance_denom

            for _, deck_card in pairs(G.playing_cards) do
                if deck_card.config.center == G.P_CENTERS.m_glass then
                    deck_card.ability.extra = deck_card.ability.extra / self.config.extra.div_chance_denom
                end
            end
        end
    end,
    remove = function(self, card)
        G.P_CENTERS.m_glass.config.Xmult = G.P_CENTERS.m_glass.config.Xmult - card.ability.extra.plus_xmult
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_glass then
                deck_card.ability.Xmult = deck_card.ability.Xmult - card.ability.extra.plus_xmult
                deck_card.ability.x_mult = deck_card.ability.x_mult - card.ability.extra.plus_xmult
            end
        end
        if #SMODS.find_card('j_bunc_sledgehammer') == 0 then
            G.P_CENTERS.m_glass.config.extra = G.P_CENTERS.m_glass.config.extra * self.config.extra.div_chance_denom

            for _, deck_card in pairs(G.playing_cards) do
                if deck_card.config.center == G.P_CENTERS.m_glass then
                    deck_card.ability.extra = deck_card.ability.extra * self.config.extra.div_chance_denom
                end
            end
        end
    end
})

create_joker({ -- Doorhanger
    name = 'Doorhanger', position = 21,
    rarity = 'Rare', cost = 10,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_custom' and G.GAME.max_common_jokers == 0 then
            unlock_card(self)
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.w = card.T.w / 1.44
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.x = card.children.center.scale.x / 1.44
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- Fingerprints
    name = 'Fingerprints', position = 22,
    vars = {{bonus = 50}, {scoring_card_set = {}}},
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.scoring_name ~= nil and context.scoring_hand and not context.blueprint then
            card.ability.extra.scoring_card_set = {}
            for i = 1, #context.scoring_hand do
                card.ability.extra.scoring_card_set[context.scoring_hand[i].unique_val] = true
            end
        end

        if context.end_of_round and not context.other_card and not context.blueprint then
            for _, v in ipairs(G.playing_cards) do
                if card.ability.extra.scoring_card_set[v.unique_val] then
                    v.ability = v.ability or {}
                    v.ability.temporary_extra_chips = (v.ability.temporary_extra_chips or 0) + card.ability.extra.bonus
                end
            end
            -- not needed, but good style to fail fast
            card.ability.extra.scoring_card_set = nil

            forced_message(localize('k_upgrade_ex'), card, G.C.CHIPS, true)
        end
    end
})

create_joker({ -- Zero Shapiro
    name = 'Zero Shapiro', position = 23,
    vars = {{odds = 8}},
    custom_vars = function(self, info_queue, card)
        local vars

        info_queue[#info_queue+1] = {set = 'Tag', key = 'tag_d_six'}

        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center.key == 'm_stone' or context.other_card:get_id() == 0 or not tonumber(context.other_card.base.value) and context.other_card.base.value ~= 'Ace' then
                if pseudorandom('zero_shapiro'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                    return {
                        extra = {message = '+'..localize{type = 'name_text', key = 'tag_d_six', set = 'Tag'}, colour = G.C.GREEN},
                        card = card,
                        func = function()
                            event({func = function()
                                add_tag(Tag('tag_d_six'))
                                return true
                            end})
                        end
                    }
                end
            end
        end
    end
})

create_joker({ -- Nil Bill
    name = 'Nil Bill', position = 24,
    vars = {{bonus = 2}},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.remove_playing_cards then
            ease_dollars(card.ability.extra.bonus * #context.removed)
            forced_message('$'..card.ability.extra.bonus, card, G.C.MONEY)
        end
    end
})

create_joker({ -- Bierdeckel
    name = 'Bierdeckel', position = 25,
    vars = {{bonus = 10}},
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if (context.after or context.discard and context.other_card == context.full_hand[1]) then
            local full_hand_set = {}
            if context.discard then
                for _, c in ipairs(context.full_hand) do
                    full_hand_set[c] = true
                end
            end
            for _, c in ipairs(G.hand.cards) do
                if not full_hand_set[c] and not c.highlighted then
                    c.ability = c.ability or {}
                    c.ability.temporary_extra_chips = (c.ability.temporary_extra_chips or 0) + card.ability.extra.bonus
                end
            end

            -- maybe juice all held cards, that'd be fun
            forced_message(localize('k_upgrade_ex'), context.blueprint_card or card, G.C.CHIPS, true)
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.h = card.T.w
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.y = card.children.center.scale.x
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- Registration Plate
    name = 'Registration Plate', position = 26,
    vars = {{combination = ''}, {card_list = {}}, {ranks = {}}},
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_city_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
    custom_vars = function(self, info_queue, card)
        local vars
        if card.ability.extra.combination == '' then
            vars = {'2, 3, 4, 5 '..G.localization.misc.dictionary.bunc_word_and..' 6'}
        else
            vars = {card.ability.extra.combination}
        end
        return {vars = vars}
    end,
    add = function(self, card)
        card.ability.extra.card_list = {}

        for i = 1, 5 do
            local index = math.random(#G.deck.cards)
            table.insert(card.ability.extra.card_list, G.deck.cards[index])
        end

        local combination = {}

        for i = 1, 5 do
            table.insert(combination, card.ability.extra.card_list[i].base.value)
        end

        card.ability.extra.ranks = {}

        for i = 1, 5 do
            table.insert(card.ability.extra.ranks, card.ability.extra.card_list[i]:get_id())
        end

        card.ability.extra.combination = table.concat(combination, ", ", 1, 4).." "..G.localization.misc.dictionary.bunc_word_and.." "..table.concat(combination, " ", 5)
    end,
    calculate = function(self, card, context)
        if context.end_of_round and #G.deck.cards ~= 0 then
            card.ability.extra.card_list = {}

            for i = 1, 5 do
                local index = math.random(#G.deck.cards)
                table.insert(card.ability.extra.card_list, G.deck.cards[index])
            end

            local combination = {}

            for i = 1, 5 do
                table.insert(combination, card.ability.extra.card_list[i].base.value)
            end

            card.ability.extra.ranks = {}

            for i = 1, 5 do
                table.insert(card.ability.extra.ranks, card.ability.extra.card_list[i]:get_id())
            end

            card.ability.extra.combination = table.concat(combination, ", ", 1, 4).." "..G.localization.misc.dictionary.bunc_word_and.." "..table.concat(combination, " ", 5)
        end
    end
})

create_joker({ -- Slothful
    name = 'Slothful', position = 27,
    vars = {{mult = 9}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_wild then
                    tally = tally + 1
                end
            end
            if tally >= 5 then
                unlock_card(self)
            end
        end
    end,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_wild then condition = true break end
            end
        end
        return condition
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.config.center == G.P_CENTERS.m_wild then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Neon
    name = 'Neon', position = 28,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_fluorescent
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if args.cards[j].debuff then
                    tally = tally + 1
                end
            end
            if tally >= 5 then
                unlock_card(self)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.enhance_card and not context.blueprint then
            if context.enhanced_card:get_edition() == nil then
                context.enhanced_card:set_edition({bunc_fluorescent = true})
                event({func = function() big_juice(card) return true end})
            end
        end
    end

})

create_joker({ -- Gameplan
    name = 'Gameplan', position = 29,
    vars = {{mult = 20}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'defeat_blind' and args.blind.name == 'Verdant Leaf' then
            unlock_card(self)
        end
    end,
    update = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    remove = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local mult = 0

            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then my_pos = i; break end
            end
            if G.jokers.cards[my_pos - 1] then mult = mult + card.ability.extra.mult end
            if G.jokers.cards[my_pos + 1] then mult = mult + card.ability.extra.mult end

            if mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { mult }
                    },
                    mult_mod = mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Conquest
    name = 'Conquest', position = 30,
    vars = {{chips = 200}, {joker = 0}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'defeat_blind' and args.blind.name == 'Crimson Heart' then
            unlock_card(self)
        end
    end,
    update = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    remove = function(self, card)
        if G.jokers then
            for i = 1, #G.jokers.cards do
                G.GAME.blind:debuff_card(G.jokers.cards[i])
            end
        end
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then my_pos = i; break end
            end

            if #G.jokers.cards > 1 then
                card.ability.extra.joker = G.jokers.cards[math.random(#G.jokers.cards)]
                while card.ability.extra.joker == G.jokers.cards[my_pos] do
                    card.ability.extra.joker = G.jokers.cards[math.random(#G.jokers.cards)]
                end
            else
                card.ability.extra.joker = 0
            end

            if card.ability.extra.joker ~= 0 then
                forced_message(G.localization.misc.dictionary.bunc_debuffed, card, G.C.RED, true, card.ability.extra.joker)
            end
        end
        if context.joker_main then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_chips',
                    vars = { card.ability.extra.chips }
                },
                chip_mod = card.ability.extra.chips,
                card = context.blueprint_card or card
            }
        end
    end
})

create_joker({ -- Hierarchy of Needs
    name = 'Hierarchy of Needs', position = 31,
    vars = {{bonus = 5}, {mult = 20}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    update = function(self, card)
        if G.playing_cards then
            local required_ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'}
            local set_count = 0

            for _, suit_data in pairs(SMODS.Suits) do
                local suit = tostring(suit_data.key)
                local rank_count = {}

                for _, rank in ipairs(required_ranks) do
                    rank_count[rank] = 0
                end

                for _, deck_card in ipairs(G.playing_cards) do
                    local rank

                    if deck_card.config.center ~= G.P_CENTERS.m_stone and deck_card.base.suit == suit then
                        rank = deck_card.base.value
                    end

                    if rank and rank_count[rank] then
                        rank_count[rank] = rank_count[rank] + 1

                        local complete_set = true
                        for _, req_rank in ipairs(required_ranks) do
                            if rank_count[req_rank] == 0 then
                                complete_set = false
                                break
                            end
                        end

                        if complete_set then
                            set_count = set_count + 1
                            for _, req_rank in ipairs(required_ranks) do
                                rank_count[req_rank] = rank_count[req_rank] - 1
                            end
                        end
                    end
                end
            end
            card.ability.extra.mult = card.ability.extra.bonus * set_count
        else
            card.ability.extra.mult = card.ability.extra.bonus * 4
        end
    end,
    calculate = function(self, card, context)
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

create_joker({ -- Dwarven
    name = 'Dwarven', position = 32,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return {}
    end,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local stone, steel, gold = false, false, false
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_stone then
                    stone = true
                end
                if args.cards[j].config.center == G.P_CENTERS.m_steel then
                    steel = true
                end
                if args.cards[j].config.center == G.P_CENTERS.m_gold then
                    gold = true
                end
            end
            if stone and steel and gold then
                unlock_card(self)
            end
        end
    end,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_stone then condition = true break end
            end
        end
        return condition
    end,
    add = function(self, card)
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_stone then
                deck_card.ability.h_x_mult = (deck_card.ability.h_x_mult or 0) + G.P_CENTERS.m_steel.config.h_x_mult
                deck_card.ability.h_dollars = (deck_card.ability.h_dollars or 0) + G.P_CENTERS.m_gold.config.h_dollars
            end
        end
        G.P_CENTERS.m_stone.config.h_x_mult = (G.P_CENTERS.m_stone.config.h_x_mult or 0) + G.P_CENTERS.m_steel.config.h_x_mult
        G.P_CENTERS.m_stone.config.h_dollars = (G.P_CENTERS.m_stone.config.h_dollars or 0) + G.P_CENTERS.m_gold.config.h_dollars
    end,
    remove = function(self, card)
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_stone then
                deck_card.ability.h_x_mult = deck_card.ability.h_x_mult - G.P_CENTERS.m_steel.config.h_x_mult
                deck_card.ability.h_dollars = deck_card.ability.h_dollars - G.P_CENTERS.m_gold.config.h_dollars
            end
        end
        G.P_CENTERS.m_stone.config.h_x_mult = G.P_CENTERS.m_stone.config.h_x_mult - G.P_CENTERS.m_steel.config.h_x_mult
        G.P_CENTERS.m_stone.config.h_dollars = G.P_CENTERS.m_stone.config.h_dollars - G.P_CENTERS.m_gold.config.h_dollars
    end
})

create_joker({ -- Aristocrat
    name = 'Aristocrat', position = 33,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_custom' and G.GAME.booster_packs_opened == 0 then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.open_booster and context.card.ability.name and not G.GAME.rerolled_pack then
            event({
                trigger = 'after',
                delay = 0,
                blockable = false,
                blocking = false,
                func = function()
                    if G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and (G.pack_cards.VT.y < G.ROOM.T.h) then
                        G.GAME.pack_choices = G.GAME.pack_choices + 1
                        if G.GAME.pack_choices > #G.pack_cards.cards then
                            G.GAME.pack_choices = #G.pack_cards.cards
                        end
                        return true
                    end
                end
            })
        end
    end
})

create_joker({ -- Metallurgist
    name = 'Metallurgist', position = 34,
    vars = {{mult = 10}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return {vars = {card.ability.extra.mult}}
    end,
    rarity = 'Common', cost = 6,
    blueprint = false, eternal = true,
    unlocked = true,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_gold then condition = true break end
            end
        end
        return condition
    end,
    add = function(self, card)
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_gold then
                deck_card.ability.h_mult = (deck_card.ability.h_mult and (deck_card.ability.h_mult + card.ability.extra.mult) or 0)
            end
        end
        G.P_CENTERS.m_gold.config.h_mult = (G.P_CENTERS.m_gold.config.h_mult or 0) + card.ability.extra.mult
    end,
    remove = function(self, card)
        for _, deck_card in pairs(G.playing_cards) do
            if deck_card.config.center == G.P_CENTERS.m_gold then
                deck_card.ability.h_mult = deck_card.ability.h_mult - card.ability.extra.mult
            end
        end
        G.P_CENTERS.m_gold.config.h_mult = (G.P_CENTERS.m_gold.config.h_mult and (G.P_CENTERS.m_gold.config.h_mult - card.ability.extra.mult) or 0)
    end
})

create_joker({ -- Juggalo
    name = 'Juggalo', position = 35,
    vars = {{unlock = 10}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter
        return {}
    end,
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock, G.PROFILES[G.SETTINGS.profile].consumables_with_edition_used or 0}}
    end,
    rarity = 'Rare', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'use_consumable_with_edition' and args.used_total >= self.config.extra.unlock then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            if G.consumeables.cards[1] then
                local consumables_table = {}
                for i = 1, #G.consumeables.cards do
                    if G.consumeables.cards[i]:get_edition() == nil then
                        table.insert(consumables_table, G.consumeables.cards[i])
                    end
                end
                local consumable = consumables_table[math.random(#consumables_table)]
                local edition = poll_edition('standard_edition'..G.GAME.round_resets.ante, nil, true, true,
                {'e_holo', 'e_foil', 'e_polychrome', 'e_bunc_glitter'})
                if consumable then
                    event({func = function()
                        consumable:set_edition(edition, true)
                        return true
                    end})
                    forced_message(localize('k_upgrade_ex'), card, G.C.RED, true, consumable)
                end
            end
        end
    end
})

create_joker({ -- Head in the Clouds
    name = 'Head in the Clouds', position = 36,
    vars = {{odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_custom' then
            local handname, level, order = 'High Card', to_big(-1), 100
            for k, v in pairs(G.GAME.hands) do
                if v.level > level or (v.level == level and order > v.order) then
                    level = v.level
                    handname = k
                end
            end
            if handname == 'High Card' and level > to_big(0) then
                unlock_card(self)
            end
        end
    end,
    custom_in_pool = function()
        local condition = false
        if G.GAME and G.GAME.hands then
            if G.GAME.hands['High Card'].level > to_big(1) then condition = true end
        end
        return condition
    end,
    calculate = function(self, card, context)
        if context.level_up_hand and context.level_up_hand ~= self.name then
            if pseudorandom('head_in_the_clouds'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                event({func = function()
                    local hand = 'High Card'
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
                    level_up_hand(context.blueprint_card or card, self.name, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                return true end})
            end
        end
    end
})

create_joker({ -- Headshot
    name = 'Headshot', position = 37,
    vars = {{xmult = 3}},
    rarity = 'Uncommon', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_hand then
            local face_amount = 0
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_face() then
                    face_amount = face_amount + 1
                end
            end

            if face_amount == 1 then
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

create_joker({ -- Trigger Finger
    name = 'Trigger Finger', position = 38,
    vars = {{xmult = 4}, {odds = 10}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {card.ability.extra.xmult, G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {card.ability.extra.xmult, 1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'defeat_blind' and args.blind.name == 'Cerulean Bell' then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.highlight_card and (G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.DRAW_TO_HAND) then
            local cards = {}
            for i = 1, #G.hand.highlighted do
                table.insert(cards, G.hand.highlighted[i])
            end
            event({trigger = 'after', func = function()
                for i = 1, #cards do
                    if not cards[i].highlighted then
                        cards[i]:highlight()
                    end
                end
                if G.hand.highlighted then
                    G.FUNCS.play_cards_from_highlighted()
                    play_sound('bunc_gunshot')
                    forced_message(G.localization.misc.dictionary.bunc_pew, card, G.C.RED)
                end
            return true end})
        end
        if context.joker_main then
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
})

create_joker({ -- Hopscotch
    name = 'Hopscotch', position = 39,
    vars = {{discard = 1}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['Straight']) then
            ease_discard(card.ability.extra.discard)
            forced_message('+'..card.ability.extra.discard..' '..localize('b_discard'), card, G.C.RED, true)
        end
    end
})

create_joker({ -- Pawn
    name = 'Pawn', position = 40,
    custom_vars = function(self, info_queue, card)
        if G.playing_cards and #G.playing_cards > 0 then
            local rank = math.huge
            for _, deck_card in ipairs(G.playing_cards) do
                if deck_card:get_id() < rank and deck_card.config.center ~= G.P_CENTERS.m_stone then
                    rank = deck_card:get_id()
                end
            end
            return {vars = {localize(tostring(rank), 'ranks')}}
        end
        return {vars = {localize('2', 'ranks')}}
    end,
    rarity = 'Common', cost = 5,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and context.scoring_hand and not context.blueprint then
            for i = 1, #context.scoring_hand do
                local condition = false
                local other_card = context.scoring_hand[i]
                local rank = math.huge
                for _, deck_card in ipairs(G.playing_cards) do
                    if deck_card:get_id() < rank and deck_card.config.center ~= G.P_CENTERS.m_stone then
                        rank = deck_card:get_id()
                    end
                end
                if other_card:get_id() == rank then
                    condition = true
                    event({trigger = 'after', delay = 0.15, func = function() other_card:flip(); play_sound('card1', 1); other_card:juice_up(0.3, 0.3); return true end })
                    event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            local suit_data = SMODS.Suits[other_card.base.suit]
                            local suit_prefix = suit_data.card_key
                            local rank_data = SMODS.Ranks[other_card.base.value]
                            local behavior = rank_data.strength_effect or { fixed = 1, ignore = false, random = false }
                            local rank_suffix = ''
                            if behavior.ignore or not next(rank_data.next) then
                                return true
                            elseif behavior.random then
                                -- TODO doesn't respect in_pool
                                local r = pseudorandom_element(rank_data.next, pseudoseed('strength'))
                                rank_suffix = SMODS.Ranks[r].card_key
                            else
                                local ii = (behavior.fixed and rank_data.next[behavior.fixed]) and behavior.fixed or 1
                                rank_suffix = SMODS.Ranks[rank_data.next[ii]].card_key
                            end
                            other_card:set_base(G.P_CARDS[suit_prefix .. '_' .. rank_suffix])
                            return true
                        end
                    })
                    event({trigger = 'after', delay = 0.15, func = function() other_card:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); other_card:juice_up(0.3, 0.3); return true end })
                end
                if condition then delay(0.7 * 1.25) end
            end
        end
    end
})

create_joker({ -- Puzzle Board
    name = 'Puzzle Board', position = 41,
    vars = {{odds = 4}},
    custom_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter

        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Tarot' then
            if pseudorandom('puzzle_board'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                local cards = {}
                local edition = poll_edition('wheel_of_fortune', nil, true, true)

                for i = 1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_edition() == nil then
                        table.insert(cards, G.hand.highlighted[i])
                    end
                end
                event({trigger = 'after', func = function()
                    if cards and #cards > 0 then
                        big_juice(card)
                        cards[math.random(#cards)]:set_edition(edition, true)
                    end
                return true end})
            else
                event({trigger = 'after', func = function()
                    forced_message(localize('k_nope_ex'), card, G.C.RED)
                return true end})
            end
        end
    end
})

create_joker({ -- Vandalism
    name = 'Vandalism', position = 42, soul = coordinate(42),
    vars = {{odds = 4}, {xmult = 2}, {card_list = {}}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds, card.ability.extra.xmult}
        else
            vars = {1, card.ability.extra.odds, card.ability.extra.xmult}
        end
        return {vars = vars}
    end,
    rarity = 'Rare', cost = 6,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'play_all_flipped' then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.stay_flipped and not context.blueprint then
            big_juice(card)
        end
        if context.play_cards then
            card.ability.extra.card_list = {}
            for i = 1, #G.hand.highlighted do
                if G.hand.highlighted[i].facing == 'back' then
                    table.insert(card.ability.extra.card_list, G.hand.highlighted[i])
                end
            end
        end
        if context.individual and context.cardarea == G.play and context.other_card then
            local condition = false
            for i = 1, #card.ability.extra.card_list do
                local flipped_card = card.ability.extra.card_list[i]
                if context.other_card == flipped_card then
                    condition = true
                    break
                end
            end
            if condition then return {
                x_mult = card.ability.extra.xmult,
                card = card
            }
            end
        end
    end,
    set_sprites = function(self, card, front)
        if card.config.center.discovered or card.bypass_discovery_center then
            card.children.center = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[(G.GAME.viewed_back or G.GAME.selected_back) and ((G.GAME.viewed_back or G.GAME.selected_back)[G.SETTINGS.colourblind_option and 'hc_atlas' or 'lc_atlas'] or (G.GAME.viewed_back or G.GAME.selected_back).atlas) or 'centers'], card.params.bypass_back or (card.playing_card and G.GAME[card.back].pos or G.P_CENTERS['b_red'].pos))
            card.children.center.states.hover = card.states.hover
            card.children.center.states.click = card.states.click
            card.children.center.states.drag = card.states.drag
            card.children.center.states.collide.can = false
            card.children.center:set_role({major = card, role_type = 'Glued', draw_major = card})

            card.children.back = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS['bunc_bunco_jokers_winking'], coordinate(1))
            card.children.back.states.hover = card.states.hover
            card.children.back.states.click = card.states.click
            card.children.back.states.drag = card.states.drag
            card.children.back.states.collide.can = false
            card.children.back:set_role({major = card, role_type = 'Glued', draw_major = card})
        end
        card.draw_bypass = {floating_sprite = true}
    end,
    drawsteps = {
        {
            order = 61,
            func = function(card, layer)
                if card.config.center.key == 'j_bunc_vandalism' and (card.config.center.discovered or card.bypass_discovery_center) then
                    card.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, card.children.center, 0, 0)
                    if card.edition then
                        for k, v in pairs(G.P_CENTER_POOLS.Edition) do
                            if card.edition[v.key:sub(3)] and v.shader then
                                card.children.floating_sprite:draw_shader(v.shader, nil, card.ARGS.send_to_shader, nil, card.children.center, 0, 0)
                            end
                        end
                    end
                end
            end
        }
    }
})

create_joker({ -- Protester
    name = 'Protester', position = 43,
    vars = {{chip_mult = 8}, {chips = 0}, {rank = -huge_number}},
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.pre_discard then
            local raised_card = nil
            for i = 1, #G.hand.highlighted do
                if not card.debuff and card.ability.extra.rank < G.hand.highlighted[i].base.nominal and G.hand.cards[i].ability.effect ~= 'Stone Card' then
                    card.ability.extra.chips = G.hand.highlighted[i].base.nominal * card.ability.extra.chip_mult
                    card.ability.extra.rank = G.hand.highlighted[i].base.nominal
                    raised_card = G.hand.highlighted[i]
                end
            end
            if raised_card then
                event({delay = 0.7 * 1.25, trigger = 'before', func = function()
                    play_sound('generic1', nil, 1)
                    extra_juice(card)
                    big_juice(raised_card)
                return true end})
            end
        end
        if context.joker_main then
            if card.ability.extra.chips ~= 0 then
                return {
                    message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
                    chip_mod = card.ability.extra.chips,
                }
            end
        end
        if context.end_of_round then
            if card.ability.extra.rank ~= -huge_number then
                card.ability.extra.rank = -huge_number
                card.ability.extra.chips = 0

                forced_message(localize('k_reset'), card, G.C.RED, true)
            end
        end
    end
})

create_joker({ -- Doodle
    name = 'Doodle', position = 44,
    vars = {{active = true}, {unlock = 10}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock, G.PROFILES[G.SETTINGS.profile].career_stats.c_wins}}
    end,
    rarity = 'Rare', cost = 10,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_custom' and (G.PROFILES[G.SETTINGS.profile].career_stats.c_wins + 1) >= self.config.extra.unlock then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            if not card.ability.extra.active then
                card.ability.extra.active = true
                local eval = function() return card.ability.extra.active end
                juice_card_until(card, eval, true)
            end
        end
        if context.using_consumeable and card.ability.extra.active and (context.consumeable.ability.set == 'Tarot' or context.consumeable.ability.set == 'Planet') then
            event({func = function ()
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local copy
                    forced_message(localize('k_duplicated_ex'), context.blueprint_card or card, nil, true, copy)
                    card.ability.extra.active = false
                    copy = copy_card(context.consumeable)
                    copy:add_to_deck()
                    G.consumeables:emplace(copy)
                end
                return true
            end})
        end
    end,
    add = function(self, card)
        if card.ability.extra.active then
            local eval = function() return card.ability.extra.active end
            juice_card_until(card, eval, true)
        end
    end
})

create_joker({ -- Disproportionality
    name = 'Disproportionality', position = 45,
    vars = {{min = 0}, {max = 200}},
    custom_vars = function(self, info_queue, card)
        local r_chips = {}
        for i = card.ability.extra.min, card.ability.extra.max do
            r_chips[#r_chips + 1] = string.format("%03d", i)
        end
        local loc_chips = ' '..(G.localization.misc.dictionary.bunc_chips)..' '
        local text = {
            [1] = "[1] Lua local 'handler'",
            [2] = "at file 'chip_mod.lua:",
            [3] = "'",
            [4] = "ERROR",
            [5] = "Stack Traceback"
        }
        --for i = 1, #r_chips do
        --    r_chips[i] = text[2]..r_chips[i]..text[3]
        --end
        return {main_start =
        {{n = G.UIT.R, config = {align = "cm"}, nodes = {
            {n = G.UIT.R, config = {align = "cm", padding = 0.02}, nodes = {
                {n = G.UIT.O, config = {object = DynaText({string = {
                    {string = text[1]}, {string = text[1]}, {string = text[1]}, {string = text[1]}, {string = text[1]}, {string = text[1]},
                    {string = text[4], colour = G.C.JOKER_GREY},
                    {string = text[5]},
                }, colours = {G.C.L_BLACK}, random_element = true, pop_in_rate = 9999999, silent = true, pop_delay = 0.2, scale = 0.32, min_cycle_time = 0})}},
            }},
            {n = G.UIT.R, config = {align = "cm", padding = 0.02}, nodes = {
                {n = G.UIT.T, config = {text = text[2], colour = G.C.L_BLACK, scale = 0.32}},
                {n = G.UIT.O, config = {object = DynaText({string = r_chips, colours = {G.C.CHIPS}, pop_in_rate = 9999999, silent = true, pop_delay = 0.005, scale = 0.32, min_cycle_time = 0})}},
                {n = G.UIT.T, config = {text = text[3], colour = G.C.L_BLACK, scale = 0.32}}
            }}
        }}}
        }
    end,
    rarity = 'Common', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
            local temp_chips = pseudorandom('disproportionality', card.ability.extra.min, card.ability.extra.max)
            return {
                message = localize{type='variable',key='a_chips',vars={temp_chips}},
                chip_mod = temp_chips
            }
        end
    end
})

create_joker({ -- Running Joke
    name = 'Running Joke', position = 46,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        info_queue[#info_queue+1] = G.P_CENTERS.j_joker
    end,
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.enter_shop then
            big_juice(card)
            local area = G.shop_jokers
            local shop_card = Card(area.T.x + area.T.w/2, area.T.y, G.CARD_W, G.CARD_H, nil, G.P_CENTERS['j_joker'],
            {bypass_discovery_center = area == G.shop_jokers,
            bypass_discovery_ui = area == G.shop_jokers,
            discover = area == G.shop_jokers,
            bypass_back = G.GAME.selected_back.pos})
            shop_card:set_edition({negative = true})
            create_shop_card_ui(shop_card)
            G.shop_jokers:emplace(shop_card)
        end
    end
})

create_joker({ -- On Broadway
    name = 'On Broadway', position = 47,
    vars = {{chips = 120}, {mult = 20}},
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_hand and context.poker_hands ~= nil and next(context.poker_hands['Straight']) then
            local face = false
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_face() then
                    face = true
                end
            end
            if face then
                hand_chips = mod_chips(hand_chips + card.ability.extra.chips)
                update_hand_text({delay = 0}, {chips = hand_chips})
                forced_message('+'..tostring(card.ability.extra.chips), card, G.C.CHIPS, true)
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

create_joker({ -- Rasta
    name = 'Rasta', position = 48,
    vars = {{mult = 12}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'win_custom' and not G.GAME.enhancements_used then
            unlock_card(self)
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_hand then
            local enhancement = false
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].config.center ~= G.P_CENTERS.c_base then
                    enhancement = true
                end
            end
            if not enhancement then return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = { card.ability.extra.mult }
                },
                mult_mod = card.ability.extra.mult,
                card = card
            } end
        end
        if context.joker_main and not context.scoring_hand then
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
})

create_joker({ -- Critic
    name = 'Critic', position = 49,
    vars = {{xmult = 2}, {fraction = 3}},
    rarity = 'Common', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
            local temp_chips = G.GAME.blind.chips
            if math.floor(hand_chips * mult) < (temp_chips / card.ability.extra.fraction) then return {
                Xmult_mod = card.ability.extra.xmult,
                card = card,
                message = localize {
                    type = 'variable',
                    key = 'a_xmult',
                    vars = { card.ability.extra.xmult }
                },
            } end
        end
    end
})

create_joker({ -- Cellphone
    name = 'Cellphone', position = 50,
    vars = {{active = true}, {cards_to_hand = {}}},
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            card.ability.extra.active = true
            local eval = function() return G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 end
            juice_card_until(card, eval, true)
        end
        if context.joker_main and context.scoring_hand then
            card.ability.extra.cards_to_hand = context.scoring_hand
        end
        if context.press_play and card.ability.extra.active and G.GAME.current_round.hands_played == 0 then
            forced_message(G.localization.misc.dictionary.bunc_accepted, card, G.C.GREEN)
        end
        if context.after and G.GAME.current_round.hands_played == 0 then
            event({func = function ()
                card.ability.extra.active = false
                return true
            end})
        end
        if context.pre_discard and card.ability.extra.active then
            card.ability.extra.active = false
            forced_message(G.localization.misc.dictionary.bunc_declined, card, G.C.RED, true)
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.w = card.T.w / 1.11
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.x = card.children.center.scale.x / 1.11
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- Wino
    name = 'Wino', position = 51,
    vars = {{chips = 12}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then

            local other_card = context.other_card

            if context.other_card:is_suit('Hearts') or context.other_card:is_suit('Diamonds') then
                return {
                    chips = card.ability.extra.chips,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Bounty Hunter
    name = 'Bounty Hunter', position = 52,
    vars = {{bonus = 1}, {mult = 0}, {unlock = -20}},
    locked_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.unlock}}
    end,
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'money' then
            if G.GAME.dollars < to_big(self.config.extra.unlock) then
                unlock_card(self)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.get_money and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus
        end
        if context.joker_main and card.ability.extra.mult ~= 0 then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = {card.ability.extra.mult}
                },
                mult_mod = card.ability.extra.mult,
                card = card
            }
        end
    end
})

create_joker({ -- Mousetrap
    name = 'Mousetrap', position = 53,
    vars = {{chips = 300}, {odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {card.ability.extra.chips, G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {card.ability.extra.chips, 1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
            if pseudorandom('mousetrap'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                if G.GAME.current_round.hands_left ~= 0 then ease_hands_played(-1) end
                event({func = function() play_sound('bunc_mousetrap') return true end})
                forced_message(G.localization.misc.dictionary.bunc_ouch, card, G.C.RED, true)
            else
                return {
                    message = localize{type='variable', key='a_chips', vars={card.ability.extra.chips}},
                    chip_mod = card.ability.extra.chips,
                }
            end
        end
    end
})

create_joker({ -- The Joker
    name = 'The Joker', custom_atlas = 'bunco_jokers_the_joker', position = 1,
    vars = {{trash_list = {}}, {odds = 3}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Rare', cost = 10,
    blueprint = false, eternal = true,
    unlocked = false,
    check_for_unlock = function(self, args)
        if args.type == 'discover_amount' then
            if G.DISCOVER_TALLIES.blinds.tally == G.DISCOVER_TALLIES.blinds.of then
                unlock_card(self)
            end
        end
    end,
    calculate = function(self, card, context)
        if not context.blueprint then
            if context.scoring_hand and not context.other_card then
                card.ability.extra.trash_list = {}
                for k, v in ipairs(context.scoring_hand) do
                    if v.config.center == G.P_CENTERS.c_base then
                        if pseudorandom('the_joker'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                            table.insert(card.ability.extra.trash_list, v)
                        end
                    end
                end
            end

            if context.after then
                local trash_list = card.ability.extra.trash_list
                local dissolve_time_fac = 3

                if #trash_list ~= 0 then

                    event({
                        trigger = 'before',
                        delay = 0.7 * dissolve_time_fac * 1.051,
                        func = function()
                            big_juice(card)
                            play_sound('tarot2', 1.2, 0.4)
                            event({blocking = false, blockable = false, trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, func = function()
                                play_sound('tarot2', 0.96, 0.4)
                            return true end})
                            for _, card_to_trash in ipairs(trash_list) do
                                if not card_to_trash.removed then
                                    card_to_trash:start_dissolve(nil, nil, dissolve_time_fac)
                                end
                            end
                            return true
                        end
                    })

                    for _, card_to_trash in ipairs(trash_list) do
                        card_to_trash.destroyed = true
                    end
                end
                card.ability.extra.trash_list = {}
            end
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.h = card.T.w
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.y = card.children.center.scale.x
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end,
    update = function(self, card)
        if self.discovered or card.bypass_discovery_center then
            local timer = (G.TIMERS.REAL * G.ANIMATION_FPS * 2) + 20
            local frame_amount = 40
            local wrapped_value = (math.floor(timer) - 1) % frame_amount + 1
            card.children.center:set_sprite_pos({x = wrapped_value, y = card.children.center.sprite_pos.y})
        end
    end
})

create_joker({ -- Tangram
    name = 'Tangram', position = 54,
    vars = {{mult = 7}},
    rarity = 'Rare', cost = 7,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then

            local sevens = 0

            for k, v in ipairs(context.full_hand) do
                if v:get_id() == 7 then
                    sevens = sevens + 1
                end
            end

            if context.other_card:get_id() == 7 then
                return {
                    mult = card.ability.extra.mult * sevens,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Domino
    name = 'Domino', position = 55,
    rarity = 'Rare', cost = 12,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if (context.buying_card or context.getting_booster_card) and context.pre_cardarea and not context.blueprint then

            local function acquire(acquired_card)
                acquired_card.area:remove_card(acquired_card)
                acquired_card:add_to_deck()
                if acquired_card.children.price then acquired_card.children.price:remove() end
                acquired_card.children.price = nil
                if acquired_card.children.buy_button then acquired_card.children.buy_button:remove() end
                acquired_card.children.buy_button = nil
                remove_nils(acquired_card.children)
                if acquired_card.ability.set == 'Default' or acquired_card.ability.set == 'Enhanced' then
                    inc_career_stat('c_playing_cards_bought', 1)
                    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                    G.deck:emplace(acquired_card)
                    acquired_card.playing_card = G.playing_card
                    playing_card_joker_effects({acquired_card})
                    table.insert(G.playing_cards, acquired_card)
                else
                    if acquired_card.ability.consumeable then
                        G.consumeables:emplace(acquired_card)
                    else
                        G.jokers:emplace(acquired_card)
                    end
                    event({func = function() acquired_card:calculate_joker({buying_card = true, card = acquired_card}) return true end})
                end
                --Tallies for unlocks
                G.GAME.round_scores.cards_purchased.amt = G.GAME.round_scores.cards_purchased.amt + 1
                if acquired_card.ability.consumeable then
                    if acquired_card.config.center.set == 'Planet' then
                        inc_career_stat('c_planets_bought', 1)
                    elseif acquired_card.config.center.set == 'Tarot' then
                        inc_career_stat('c_tarots_bought', 1)
                    end
                elseif acquired_card.ability.set == 'Joker' then
                    G.GAME.current_round.jokers_purchased = G.GAME.current_round.jokers_purchased + 1
                end
            end

            local card_pos = context.pre_card_pos
            if card_pos then
                if context.pre_card_left and context.pre_card_left.area ~= G.consumeables then
                    if G.FUNCS.check_for_buy_space(context.pre_card_left) then
                        acquire(context.pre_card_left)
                    end
                    big_juice(card)
                end
                if context.pre_card_right and context.pre_card_right.area ~= G.consumeables then
                    if G.FUNCS.check_for_buy_space(context.pre_card_right) then
                        acquire(context.pre_card_right)
                    end
                    big_juice(card)
                end
                if G.STATE == G.STATES.STANDARD_PACK
                or G.STATE == G.STATES.BUFFOON_PACK
                or G.STATE == G.STATES.TAROT_PACK
                or G.STATE == G.STATES.PLANET_PACK
                or G.STATE == G.STATES.SPECTRAL_PACK
                or G.STATE == G.STATES.SMODS_BOOSTER_OPENED then
                    if context.pre_cardarea == G.pack_cards and #context.pre_cardarea.cards == 0 then
                        G.GAME.pack_choices = 0
                    end
                end
            end
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.w = card.T.w / 1.5
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale.x = card.children.center.scale.x / 1.5
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- Glue Gun
    name = 'Glue Gun', position = 56,
    vars = {{amount = 4}},
    custom_vars = function (self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local active = (G.hand and G.hand.highlighted and (#G.hand.highlighted > 1) and (#G.hand.highlighted <= card.ability.extra.amount)) or false
        local main_end = {
            {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
                {n=G.UIT.C, config={ref_table = self, align = "m", colour = active and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06}, nodes={
                    {n=G.UIT.T, config={text = ' '..localize(active and 'k_active' or 'bunc_inactive')..' ',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.9}},
                }}
            }}
        }
        return {vars = {card.ability.extra.amount}, main_end = main_end}
    end,
    rarity = 'Uncommon', cost = 4,
    blueprint = false, eternal = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.selling_self and not context.blueprint then
            event({func = function()
                if G.hand and G.hand.highlighted and (#G.hand.highlighted > 1) and (#G.hand.highlighted <= card.ability.extra.amount) then

                    for i = 1, #G.hand.highlighted do
                        if G.hand.highlighted[i].ability.group then return true end
                    end

                    link_cards(G.hand.highlighted, self.key)
                    for i = 1, #G.hand.highlighted do
                        big_juice(G.hand.highlighted[i])
                    end
                end
            return true end})
        end
    end
})

create_joker({ -- Taped
    name = 'Taped', custom_atlas = 'bunco_jokers_taped', position = 1,
    custom_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}
    end,
    rarity = 'Rare', cost = 6,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before
        and context.full_hand
        and not context.other_card
        and G.GAME.current_round.hands_played == 0
        and G.GAME.blind.boss
        and not context.blueprint then
            event({func = function()

                local cards = {}

                for i = 1, #context.full_hand do
                    if not context.full_hand[i].ability.group then
                        table.insert(cards, context.full_hand[i])
                    end
                end

                if #cards > 1 then
                    link_cards(cards, self.key)
                    big_juice(card)

                    for i = 1, #cards do
                        big_juice(cards[i])
                    end
                end

            return true end})
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if self.discovered or card.bypass_discovery_center then
            card.T.w = G.CARD_W * 1.788732394366197
            card.T.h = G.CARD_H * 1.189473684210526
        end
    end,
    set_sprites = function(self, card, front)
        if self.discovered or card.bypass_discovery_center then
            card.children.center.scale = {x = 127, y = 113}
            card.children.center:reset()
        end
    end,
    load = function(self, card, card_table, other_card)
        return self.set_ability(self, card)
    end
})

create_joker({ -- Rubber Band Ball
    name = 'Rubber Band Ball', position = 57,
    vars = {{bonus = 1}, {xmult = 1}},
    custom_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}
        return {vars = {card.ability.extra.bonus, card.ability.extra.xmult}}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.joker_main then
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
    end,
    update = function(self, card)
        card.ability.extra.xmult = (G.GAME.last_card_group and G.GAME.last_card_group + 1 or 1) * card.ability.extra.bonus
    end,
    custom_in_pool = function()
        return G.GAME.last_card_group
    end,
})

create_joker({ -- Headache
    name = 'Headache', custom_atlas = 'bunco_jokers_headache', position = 1,
    vars = {{amount = 4}, {destroyed = 0}},
    custom_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Tag', key = 'tag_bunc_arcade'}
        info_queue[#info_queue + 1] = {key = 'p_bunc_virtual_mega', set = 'Other', vars = {G.P_CENTERS.p_bunc_virtual_mega.config.choose, G.P_CENTERS.p_bunc_virtual_mega.config.extra}}
        return {vars = {card.ability.extra.amount, card.ability.extra.destroyed}}
    end,
    rarity = 'Uncommon', cost = 4,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.remove_playing_cards then
            card.ability.extra.destroyed = card.ability.extra.destroyed + #context.removed
            while card.ability.extra.destroyed >= card.ability.extra.amount do
                add_tag(Tag('tag_bunc_arcade'))
                forced_message('+1 '..localize{type = 'name_text', key = 'tag_bunc_arcade', set = 'Tag'}, card, G.C.BUNCO_VIRTUAL)
                card.ability.extra.destroyed = card.ability.extra.destroyed - card.ability.extra.amount
            end
        end
    end,
    set_sprites = function(self, card, front)
        if card.config.center.discovered or card.bypass_discovery_center then
            card.children.floating_sprite = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS['bunc_bunco_jokers_border'], coordinate(1))
            card.children.floating_sprite.states.hover = card.states.hover
            card.children.floating_sprite.states.click = card.states.click
            card.children.floating_sprite.states.drag = card.states.drag
            card.children.floating_sprite.states.collide.can = false
            card.children.floating_sprite:set_role({major = card, role_type = 'Glued', draw_major = card})
        end
        card.draw_bypass = {floating_sprite = true}
    end,
    drawsteps = {
        {
            order = 21,
            func = function(card, layer)
                if card.config.center.key == 'j_bunc_headache' and (card.config.center.discovered or card.bypass_discovery_center) then

                    local realw, realh = love.window.getMode()

                    card.children.center:draw_shader('bunc_headache', nil, {
                    [1] = (((card.tilt_var.mx) - realw / 2) * 0.3)   +   ((card.VT.x + G.ROOM.T.x + (card.VT.w / 2)) * G.TILESIZE * G.TILESCALE - realw / 2) * -0.2,
                    [2] = (((card.tilt_var.my) - realh / 2) * 0.8)   +   ((card.VT.y + G.ROOM.T.y + (card.VT.h / 2)) * G.TILESIZE * G.TILESCALE - realh / 2) * -0.4,
                    [3] = G.TIMERS.REAL
                    })
                end
            end
        },
        {
            order = 61,
            func = function(card, layer)
                if card.config.center.key == 'j_bunc_headache' and (card.config.center.discovered or card.bypass_discovery_center) then
                    card.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, card.children.center, 0, 0)
                    if card.edition then
                        for k, v in pairs(G.P_CENTER_POOLS.Edition) do
                            if card.edition[v.key:sub(3)] and v.shader then
                                card.children.floating_sprite:draw_shader(v.shader, nil, card.ARGS.send_to_shader, nil, card.children.center, 0, 0)
                            end
                        end
                    end
                end
            end
        }
    }
})

create_joker({ -- Games Collector
    name = 'Games Collector', position = 58,
    vars = {{bonus = 10}, {chips = 0}},
    custom_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}
        return {vars = {card.ability.extra.bonus, card.ability.extra.chips}}
    end,
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    calculate = function(self, card, context)

        -- Note:
        -- Due the way this is coded, it will only trigger
        -- upon the group breaking the hand limit.
        -- That means that if you managed to draw a group
        -- "naturally" (so it didn't request other cards)
        -- the Joker won't recieve its bonus

        if context.groups_drawn and not context.blueprint then
            for _, group in ipairs(context.groups_drawn) do
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus
            end
            forced_message(localize('k_upgrade_ex'), card, G.C.CHIPS)
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
    end,
    custom_in_pool = function()
        return G.GAME.last_card_group
    end
})

create_joker({ -- Jumper
    name = 'Jumper', position = 59,
    vars = {{bonus = 8}, {chips = 0}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before then
            if context.poker_hands and next(context.poker_hands['Flush']) and not context.blueprint then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.CHIPS,
                    card = card
                }
            end
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

create_joker({ -- Stylophone
    name = 'Stylophone', position = 60,
    vars = {{x = 0.3}},
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)

        local function play_stylophone(other_card)
            local instrument = 'bunc_stone'

            local function calculate_pitch(pitch)
                return 2^(pitch / 12)
            end

            if other_card.config.center ~= G.P_CENTERS.m_stone then
                if other_card.base.suit == 'Spades' then
                    instrument = 'bunc_spade'
                elseif other_card.base.suit == 'Clubs' then
                    instrument = 'bunc_club'
                elseif other_card.base.suit == 'Hearts' then
                    instrument = 'bunc_heart'
                elseif other_card.base.suit == 'Diamonds' then
                    instrument = 'bunc_diamond'
                elseif other_card.base.suit == 'bunc_Fleurons' then
                    instrument = 'bunc_fleuron'
                elseif other_card.base.suit == 'bunc_Halberds' then
                    instrument = 'bunc_halberd'
                end
                event({trigger = 'after', func = function() play_sound(instrument, calculate_pitch(other_card:get_id()), 2.0) return true end})
            else
                event({trigger = 'after', func = function() play_sound(instrument, 1.0, 2.0) return true end})
            end
        end

        if context.individual and context.cardarea == G.play then
            play_stylophone(context.other_card)
            if context.other_card.config.center ~= G.P_CENTERS.m_stone then
                return {
                    mult = context.other_card:get_id() * card.ability.extra.x,
                    card = card
                }
            end
        end
        if context.click and context.other_card.area == G.hand then
            extra_juice(card)
            play_stylophone(context.other_card)
        end
    end
})

create_joker({ -- Kite Experiment
    name = 'Kite Experiment', position = 61,
    vars = {{odds = 2}, {cards_rescored = {}}},
    custom_vars = function(self, info_queue, card)
        local vars
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_copper
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true,
    unlocked = true,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_bunc_copper then condition = true break end
            end
        end
        return condition
    end,
    calculate = function(self, card, context)
        if context.rescore_cards then
            local condition = true

            for i = 1, #card.ability.extra.cards_rescored do
                if context.rescore_cards[1] == card.ability.extra.cards_rescored[i] then
                    condition = false
                end
            end

            if condition and pseudorandom('kite_experiment'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                context.rescore_cards[1].config.copper_rescored_times = context.rescore_cards[1].config.copper_rescored_times - 1
                table.insert(card.ability.extra.cards_rescored, context.rescore_cards[1])
                return {
                    message = '+1',
                    card = card
                }
            end
        end
        if context.after then
            card.ability.extra.cards_rescored = {}
        end
    end
})

create_joker({ -- Robot
    name = 'Robot', position = 62,
    vars = {{bonus = 3}, {mult = 0}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_copper
        return {vars = {card.ability.extra.bonus, card.ability.extra.mult}}
    end,
    rarity = 'Uncommon', cost = 6,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_bunc_copper then condition = true break end
            end
        end
        return condition
    end,
    calculate = function(self, card, context)
        if context.rescore_cards and not context.blueprint then

            card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.bonus * #context.rescore_cards)

            return {
                message = localize('k_upgrade_ex'),
                card = card
            }
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

create_joker({ -- Hardtack
    name = 'Hardtack', position = 63,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_cracker
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_bunc_cracker then condition = true break end
            end
        end
        return condition
    end
})

create_joker({ -- Pica
    name = 'Pica', position = 64,
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_cracker
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    custom_in_pool = function()
        local condition = false
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_bunc_cracker then condition = true break end
            end
        end
        return condition
    end
})

-- Exotic Jokers

create_joker({ -- Zealous
    type = 'Exotic',
    name = 'Zealous', position = 1,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.t_mult}} end,
    custom_config = {t_mult = 10, type = 'bunc_Spectrum'},
    rarity = 'Common', cost = 3,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Lurid
    type = 'Exotic',
    name = 'Lurid', position = 2,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.t_chips}} end,
    custom_config = {t_chips = 80, type = 'bunc_Spectrum'},
    rarity = 'Common', cost = 3,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Envious
    type = 'Exotic',
    name = 'Envious', position = 3,
    vars = {{s_mult = 6}, {suit = 'bunc_Fleurons'}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    effect = 'Suit Mult'
})

create_joker({ -- Proud
    type = 'Exotic',
    name = 'Proud', position = 4,
    vars = {{s_mult = 6}, {suit = 'bunc_Halberds'}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true,
    unlocked = true,
    effect = 'Suit Mult'
})

create_joker({ -- Wishalloy
    type = 'Exotic',
    name = 'Wishalloy', position = 5,
    vars = {{odds = 7}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 7,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit('bunc_Fleurons') then
            if pseudorandom('wishalloy'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                local value = context.other_card:get_chip_bonus()
                ease_dollars(value)
                forced_message('$'..value, context.other_card, G.C.MONEY, true, card)
            end
        end
    end
})

create_joker({ -- Unobtanium
    type = 'Exotic',
    name = 'Unobtanium', position = 6,
    vars = {{chips = 30}, {mult = 6}},
    rarity = 'Uncommon', cost = 7,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit('bunc_Halberds') then
            return {
                message = localize {
                    type = 'variable',
                    key = 'a_mult',
                    vars = {card.ability.extra.mult}
                },
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
})

create_joker({ -- Dynasty
    type = 'Exotic',
    name = 'Dynasty', position = 7,
    custom_vars = function(self, info_queue, card) return {vars = {card.ability.x_mult}} end,
    custom_config = {Xmult = 5, type = 'bunc_Spectrum'},
    rarity = 'Rare', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true
})

create_joker({ -- Magic Wand
    type = 'Exotic',
    name = 'Magic Wand', position = 8,
    vars = {{bonus = 3}, {mult = 0}},
    rarity = 'Common', cost = 5,
    blueprint = true, eternal = true, perishable = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['bunc_Spectrum']) and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus
        elseif context.after and context.poker_hands ~= nil and not next(context.poker_hands['bunc_Spectrum']) and not context.blueprint then
            if card.ability.extra.mult ~= 0 then
                card.ability.extra.mult = 0

                forced_message(localize('k_reset'), card, G.C.RED)
            end
        end

        if context.joker_main then
            if card.ability.extra.mult ~= 0 then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
})

create_joker({ -- Starfruit
    type = 'Exotic',
    name = 'Starfruit', position = 9,
    vars = {{odds = 4}},
    custom_vars = function(self, info_queue, card)
        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 5,
    blueprint = false, eternal = false,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['bunc_Spectrum']) and not context.blueprint then
            forced_message(localize('k_level_up_ex'), card, G.C.RED, true)
            level_up_hand(card, context.scoring_name, false, 1)
        end

        if context.end_of_round and not context.other_card and not context.blueprint then
            if pseudorandom('starfruit'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then

                forced_message(localize('k_eaten_ex'), card, G.C.FILTER, true)
                card:start_dissolve()

            else

                forced_message(localize('k_safe_ex'), card, nil, true)
                card.ability.extra.condition = false

            end
        end
    end
})

create_joker({ -- Fondue
    type = 'Exotic',
    name = 'Fondue', position = 10,
    rarity = 'Rare', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.after and G.GAME.current_round.hands_played == 0 and context.scoring_hand and not context.blueprint then
            enable_exotics()

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[i]:flip(); play_sound('card1', 1); context.scoring_hand[i]:juice_up(0.3, 0.3); return true end })
            end

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.1,  func = function() context.scoring_hand[i]:change_suit('bunc_Fleurons'); return true end })
            end

            for i = 1, #context.scoring_hand do
                event({trigger = 'after', delay = 0.15, func = function() context.scoring_hand[i]:flip(); play_sound('tarot2', 1, 0.6); big_juice(card); context.scoring_hand[i]:juice_up(0.3, 0.3); return true end })
            end

            delay(0.7 * 1.25)
        end
    end
})

create_joker({ -- Myopia
    type = 'Exotic',
    name = 'Myopia', position = 11,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true
})

create_joker({ -- Astigmatism
    type = 'Exotic',
    name = 'Astigmatism', position = 12,
    rarity = 'Uncommon', cost = 8,
    blueprint = false, eternal = true,
    unlocked = true
})

create_joker({ -- ROYGBIV
    type = 'Exotic',
    name = 'ROYGBIV', position = 13,
    vars = {{odds = 7}},
    custom_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome

        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,
    rarity = 'Uncommon', cost = 8,
    blueprint = true, eternal = true,
    unlocked = true,
    calculate = function(self, card, context)
        if context.before and context.poker_hands ~= nil and next(context.poker_hands['bunc_Spectrum']) and context.scoring_hand and not context.blueprint then
            if pseudorandom('roygbiv'..G.SEED) < G.GAME.probabilities.normal / card.ability.extra.odds then
                if context.scoring_hand then

                    local cards = {}

                    for i = 1, #context.scoring_hand do
                        if context.scoring_hand[i]:get_edition() == nil then
                            table.insert(cards, context.scoring_hand[i])
                        end
                    end

                    if cards and #cards > 0 then
                        forced_message('+'..localize{type = 'name_text', key = 'e_polychrome', set = 'Edition'}, card)
                        for i = 1, #cards do
                            local other_card = cards[i]
                            other_card:set_edition({polychrome = true})
                        end
                    end
                end
            end
        end
    end
})

-- Legendary Jokers

create_joker({ -- Rigoletto
    type = 'Exotic',
    name = 'Rigoletto', position = 1,
    vars = {{bonus = 0.2}, {xmult = 1}, {tally = 0}},
    custom_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_exotic_cards'}
        return {vars = {card.ability.extra.bonus, card.ability.extra.xmult}}
    end,
    rarity = 'Legendary', cost = 20,
    blueprint = true, eternal = true, perishable = false,
    unlocked = false,
    unlock_condition = {hidden = true},
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.xmult ~= 1 then
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
        end
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            card.ability.extra.tally = 0

            for k, v in pairs(G.playing_cards) do
                if v:is_suit('bunc_Fleurons') or v:is_suit('bunc_Halberds') then card.ability.extra.tally = card.ability.extra.tally + 1 end
            end

            card.ability.extra.xmult = 1 + (card.ability.extra.tally * card.ability.extra.bonus)
        end
    end
})

-- Tarots

local thoth_unlock_amount = 100

function create_UIBox_thoth_tarots_unlock(card_centers)
    G.your_collection = CardArea(
        0,
        0,
        2.85 * G.CARD_W,
        0.75 * G.CARD_H,
        {card_limit = 4, type = 'title', highlight_limit = 0}
    )

    for i, card_center in ipairs(card_centers) do
        local card = Card(G.your_collection.T.x + G.your_collection.T.w/2 - G.CARD_W/2, G.your_collection.T.y, G.CARD_W, G.CARD_H, G.P_CARDS.empty, card_center, {bypass_discovery_center = true, bypass_discovery_ui = true})
        card.states.click.can = false
        card.states.visible = false
        G.your_collection:emplace(card)
        event({
            timer = 'REAL',
            blockable = false,
            blocking = false,
            trigger = 'after',
            delay = 0.1 * i,
            func = (function() 
                card:start_materialize({G.C.SECONDARY_SET.Tarot})
            return true end)
        })
    end

    local criteria = {}

    localize{
        type = 'descriptions',
        key = 'deck_locked_discover',
        set = "Other",
        nodes = criteria,
        vars = {thoth_unlock_amount}
    }

    local criteria_cols = {}
    for k, v in ipairs(criteria) do
        if k > 1 then criteria_cols[#criteria_cols+1] = {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={}} end
        criteria_cols[#criteria_cols+1] = {n=G.UIT.R, config={align = "cm", padding = 0}, nodes=v}
    end

    local t = create_UIBox_generic_options({padding = 0,back_label = localize('b_continue'), no_pip = true, snap_back = true, back_func = 'continue_unlock', minw = 4.5, contents = {
        {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
            {n=G.UIT.R, config={align = "cm", padding = 0.1}, nodes={
                {n=G.UIT.R, config={align = "cm", padding = 0.2}, nodes={
                    {n=G.UIT.O, config={object = DynaText({string = {{string = localize('bunc_thoth_tarots'), suffix = ' '..localize('k_unlocked_ex'), outer_colour = G.C.UI.TEXT_LIGHT}}, colours = {G.C.SECONDARY_SET.Tarot},shadow = true, rotate = true, float = true, scale = 0.7, pop_in = 0.1})}}
                }},
                {n=G.UIT.R, config={align = "cm", padding = 0.3, draw_layer = 1}, nodes={
                    {n=G.UIT.O, config={object = G.your_collection}}
                }},
                {n=G.UIT.R, config={align = "cm", padding = 0, draw_layer = 2}, nodes={
                    {n=G.UIT.R, config={align = "cm", padding = 0.0}, nodes={
                        {n=G.UIT.R, config={align = "cm", padding = 0.05, emboss = 0.05, colour = G.C.WHITE, r = 0.1}, nodes={
                            {n=G.UIT.R, config={align = "cm", padding = 0.05, emboss = 0.05, colour = G.C.WHITE, r = 0.1}, nodes={
                                {n=G.UIT.R, config={align = "cm", padding = 0}, nodes=criteria_cols}
                            }}
                        }}
                    }}
                }}
            }}
        }}
        }})
    return t
end

-- SMODS.Keybind{
--     key_pressed = 'l',
--     event = 'pressed',
--     action = function(self)
--         G.E_MANAGER:add_event(Event({
--             trigger = 'immediate',
--             no_delete = true,
--             func = (function()
--                 if not G.OVERLAY_MENU then 
--                     G.SETTINGS.paused = true
--                     G.FUNCS.overlay_menu{
--                         definition = create_UIBox_thoth_tarots_unlock({
--                             G.P_CENTERS['c_bunc_adjustment'],
--                             G.P_CENTERS['c_bunc_art'],
--                             G.P_CENTERS['c_bunc_universe'],
--                             G.P_CENTERS['c_bunc_lust']
--                         }),
--                     }
--                     play_sound('foil1', 0.7, 0.3)
--                     play_sound('gong', 1.4, 0.15)
--                     return true
--                 end
--             end)
--         }), 'unlock')
--     end
-- }

SMODS.Atlas({key = 'bunco_tarots', path = 'Consumables/Tarots.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_tarots_exotic', path = 'Consumables/TarotsExotic.png', px = 71, py = 95})

SMODS.Consumable{ -- Adjustment
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'adjustment',
    --unlocked = false,

    effect = 'Enhance',
    config = {mod_conv = 'm_bunc_cracker', max_highlighted = 2},
    pos = coordinate(1),

    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_thoth_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_cracker
        return {vars = {self.config.max_highlighted, localize{type = 'name_text', set = 'Enhanced', key = self.config.mod_conv}}}
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {thoth_unlock_amount}}
    end
}

SMODS.Consumable{ -- The Art
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'art',
    --unlocked = false,

    effect = 'Enhance',
    config = {mod_conv = 'm_bunc_copper', max_highlighted = 2},
    pos = coordinate(2),

    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_thoth_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bunc_copper
        return {vars = {self.config.max_highlighted, localize{type = 'name_text', set = 'Enhanced', key = self.config.mod_conv}}} 
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {thoth_unlock_amount}}
    end
}

SMODS.Consumable{ -- The Universe
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'universe',
    --unlocked = false,

    config = {max_highlighted = 3},
    pos = coordinate(3),

    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_thoth_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    loc_vars = function(self, info_queue)
        return {vars = {self.config.max_highlighted}}
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {thoth_unlock_amount}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted >= 1) and (#G.hand.highlighted <= self.config.max_highlighted) then
            return true
        end
    end,

    use = function(self, card)
        local i
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_card.highlighted then

                local new_seal = SMODS.poll_seal({guaranteed = true, key = 'universe'})
                local new_enhancement = SMODS.poll_enhancement({guaranteed = true, key = 'universe'})
                local new_edition = poll_edition('universe', nil, true, true)
                local new_suit = pseudorandom_element(SMODS.Suits, pseudoseed('universe')).key
                local new_rank = pseudorandom_element(SMODS.Ranks, pseudoseed('universe')).key

                event({delay = 0.2, trigger = 'before', func = function()

                    i = i and (i + 1) or 1
                    play_sound('card1', 0.85 + (i * 0.05))
                    big_juice(playing_card)

                    if playing_card.seal then
                        playing_card:set_seal(new_seal, true, true)
                    end

                    if playing_card.config.center ~= G.P_CENTERS.c_base then
                        playing_card:set_ability(G.P_CENTERS[new_enhancement])
                    end

                    if playing_card.edition then
                        playing_card:set_edition(new_edition, true)
                    end

                    SMODS.change_base(playing_card, new_suit, new_rank)

                return true end})
            end
        end
    end,
}

SMODS.Consumable{ -- Lust
    set = 'Tarot', atlas = 'bunco_tarots',
    key = 'lust',
    --unlocked = false,

    config = {bonus = 1, limit = 52},
    pos = coordinate(4),

    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_thoth_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    loc_vars = function(self, info_queue)
        local reward = 0
        if G.hand and G.hand.cards and (#G.hand.cards > 0) then
            reward = #G.hand.cards * self.config.bonus
        end
        return {vars = {self.config.bonus, self.config.limit, (reward <= self.config.limit) and reward or self.config.limit}}
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {thoth_unlock_amount}}
    end,

    can_use = function(self, card)
        if G.hand and G.hand.cards and (#G.hand.cards > 0) then
            return true
        end
    end,

    use = function(self, card)
        local reward = #G.hand.cards * self.config.bonus
        ease_dollars((reward <= self.config.limit) and reward or self.config.limit)
    end,
}

SMODS.Consumable{ -- The Sky
    set = 'Tarot', atlas = 'bunco_tarots_exotic',
    key = 'sky',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_mysterious_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {max_highlighted = 3, suit_conv = 'bunc_Fleurons'},
    pos = coordinate(1),

    loc_vars = function(self) return {vars = {self.config.max_highlighted}} end,

    use = function(self)
        enable_exotics()

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                G.hand.highlighted[i]:change_suit(self.config.suit_conv);
            return true end })
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + ( i - 0.999 ) / ( #G.hand.highlighted - 0.998 ) * 0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip(); play_sound('tarot2', percent, 0.6); G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        event({trigger = 'after', delay = 0.2, func = function()
            G.hand:unhighlight_all();
        return true end })
        delay(0.5)
    end,

    in_pool = BUNCOMOD.funcs.exotic_in_pool
}

SMODS.Consumable{ -- The Abyss
    set = 'Tarot', atlas = 'bunco_tarots_exotic',
    key = 'abyss',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_mysterious_tarot, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {max_highlighted = 3, suit_conv = 'bunc_Halberds'},
    pos = coordinate(2),

    loc_vars = function(self) return {vars = {self.config.max_highlighted}} end,

    use = function(self)
        enable_exotics()

        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                G.hand.highlighted[i]:change_suit(self.config.suit_conv);
            return true end })
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + ( i - 0.999 ) / ( #G.hand.highlighted - 0.998 ) * 0.3
            event({trigger = 'after', delay = 0.15, func = function()
                G.hand.highlighted[i]:flip(); play_sound('tarot2', percent, 0.6); G.hand.highlighted[i]:juice_up(0.3, 0.3);
            return true end })
        end
        event({trigger = 'after', delay = 0.2, func = function()
            G.hand:unhighlight_all();
        return true end })
        delay(0.5)
    end,

    in_pool = BUNCOMOD.funcs.exotic_in_pool
}

-- Planets

SMODS.Atlas({key = 'bunco_planets', path = 'Consumables/Planets.png', px = 71, py = 95})

SMODS.Consumable{ -- Quaoar
    set = 'Planet', atlas = 'bunco_planets',
    key = 'quaoar',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'bunc_Spectrum', softlock = true},
    pos = coordinate(1),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Haumea
    set = 'Planet', atlas = 'bunco_planets',
    key = 'haumea',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'bunc_Straight Spectrum', softlock = true},
    pos = coordinate(2),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Sedna
    set = 'Planet', atlas = 'bunco_planets',
    key = 'sedna',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'bunc_Spectrum House', softlock = true},
    pos = coordinate(3),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

SMODS.Consumable{ -- Makemake
    set = 'Planet', atlas = 'bunco_planets',
    key = 'makemake',
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(config.fixed_badges and localize('k_planet_q') or localize('k_dwarf_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end,

    config = {hand_type = 'bunc_Spectrum Five', softlock = true},
    pos = coordinate(4),

    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}

-- Spectrals

SMODS.Atlas({key = 'bunco_spectrals', path = 'Consumables/Spectrals.png', px = 71, py = 95})

SMODS.Consumable{ -- Cleanse
    set = 'Spectral', atlas = 'bunco_spectrals',
    key = 'cleanse',

    config = {max_highlighted = 3},
    pos = coordinate(1),

    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_fluorescent
        return {vars = {self.config.max_highlighted}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted <= self.config.max_highlighted) and G.hand.highlighted[1] then
            local condition = true
            for i = 1, #G.hand.highlighted do
                if G.hand.highlighted[i].edition then
                    condition = false
                end
            end
            if condition then return true end
        end
        return false
    end,

    use = function(self, card)
        local edition = {bunc_fluorescent = true}
        for i = 1, #G.hand.highlighted do
            event({trigger = 'after', delay = 0.1, func = function()
                local highlighted = G.hand.highlighted[i]
                highlighted:set_edition(edition, true)
            return true end })
        end
        card:juice_up(0.3, 0.5)
    end
}

-- Functions for Polyminoes

SMODS.Atlas({key = 'bunco_link', path = 'Links/Link.png', px = 71, py = 95})

function create_polymino_card_set(example)
    local cardarea = CardArea(
        0,
        0,
        2.85 * G.CARD_W,
        0.75 * G.CARD_H,
        {card_limit = 4, type = 'title', highlight_limit = 0}
    )
    for k, v in ipairs(example) do
        local card = Card(
        0,
        0,
        0.5 * G.CARD_W,
        0.5 * G.CARD_H,
        G.P_CARDS[v[1]],
        G.P_CENTERS.c_base)
        if v[2] then card:juice_up(0.3, 0.2) end
        if k == 1 then play_sound('paper1', 0.95 + math.random() * 0.1, 0.3) end
        ease_value(card.T, 'scale', v[2] and 0.25 or -0.15, nil, 'REAL', true, 0.2)
        cardarea:emplace(card)
    end

    return {n=G.UIT.R, config = {align = "cm", colour = G.C.CLEAR, r = 0.0}, nodes={
        {n=G.UIT.C, config = {align = "cm"}, nodes={
            {n=G.UIT.O, config = {object = cardarea}}
        }}
    }}
end

function link_cards(cards, source, ignore_groups)
    G.GAME.last_card_group = (G.GAME.last_card_group or 0) + 1

    for i = 1, #cards do
        local card = cards[i]
        if (not ignore_groups) or (ignore_groups and not card.ability.group) then
            card.ability.group = {id = G.GAME.last_card_group, source = source or 'unknown'}
        end
    end

    G.PROFILES[G.SETTINGS.profile].cards_linked = (G.PROFILES[G.SETTINGS.profile].cards_linked or 0) + 1
    if G.PROFILES[G.SETTINGS.profile].cards_linked then
        local locked_card

        for i = 1, #G.P_LOCKED do
            locked_card = G.P_LOCKED[i]

            if not locked_card.unlocked and locked_card.check_for_unlock and type(locked_card.check_for_unlock) == 'function' then
                locked_card:check_for_unlock({type = 'link_cards', links_total = G.PROFILES[G.SETTINGS.profile].cards_linked})
            end
        end
    end
end

SMODS.DrawStep({
    key = 'linked_group',
    order = 500,
    func = function(card, layer)
        if card.ability.group and card.area ~= G.deck then
            if not card.children.link then
                local variant = card.ability.group.id
                variant = 1 + (variant - 1) % 5
                card.children.link = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS['bunc_bunco_link'], {x = variant - 1, y = 0})
                card.children.link.states.visible = false
            end
            card.children.link:draw_shader('dissolve', nil, nil, nil, card.children.center, 0, 0)
            card.children.link.role.draw_major = card
        end
    end
})

-- Pseudoinjections for Polyminoes

local original_draw_from_deck_to_hand = G.FUNCS.draw_from_deck_to_hand
G.FUNCS.draw_from_deck_to_hand = function(e)
    original_draw_from_deck_to_hand(e)

    event({delay = 0.0, trigger = 'before', func = function()

        local groups = {}
        local cards_from_groups = {}

        -- Check for linked cards in the G.hand

        for i = 1, #G.hand.cards do
            local card = G.hand.cards[i]
            if card.ability.group then
                local can_insert = true

                for _, group in ipairs(groups) do
                    if group.id == card.ability.group.id then
                        can_insert = false
                    end
                end

                if can_insert then
                    table.insert(groups, card.ability.group)
                end
            end
        end

        local m = 1
        for _, group in ipairs(groups) do

            local n = 0
            while n < #G.deck.cards do
                local card = G.deck.cards[#G.deck.cards - n]

                if card.ability.group and (card.ability.group.id == group.id) then
                    cards_from_groups[m] = card
                    m = m + 1
                end

                n = n + 1
            end
        end

        local drawn = false

        for i = 1, #cards_from_groups do
            local n = 0
            while n < #G.deck.cards do
                local card = G.deck.cards[#G.deck.cards - n]

                if card == cards_from_groups[i] then
                    draw_card(G.deck, G.hand, i * 100 / #cards_from_groups, 'up', true, card)
                    drawn = true
                end

                n = n + 1
            end
        end

        if groups and drawn then
            if G.jokers ~= nil then
                for _, v in ipairs(G.jokers.cards) do
                    if v.config.center.key == 'j_bunc_games_collector' and not v.debuff then
                        v:calculate_joker({groups_drawn = groups})
                    end
                end
            end
        end

    return true end})
end

local original_add_to_highlighted = CardArea.add_to_highlighted
function CardArea:add_to_highlighted(card, silent)
    if G.STATE ~= G.STATES.DRAW_TO_HAND and not G.DRAWING_CARDS then
        if card.ability.group and self then
            local group = {}
            for i = 1, #self.cards do
                if self.cards[i].ability.group
                and self.cards[i].ability.group.id == card.ability.group.id then
                    if self.config.type == 'hand' and not self.cards[i].highlighted then
                        table.insert(group, self.cards[i])
                    end
                end
            end
            for i = 1, #group do
                if i ~= #group then
                    self.highlighted[#self.highlighted+1] = group[i]
                    group[i].highlighted = true

                    -- The Gate fix

                    if G.GAME.blind and G.GAME.blind.name == 'bl_bunc_gate' and not G.GAME.blind.disabled and self == G.hand then
                        group[i].ability.forced_selection = true
                    end

                else
                    original_add_to_highlighted(self, group[i], (silent == nil) and false or silent)
                end
            end
        else
            original_add_to_highlighted(self, card, silent)
        end
    end
end

local original_remove_from_highlighted = CardArea.remove_from_highlighted
function CardArea:remove_from_highlighted(card, force)
    if card.ability.group and self and not force then
        local group = {}
        for i = 1, #self.cards do
            if self.config.type == 'hand'
            and self.cards[i].ability.group
            and self.cards[i].ability.group.id == card.ability.group.id then
                table.insert(group, self.cards[i])
            end
        end
        for i = 1, #group do
            for index, highligthed in ipairs(self.highlighted) do
                if highligthed == group[i] then
                    table.remove(self.highlighted, index)
                end
            end
            group[i].highlighted = false
            if i == #group then
                original_remove_from_highlighted(self, group[i], force)
            end
        end
    else
        original_remove_from_highlighted(self, card, force)
    end
end

-- Polyminoes

SMODS.Atlas({key = 'bunco_polyminoes_undiscovered', path = 'Consumables/PolyminoesUndiscovered.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_polyminoes', path = 'Consumables/Polyminoes.png', px = 71, py = 95})

SMODS.ConsumableType{
    key = 'Polymino',
    primary_colour = HEX('424e54'),
    secondary_colour = G.C.BUNCO_VIRTUAL_DARK,
    collection_rows = {4, 4}
}

SMODS.UndiscoveredSprite{
    key = 'Polymino',
    atlas = 'bunco_polyminoes_undiscovered',
    pos = coordinate(1)
}

SMODS.Consumable{ -- The I
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_i',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'S_2', true},
            {'S_6', true},
            {'S_7', true},
            {'S_Q', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

            -- Suit check:

            for i = 1, #SMODS.Suit.obj_buffer do
                local suit = SMODS.Suit.obj_buffer[i]
                local same_suit = 0
                for j = 1, #cards do
                    if cards[j]:is_suit(suit, nil, true) then
                        same_suit = same_suit + 1
                    end
                end
                if same_suit >= 4 then return true end
            end

            -- Rank check:

            for i = 1, #cards do
                local rank = cards[i]:get_id()
                local same_rank = 0
                for j = 1, #cards do
                    if cards[j]:get_id() == rank then
                        same_rank = same_rank + 1
                    end
                end
                if same_rank >= 4 then return true end
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(1),
}

SMODS.Consumable{ -- The O
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_o',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'D_Q', true},
            {'D_Q', true},
            {'H_K', true},
            {'C_K', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

            -- Count occurrences of each suit and rank

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = (suit_count[suit] or 0) + 1
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = (rank_count[rank] or 0) + 1
            end

            -- Check for exactly two cards with the same suit

            local matching_suits = 0
            local matching_ranks = 0

            for _, count in pairs(suit_count) do
                if count >= 2 then
                    matching_suits = matching_suits + 1
                end
            end

            -- Check for exactly two cards with the same rank

            for _, count in pairs(rank_count) do
                if count >= 2 then
                    matching_ranks = matching_ranks + 1
                end
            end

            -- Check for two matches of either rank or suit

            if matching_suits >= 2 or matching_ranks >= 2 then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(2),
}

SMODS.Consumable{ -- The T
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_t',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'H_7', true},
            {'C_7', true},
            {'S_7', true},
            {'H_A', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

            -- Count occurrences of each suit and rank

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = (suit_count[suit] or 0) + 1
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = (rank_count[rank] or 0) + 1
            end


            local matching_suits = 0
            local matching_ranks = 0
            local mismatched_suits = 0
            local mismatched_ranks = 0

            -- Check for exactly three cards with the same suit

            for _, count in pairs(suit_count) do
                if count >= 3 then
                    matching_suits = matching_suits + 1
                elseif count >= 1 then
                    mismatched_suits = mismatched_suits + 1
                end
            end

            -- Check for exactly three cards with the same rank

            for _, count in pairs(rank_count) do
                if count >= 3 then
                    matching_ranks = matching_ranks + 1
                elseif count >= 1 then
                    mismatched_ranks = mismatched_ranks + 1
                end
            end

            -- Check for three matches of either rank or suit and one mismatch

            say('matching_ranks: '..matching_ranks..', mismatched_ranks: '..mismatched_ranks)
            say('matching_suits: '..matching_suits..', mismatched_suits: '..mismatched_suits)

            if (matching_suits >= 1 and mismatched_suits >= 1) or (matching_ranks >= 1 and mismatched_ranks >= 1) then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(3),
}

SMODS.Consumable{ -- The S
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_s',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'D_2', true},
            {'C_2', true},
            {'C_T', true},
            {'S_T', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

            -- Count occurrences of each rank and suit

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = (suit_count[suit] or 0) + 1
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = rank_count[rank] or {}
                table.insert(rank_count[rank], cards[i])
            end

            -- Identify two groups of two cards with the same rank

            local pair1, pair2 = nil, nil
            for rank, cards in pairs(rank_count) do
                if #cards >= 2 then
                    if not pair1 then
                        pair1 = cards
                    elseif not pair2 then
                        pair2 = cards
                        break
                    end
                end
            end

            if not pair1 or not pair2 then
                return false
            end

            -- Check for a common suit between the pairs

            local shared_suits = {}
            for _, card1 in ipairs(pair1) do
                for _, card2 in ipairs(pair2) do
                    for j = 1, #SMODS.Suit.obj_buffer do
                        local suit = SMODS.Suit.obj_buffer[j]
                        if card1:is_suit(suit, nil, true) and card2:is_suit(suit, nil, true) then
                            shared_suits[suit] = true
                        end
                    end
                end
            end

            if next(shared_suits) then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(4),
}

SMODS.Consumable{ -- The Z
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_z',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'S_4', true},
            {'S_A', true},
            {'H_A', true},
            {'H_J', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

            -- Count occurrences of each suit and rank

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = suit_count[suit] or {}
                        table.insert(suit_count[suit], cards[i])
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = (rank_count[rank] or 0) + 1
            end

            -- Identify two groups of two cards with the same suit

            local pair1, pair2 = nil, nil
            for suit, cards in pairs(suit_count) do
                if #cards >= 2 then
                    if not pair1 then
                        pair1 = cards
                    elseif not pair2 then
                        pair2 = cards
                        break
                    end
                end
            end

            if not pair1 or not pair2 then
                return false
            end

            -- Check for a common rank between the pairs

            local shared_ranks = {}
            for _, card1 in ipairs(pair1) do
                for _, card2 in ipairs(pair2) do
                    if card1:get_id() == card2:get_id() then
                        shared_ranks[card1:get_id()] = true
                    end
                end
            end

            if next(shared_ranks) then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(5),
}

SMODS.Consumable{ -- The J
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_j',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'D_Q', true},
            {'H_Q', true},
            {'C_Q', true},
            {'C_K', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

           -- Count occurrences of each rank and suit

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = suit_count[suit] or {}
                        table.insert(suit_count[suit], cards[i])
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = rank_count[rank] or {}
                table.insert(rank_count[rank], cards[i])
            end

            -- Identify three cards with the same rank

            local three_of_a_kind = nil
            local other_cards = nil

            for rank, cards in pairs(rank_count) do
                if #cards >= 3 then
                    three_of_a_kind = cards
                elseif #cards >= 1 then
                    if not other_cards then
                        other_cards = {}
                    end
                    for _, card in ipairs(cards) do
                        table.insert(other_cards, card)
                    end
                end
            end

            if not three_of_a_kind or not other_cards then
                return false
            end

            -- Check for a common suit between the three cards and the other card

            local common_suit_found = false
            for j = 1, #SMODS.Suit.obj_buffer do
                local suit = SMODS.Suit.obj_buffer[j]
                for _, other_card in ipairs(other_cards) do
                    if other_card:is_suit(suit, nil, true) then
                        for _, card in ipairs(three_of_a_kind) do
                            if card:is_suit(suit, nil, true) then
                                common_suit_found = true
                            end
                        end
                    end
                end
                if common_suit_found then
                    break
                end
            end

            if common_suit_found then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(6),
}

SMODS.Consumable{ -- The L
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_l',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'S_2', true},
            {'S_3', true},
            {'S_T', true},
            {'D_T', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

           -- Count occurrences of each suit and rank

            local suit_count = {}
            local rank_count = {}

            for i = 1, #cards do
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        suit_count[suit] = suit_count[suit] or {}
                        table.insert(suit_count[suit], cards[i])
                    end
                end

                local rank = cards[i]:get_id()
                rank_count[rank] = rank_count[rank] or {}
                table.insert(rank_count[rank], cards[i])
            end

            -- Identify three cards with the same suit

            local three_of_a_suit = nil
            local other_cards = nil

            for suit, cards in pairs(suit_count) do
                if #cards >= 3 then
                    three_of_a_suit = cards
                elseif #cards >= 1 then
                    if not other_cards then
                        other_cards = {}
                    end
                    for _, card in ipairs(cards) do
                        table.insert(other_cards, card)
                    end
                end
            end

            if not three_of_a_suit or not other_cards then
                return false
            end

            -- Check for a common rank between the three cards and the other card

            local common_rank_found = false

            for _, other_card in ipairs(other_cards) do
                local other_card_rank = other_card:get_id()

                for _, card in ipairs(three_of_a_suit) do
                    if card:get_id() == other_card_rank then
                        common_rank_found = true
                        break
                    end
                end
            end

            if common_rank_found then
                return true
            end
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(7),
}

SMODS.Consumable{ -- The /
    set = 'Polymino', atlas = 'bunco_polyminoes',
    key = 'the_slash',

    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}

        local example = {
            {'S_2', true},
            {'C_T', true},
            {'H_Q', true},
            {'D_A', true}
        }
        return {main_end = {create_polymino_card_set(example)}}
    end,

    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(G.localization.misc.dictionary.bunc_mysterious_polymino, get_type_colour(self or card.config, card), nil, 1.2)
    end,

    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted == 4 or (G.GAME.used_vouchers['v_bunc_polybius'] and #G.hand.highlighted == 5)) then
            local cards = G.hand.highlighted

            -- Group check:

            for i = 1, #cards do
                if cards[i].ability.group then return false end
            end

           -- Track unique ranks and suits

            local rank_set = {}
            local suit_set = {}

            local extra_suits = 0
            local extra_ranks = 0

            for i = 1, #cards do
                local rank = cards[i]:get_id()

                -- Collect all suits the card belongs to

                local card_suits = {}
                for j = 1, #SMODS.Suit.obj_buffer do
                    local suit = SMODS.Suit.obj_buffer[j]
                    if cards[i]:is_suit(suit, nil, true) then
                        table.insert(card_suits, suit)
                    end
                end

                -- Check if rank or suit is already in the set

                if rank_set[rank] then
                    extra_ranks = extra_ranks + 1
                end

                if (#cards == 4 and extra_ranks >= 1) or (#cards == 5 and extra_ranks >= 2) then
                    return false
                end

                for _, suit in ipairs(card_suits) do
                    if suit_set[suit] then
                        extra_suits = extra_suits + 1
                    end
                end

                if (#cards == 4 and extra_suits >= 1) or (#cards == 5 and extra_suits >= 2) then
                    return false
                end

                -- Add rank and suits to their respective sets

                rank_set[rank] = true
                for _, suit in ipairs(card_suits) do
                    suit_set[suit] = true
                end
            end

            return true
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(8),

    in_pool = function(self)
        return BUNCOMOD.funcs.exotic_in_pool()
    end
}

SMODS.Consumable{ -- The 8
    set = 'Spectral', atlas = 'bunco_polyminoes',
    key = 'the_8',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_linked_group'}
    end,

    hidden = true,
    soul_rate = 0.002,
    soul_set = 'Polymino',

    update = function(self, card)
        if card.highlighted then
            if G.GAME then G.GAME.THE_8_BYPASS = true end
        end
    end,

    can_use = function(self, card)
        local cards = G.hand.highlighted

        -- Group check:

        for i = 1, #cards do
            if cards[i].ability.group then return false end
        end

        if #cards > 1 then
            return true
        end
        return false
    end,

    use = function(self, card)
        link_cards(G.hand.highlighted, self.key)
        card:juice_up(0.3, 0.5)
    end,

    pos = coordinate(9),
}

-- Exotic suits

SMODS.Atlas({key = 'bunco_cards', path = 'Exotic/ExoticCards.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_cards_hc', path = 'Exotic/ExoticCardsHC.png', px = 71, py = 95})

SMODS.Atlas({key = 'bunco_suits', path = 'Exotic/ExoticSuits.png', px = 18, py = 18})
SMODS.Atlas({key = 'bunco_suits_hc', path = 'Exotic/ExoticSuitsHC.png', px = 18, py = 18})

SMODS.Suit{ -- Fleurons
    key = 'Fleurons',
    card_key = 'FLEURON',
    hidden = true,

    lc_atlas = 'bunco_cards',
    hc_atlas = 'bunco_cards_hc',

    lc_ui_atlas = 'bunco_suits',
    hc_ui_atlas = 'bunco_suits_hc',

    pos = { x = 0, y = 0 },
    ui_pos = { x = 0, y = 0 },

    lc_colour = HEX('d6901a'),
    hc_colour = HEX('dbb529'),

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
        return BUNCOMOD.funcs.exotic_in_pool()
    end
}

SMODS.Suit{ -- Halberds
    key = 'Halberds',
    card_key = 'HALBERD',
    hidden = true,

    lc_atlas = 'bunco_cards',
    hc_atlas = 'bunco_cards_hc',

    lc_ui_atlas = 'bunco_suits',
    hc_ui_atlas = 'bunco_suits_hc',

    pos = { x = 0, y = 1 },
    ui_pos = { x = 1, y = 0 },

    lc_colour = HEX('6e3c63'),
    hc_colour = HEX('993283'),

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
        return BUNCOMOD.funcs.exotic_in_pool()
    end
}

table.insert(SMODS.Suit.obj_buffer, 1, table.remove(SMODS.Suit.obj_buffer, #SMODS.Suit.obj_buffer)) -- Sort suits
table.insert(SMODS.Suit.obj_buffer, 1, table.remove(SMODS.Suit.obj_buffer, #SMODS.Suit.obj_buffer))
table.insert(SMODS.Suit.obj_buffer, 1, table.remove(SMODS.Suit.obj_buffer, 2))

-- Skins and deck resprites

SMODS.Atlas{key = 'bunco_resprites_enhanced_contrast', path = 'Resprites/EnhancedContrast.png', px = 71, py = 95}
SMODS.Atlas{key = 'bunco_resprites_enhanced_contrast_ui', path = 'Resprites/EnhancedUIContrast.png', px = 18, py = 18}

SMODS.DeckSkin.add_palette(SMODS.DeckSkins['default_Spades'], {
    key = 'recast_contrast',
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'King', 'Queen', 'Jack'},
    atlas = 'bunc_bunco_resprites_enhanced_contrast',
    pos_style = 'deck',
    colour = HEX('5d55a6'),
    suit_icon = {
        atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
    }
})

SMODS.DeckSkin.add_palette(SMODS.DeckSkins['default_Hearts'], {
    key = 'recast_contrast',
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'King', 'Queen', 'Jack'},
    atlas = 'bunc_bunco_resprites_enhanced_contrast',
    pos_style = 'deck',
    colour = HEX('ee151b'),
    suit_icon = {
        atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
    }
})

SMODS.DeckSkin.add_palette(SMODS.DeckSkins['default_Clubs'], {
    key = 'recast_contrast',
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'King', 'Queen', 'Jack'},
    atlas = 'bunc_bunco_resprites_enhanced_contrast',
    pos_style = 'deck',
    colour = HEX('197f77'),
    suit_icon = {
        atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
    }
})

SMODS.DeckSkin.add_palette(SMODS.DeckSkins['default_Diamonds'], {
    key = 'recast_contrast',
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'King', 'Queen', 'Jack'},
    atlas = 'bunc_bunco_resprites_enhanced_contrast',
    pos_style = 'deck',
    colour = HEX('e56b10'),
    suit_icon = {
        atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
    }
})

SMODS.Atlas({key = 'bunco_skins_duckgame_lc', path = 'Skins/SkinDuckGameLC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_duckgame_hc', path = 'Skins/SkinDuckGameHC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_lisa_the_painful_lc', path = 'Skins/SkinLISAThePainfulLC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_lisa_the_painful_hc', path = 'Skins/SkinLISAThePainfulHC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_fiend_folio_lc', path = 'Skins/SkinFiendFolioLC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_fiend_folio_hc', path = 'Skins/SkinFiendFolioHC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_lisa_the_pointless_lc', path = 'Skins/SkinLISAThePointlessLC.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_skins_lisa_the_pointless_hc', path = 'Skins/SkinLISAThePointlessHC.png', px = 71, py = 95})

SMODS.DeckSkin{
    key = 'duck_game',
    suit = 'bunc_Fleurons',
    palettes = {
        {
            key = 'lc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_duckgame_lc'
        },
        {
            key = 'hc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_duckgame_hc'
        }
    }
}

SMODS.DeckSkin{
    key = 'lisa_the_painful',
    suit = 'bunc_Fleurons',
    palettes = {
        {
            key = 'lc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_lisa_the_painful_lc'
        },
        {
            key = 'hc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_lisa_the_painful_hc'
        }
    }
}

SMODS.DeckSkin{
    key = 'fiend_folio',
    suit = 'bunc_Halberds',
    palettes = {
        {
            key = 'lc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_fiend_folio_lc'
        },
        {
            key = 'hc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_fiend_folio_hc'
        }
    }
}

SMODS.DeckSkin{
    key = 'lisa_the_pointless',
    suit = 'bunc_Halberds',
    palettes = {
        {
            key = 'lc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_lisa_the_pointless_lc'
        },
        {
            key = 'hc',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'ranks',
            atlas = 'bunc_bunco_skins_lisa_the_pointless_hc'
        }
    }
}

-- Exotic system toggle logic

function disable_exotics()
    if G.GAME then G.GAME.Exotic = false end
    say('Triggered Exotic System disabling.')
end

function enable_exotics()
    if G.GAME then G.GAME.Exotic = true end
    say('Triggered Exotic System enabling.')
end

-- Poker hands

SMODS.PokerHandPart{ -- Spectrum base (Referenced from SixSuits)
    key = 'spectrum',
    func = function(hand)
        local suits = {}

        -- determine suits to be used
        for _, v in ipairs(SMODS.Suit.obj_buffer) do
            suits[v] = 1
        end
        -- < 5 hand cant be a spectrum
        if #hand < 5 then return {} end

        local nonwilds = {}
        for i = 1, #hand do
            local cardsuits = {}
            for _, v in ipairs(SMODS.Suit.obj_buffer) do
                -- determine table of suits for each card (for future faster calculations)
                if hand[i]:is_suit(v, nil, true) then
                    table.insert(cardsuits, v)
                end
            end

            -- if somehow no suits: spectrum is impossible
            if #cardsuits == 0 then
                return {}
            -- if only 1 suit: can be handled immediately
            elseif #cardsuits == 1 then
                -- if suit is already present, not a spectrum, otherwise remove suit from "not yet used suits"
                if suits[cardsuits[1]] == 0 then return {} end
                suits[cardsuits[1]] = 0
            -- add all cards with 2-4 suits to a table to be looked at
            elseif #cardsuits < 5 then
                table.insert(nonwilds, cardsuits)
            end
        end

        -- recursive function for iterating over combinations
        local isSpectrum 
        isSpectrum = function(i, remaining)
            -- traversed all the cards, found spectrum
            if i == #nonwilds + 1 then
                return true
            end

            -- copy remaining suits
            local newremaining = {}
            for k, v in pairs(remaining) do
                newremaining[k] = v
            end

            -- for every suit of the current card: 
            for _, suit in ipairs(nonwilds[i]) do
                -- do nothing if suit has already been used
                if remaining[suit] == 1 then
                    -- use up suit on this card and check next card
                    newremaining[suit] = 0
                    if isSpectrum(i + 1, newremaining) then
                        return true
                    end
                    -- reset suit before continuing
                    newremaining[suit] = 1
                end
            end

            return false
        end

        -- begin iteration from first (not already considered) card
        if isSpectrum(1, suits) then
            return {hand}
        else
            return {}
        end
    end
}

SMODS.PokerHand{ -- Spectrum (Referenced from SixSuits)
    key = 'Spectrum',
    visible = false,
    chips = 50,
    mult = 6,
    l_chips = 20,
    l_mult = 2,
    example = {
        { 'S_2',    true },
        { 'D_7',    true },
        { 'C_3', true },
        { 'bunc_FLEURON_5', true },
        { 'H_K',    true },
    },
    evaluate = function(parts)
        return parts.bunc_spectrum
    end
}

SMODS.PokerHand{ -- Straight Spectrum (Referenced from SixSuits)
    key = 'Straight Spectrum',
    visible = false,
    chips = 120,
    mult = 10,
    l_chips = 45,
    l_mult = 4,
    example = {
        { 'S_Q',    true },
        { 'bunc_FLEURON_J', true },
        { 'C_T',    true },
        { 'D_9', true },
        { 'H_8',    true }
    },
    process_loc_text = function(self)
        SMODS.PokerHand.process_loc_text(self)
        SMODS.process_loc_text(G.localization.misc.poker_hands, self.key..' (Royal)', self.loc_txt, 'extra')
    end,
    evaluate = function(parts)
        if not next(parts.bunc_spectrum) or not next(parts._straight) then return {} end
        return { SMODS.merge_lists (parts.bunc_spectrum, parts._straight) }
    end,
    modify_display_text = function(self, _cards, scoring_hand)
        local royal = true
		for j = 1, #scoring_hand do
			local rank = SMODS.Ranks[scoring_hand[j].base.value]
			royal = royal and (rank.key == 'Ace' or rank.key == '10' or rank.face)
		end
		if royal then
			return self.key..' (Royal)'
		end
    end
}

SMODS.PokerHand{ -- Spectrum House (Referenced from SixSuits)
    key = 'Spectrum House',
    above_hand = 'Flush House',
    visible = false,
    chips = 150,
    mult = 15,
    l_chips = 40,
    l_mult = 4,
    example = {
        { 'S_Q',    true },
        { 'bunc_FLEURON_Q', true },
        { 'C_Q',    true },
        { 'D_8',    true },
        { 'H_8',    true }
    },
    evaluate = function(parts)
        if #parts._3 < 1 or #parts._2 < 2 or not next(parts.bunc_spectrum) then return {} end
        return {SMODS.merge_lists (parts._all_pairs, parts.bunc_spectrum)}
    end
}

SMODS.PokerHand{ -- Spectrum Five (Referenced from SixSuits)
    key = 'Spectrum Five',
    above_hand = 'Flush Five',
    visible = false,
    chips = 180,
    mult = 18,
    l_chips = 55,
    l_mult = 3,
    example = {
        { 'S_7',    true },
        { 'D_7', true },
        { 'bunc_FLEURON_7',    true },
        { 'H_7',    true },
        { 'C_7',    true }
    },
    evaluate = function(parts)
        if not next(parts._5) or not next(parts.bunc_spectrum) then return {} end
        return {SMODS.merge_lists (parts._5, parts.bunc_spectrum)}
    end
}

SMODS.PokerHandPart{ -- Deal base
    key = 'deal',
    func = function(hand)
        local current_ranks = {}
        local deals = {}
        for i = 1, #hand do
            table.insert(current_ranks, hand[i]:get_id())
        end

        if G.jokers ~= nil then
            for _, v in ipairs(G.jokers.cards) do
                if v.config.center.key == 'j_bunc_registration_plate' then
                    table.insert(deals, v.ability.extra.ranks)
                end
            end
        end

        local count1 = {}
        for _, value in ipairs(current_ranks) do
            if count1[value] then
                count1[value] = count1[value] + 1
            else
                count1[value] = 1
            end
        end

        for i, deal in ipairs(deals) do
            local count2 = {}
            for _, value in ipairs(deal) do
                if count2[value] then
                    count2[value] = count2[value] + 1
                else
                    count2[value] = 1
                end
            end

            local equal = true
            for key, count in pairs(count1) do
                if count2[key] ~= count then
                    equal = false
                    break
                end
            end

            if equal then
                for key, count in pairs(count2) do
                    if count1[key] ~= count then
                        equal = false
                        break
                    end
                end
            end

            if equal then
                local self = G.GAME.hands['bunc_Deal']

                self.chips = 0
                self.mult = 0
                self.level = 0

                for k, v in pairs(G.GAME.hands) do
                    if v.visible and v.played > 0 and v ~= self then
                        self.chips = self.chips + v.chips
                        self.mult = self.mult + v.mult
                    end
                end
                return {hand}
            end
        end
        return {}
    end
}

SMODS.PokerHand{ -- Deal
    key = 'Deal',
    above_hand = 'Flush Five',
    visible = false,
    chips = 0,
    mult = 0,
    l_chips = 0,
    l_mult = 0,
    example = {},
    evaluate = function(parts)
        return parts.bunc_deal
    end
}

-- Blinds

SMODS.Atlas({key = 'bunco_blinds', path = 'Blinds/Blinds.png', px = 34, py = 34, frames = 21, atlas_table = 'ANIMATION_ATLAS'})
SMODS.Atlas({key = 'bunco_blinds_finisher', path = 'Blinds/BlindsFinisher.png', px = 34, py = 34, frames = 21, atlas_table = 'ANIMATION_ATLAS'})

SMODS.Blind{ -- The Paling
    key = 'paling',
    boss = {min = 3},

    boss_colour = HEX('45d368'),

    pos = {y = 0},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Umbrella
    key = 'umbrella',
    boss = {min = 2},

    disable = function(self)
        for i = 1, #G.hand.cards do
            if G.hand.cards[i].facing == 'back' then
                G.hand.cards[i]:flip()
            end
        end
        for k, v in pairs(G.playing_cards) do
            v.ability.wheel_flipped = nil
        end
    end,

    boss_colour = HEX('1e408e'),

    pos = {y = 1},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Tine
    key = 'tine',
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_rank, 'ranks')}}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize('bunc_most_played_rank')}}
    end,

    recalc_debuff = function(self, card, from_blind)
        if not G.GAME.blind.disabled and card.area ~= G.jokers and card.config.center ~= G.P_CENTERS.m_stone then
            if card.base.value == G.GAME.current_round.most_played_rank then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('e36cbe'),

    pos = {y = 2},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Swing
    key = 'swing',
    boss = {min = 3},

    defeat = function(self)
        G.GAME.Swing = false
    end,

    stay_flipped = function(self, area, card)
        if G.GAME.Swing == true then
            return true
        else
            return false
        end
    end,

    disable = function(self)
        for i = 1, #G.hand.cards do
            if G.hand.cards[i].facing == 'back' then
                G.hand.cards[i]:flip()
            end
        end
        for k, v in pairs(G.playing_cards) do
            v.ability.wheel_flipped = nil
        end
    end,

    boss_colour = HEX('17f3d0'),

    pos = {y = 3},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Miser
    key = 'miser',
    boss = {min = 2},

    defeat = function(self)
        if not G.GAME.blind.disabled then
            G.GAME.Miser = true
        end
    end,

    boss_colour = HEX('991a7f'),

    pos = {y = 4},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Gate
    key = 'gate',
    boss = {min = 1},

    boss_colour = HEX('c9a27a'),

    pos = {y = 5},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Flame
    key = 'flame',
    boss = {min = 3},

    recalc_debuff = function(self, card, from_blind)
        if not G.GAME.blind.disabled and card.area ~= G.jokers then
            if card.config.center ~= G.P_CENTERS.c_base then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('9b2d49'),

    pos = {y = 6},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Mask
    key = 'mask',
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands'), localize(G.GAME.current_round.least_played_poker_hand, 'poker_hands')}}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize('ph_most_played'), localize('bunc_least_played_hand')}}
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        if not G.GAME.blind.disabled then
            if G.GAME.last_hand_played == G.GAME.current_round.most_played_poker_hand then
                G.GAME.blind.triggered = true
                return G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_mult, G.GAME.hands[G.GAME.current_round.least_played_poker_hand].s_chips, true
            end
        end
        return mult, hand_chips, false
    end,

    boss_colour = HEX('efcca6'),

    pos = {y = 7},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Bulwark
    key = 'bulwark',
    boss = {min = 2},

    vars = {},
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize('ph_most_played')}}
    end,

    press_play = function(self)
        if not G.GAME.blind.disabled then
            if G.FUNCS.get_poker_hand_info(G.hand.highlighted) == G.GAME.current_round.most_played_poker_hand then
                local original_limit = G.hand.config.highlighted_limit
                event({ func = function()
                    G.hand.config.highlighted_limit = math.huge
                    if G.hand.cards then
                        for k, v in ipairs(G.hand.cards) do
                            G.hand:add_to_highlighted(v, true)
                            if k <= 3 then
                                play_sound('card1', 1)
                            end
                        end
                        G.hand.config.highlighted_limit = original_limit or 5
                        G.FUNCS.discard_cards_from_highlighted(nil, true)
                        G.GAME.blind:wiggle()
                    end
                return true end })
                G.GAME.blind.triggered = true
                delay(0.7)
            end
        end
    end,

    boss_colour = HEX('672f69'),

    pos = {y = 8},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Knoll
    key = 'knoll',
    boss = {min = 4},

    stay_flipped = function(self, area, card)
        if not G.GAME.blind.disabled and (area == G.hand) and
        G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
            if G.GAME.dollars > to_big(5) then
                G.GAME.Knoll = G.GAME.Knoll or {}
                table.insert(G.GAME.Knoll, card)
                card:set_debuff(true)
            end
        end
    end,
    recalc_debuff = function(self, card, from_blind)
        if not G.GAME.blind.disabled and G.GAME.Knoll then
            for _, debuffed_card in ipairs(G.GAME.Knoll) do
                if debuffed_card == card then
                    return true
                end
            end
            return false
        end
    end,
    defeat = function(self)
        G.GAME.Knoll = nil
    end,

    boss_colour = HEX('6d8f2d'),

    pos = {y = 9},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Stone
    key = 'stone',
    boss = {min = 4},

    set_blind = function(self, reset, silent)
        if not reset then
            G.GAME.blind.original_chips = G.GAME.blind.chips
        end
        if not reset and not G.GAME.blind.disabled and to_big(G.GAME.dollars) >= to_big(10) then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) * (math.floor(to_number(G.GAME.dollars) / 10) + G.GAME.blind.mult)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    disable = function()
        G.GAME.blind.chips = G.GAME.blind.original_chips
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    boss_colour = HEX('586372'),

    pos = {y = 10},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Sand
    key = 'sand',
    boss = {min = 4},

    set_blind = function(self, reset, silent)
        if not reset then
            G.GAME.blind.original_chips = G.GAME.blind.chips
        end
        if not reset and not G.GAME.blind.disabled and #G.HUD_tags ~= 0 then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) * (#G.HUD_tags + G.GAME.blind.mult)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    disable = function()
        G.GAME.blind.chips = G.GAME.blind.original_chips
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    in_pool = function(self)
        if (G.GAME.round_resets.ante < self.boss.min) or (G.HUD_tags and #G.HUD_tags < 2) then
            return false
        else
            return true
        end
    end,

    boss_colour = HEX('b79131'),

    pos = {y = 11},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Blade
    key = 'blade',
    boss = {min = 4},

    vars = {},
    loc_vars = function(self)
        local overscore = get_blind_amount(G.GAME.round_resets.ante)*G.P_BLINDS.bl_bunc_blade.mult*G.GAME.starting_params.ante_scaling
        overscore = number_format(overscore * 1.5)
        return {vars = {overscore}}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize('bunc_blade')}}
    end,

    boss_colour = HEX('d92034'),

    pos = {y = 12},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Claw
    key = 'claw',
    boss = {min = 1},

    boss_colour = HEX('d45741'),

    pos = {y = 13},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Veil
    key = 'veil',
    boss = {min = 1},

    boss_colour = HEX('ffdf7d'),

    pos = {y = 14},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Cadaver
    key = 'cadaver',
    boss = {min = 2},

    debuff_hand = function(self, cards, hand, handname, check)
        if not G.GAME.blind.disabled then
            local condition = true
            for i = 1, #cards do
                if cards[i]:is_face() and (cards[i].facing == 'front' or not check) then
                    condition = false
                    break
                end
            end
            return condition
        end
    end,

    in_pool = function(self)
        local face_card = false
        if G.playing_cards then
            for _, card in pairs(G.playing_cards) do
                if card:is_face() then
                    face_card = true
                    break
                end
            end
        end
        return (G.GAME.round_resets.ante >= self.boss.min) and face_card or false
    end,

    boss_colour = HEX('a132d5'),

    pos = {y = 15},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Wind
    key = 'wind',
    boss = {min = 6},

    drawn_to_hand = function(self)
        if not G.GAME.blind.disabled and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
            G.GAME.blind.ready = true
            if G.jokers and G.jokers.cards[1] then big_juice(G.jokers.cards[1]) end
            G.GAME.blind:wiggle()
        end
    end,

    boss_colour = HEX('a6cdef'),

    pos = {y = 16},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Prince
    key = 'prince',
    boss = {min = 6},

    drawn_to_hand = function(self)
        if not G.GAME.blind.disabled and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
            G.GAME.blind.ready = true
            if G.jokers and G.jokers.cards then
                for i = 1, #G.jokers.cards do
                    G.GAME.blind:debuff_card(G.jokers.cards[i])
                    big_juice(G.jokers.cards[i])
                end
            end
            G.GAME.blind:wiggle()
        end
        if not G.GAME.blind.disabled and G.GAME.current_round.hands_played > 0 then
            G.GAME.blind:disable()
        end
    end,

    boss_colour = HEX('f31745'),

    pos = {y = 17},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Depths
    key = 'depths',
    boss = {min = 4},

    press_play = function(self)
        if not G.GAME.blind.disabled then
            local stickers = {'tag_bunc_eternal', 'tag_bunc_perishable', 'tag_bunc_scattering'}

            add_tag(Tag(stickers[math.random(#stickers)]))

            G.GAME.blind:wiggle()
            G.GAME.blind.triggered = true
            delay(0.7)
        end
    end,

    in_pool = function(self)
        if (G.GAME.round_resets.ante < self.boss.min) or get_deck_win_stake() < 7 then
            return false
        else
            return true
        end
    end,

    boss_colour = HEX('3f3f3f'),

    pos = {y = 18},
    atlas = 'bunco_blinds'
}

SMODS.Blind{ -- The Chasm
    key = 'chasm',
    boss = {min = 4},

    press_play = function(self)
        if not G.GAME.blind.disabled then
            local stickers = {'tag_bunc_hindered', 'tag_bunc_reactive', 'tag_bunc_rental'}

            add_tag(Tag(stickers[math.random(#stickers)]))

            G.GAME.blind:wiggle()
            G.GAME.blind.triggered = true
            delay(0.7)
        end
    end,

    in_pool = function(self)
        if (G.GAME.round_resets.ante < self.boss.min) or get_deck_win_stake() < 10 then
            return false
        else
            return true
        end
    end,

    boss_colour = HEX('553529'),

    pos = {y = 19},
    atlas = 'bunco_blinds'
}

-- Finishers

SMODS.Blind{ -- Chartreuse Crown
    key = 'final_crown',
    boss = {showdown = true, min = 10, max = 10},

    dollars = 8,

    recalc_debuff = function(self, card, from_blind)
        if not G.GAME.blind.disabled and card.area ~= G.jokers then
            if card.base.suit == ('Spades') or
            card.base.suit == ('Hearts') or
            card.base.suit == ('Clubs') or
            card.base.suit == ('Diamonds') then
                if card.ability.name ~= 'Stone Card' then
                    card:set_debuff(true)
                    return true
                end
            end
            return false
        end
    end,

    in_pool = function()
        local exotic_amount = 0

        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if (v.base.suit == ('bunc_Fleurons') or
                v.base.suit == ('bunc_Halberds')) and
                v.ability.name ~= 'Stone Card' then
                    exotic_amount = exotic_amount + 1
                end
            end
        end

        if exotic_amount >= 10 then
            return true
        else
            return false
        end
    end,

    boss_colour = HEX('96a756'),

    pos = {y = 0},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Vermilion Trident
    key = 'final_trident',
    boss = {showdown = true, min = 10, max = 10},

    dollars = 8,

    set_blind = function(self, reset, silent)
        if not reset then
            G.GAME.blind.original_chips = G.GAME.blind.chips
        end
        if not reset and not G.GAME.blind.disabled and G.GAME.ante_purchases then
            local final_chips = (G.GAME.blind.chips / G.GAME.blind.mult) * (G.GAME.ante_purchases + G.GAME.blind.mult)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    disable = function()
        G.GAME.blind.chips = G.GAME.blind.original_chips
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    boss_colour = HEX('db481e'),

    pos = {y = 1},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Indigo Tower
    key = 'final_tower',
    boss = {showdown = true, min = 10, max = 10},

    dollars = 8,

    recalc_debuff = function(self, card, from_blind)
        if not G.GAME.blind.disabled and card.area ~= G.jokers then
            if not card.ability.played_this_ante then
                card:set_debuff(true)
                return true
            end
            return false
        end
    end,

    boss_colour = HEX('4f4caa'),

    pos = {y = 2},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Magenta Dagger
    key = 'final_dagger',
    boss = {showdown = true, min = 10, max = 10},

    dollars = 8,

    boss_colour = HEX('cb589f'),

    pos = {y = 3},
    atlas = 'bunco_blinds_finisher'
}

SMODS.Blind{ -- Turquoise Shield
    key = 'final_shield',
    boss = {showdown = true, min = 10, max = 10},

    dollars = 8,

    set_blind = function(self, reset, silent)
        if not reset then
            G.GAME.blind.original_chips = G.GAME.blind.chips
        end
        if not reset and not G.GAME.blind.disabled and G.GAME.overscore and G.GAME.overscore ~= 0 then
            local final_chips = (G.GAME.blind.chips) + (G.GAME.overscore or 0)
            local chip_mod -- iterate over ~120 ticks
            if type(G.GAME.blind.chips) ~= 'table' then
                chip_mod = math.ceil((final_chips - G.GAME.blind.chips) / 120)
            else
                chip_mod = ((final_chips - G.GAME.blind.chips) / 120):ceil()
            end
            local step = 0
            event({trigger = 'after', blocking = true, func = function()
                G.GAME.blind.chips = G.GAME.blind.chips + G.SETTINGS.GAMESPEED * chip_mod
                if G.GAME.blind.chips < final_chips then
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    if step % 5 == 0 then
                        play_sound('chips1', 0.8 + (step * 0.005))
                    end
                    step = step + 1
                else
                    G.GAME.blind.chips = final_chips
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.GAME.blind:wiggle()
                    return true
                end
            end})
        end
    end,

    disable = function()
        G.GAME.blind.chips = G.GAME.blind.original_chips
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    defeat = function(self)
        G.GAME.Shield = false
    end,

    boss_colour = HEX('12e2bf'),

    pos = {y = 4},
    atlas = 'bunco_blinds_finisher'
}

-- Decks

SMODS.Atlas({key = 'bunco_decks', path = 'Decks/Decks.png', px = 71, py = 95})

SMODS.Back{ -- Fairy
	key = 'fairy',

    config = {amount = 4},
    loc_vars = function(self)
        return {vars = {self.config.amount, localize{type = 'name_text', set = 'Other', key = 'bunc_exotic_cards'}}}
    end,

    unlocked = false,

    apply = function()
        enable_exotics()
    end,
    trigger_effect = function(self, args)
        if args.context == 'eval' and G.GAME.last_blind and G.GAME.last_blind.boss then
            event({
                func = (function()
                    local numbers = {}
                    for _, v in ipairs(SMODS.Rank.obj_buffer) do
                        local r = SMODS.Ranks[v]
                        table.insert(numbers, r.card_key)
                    end

                    local suits = {'bunc_FLEURON', 'bunc_HALBERD'}
                    local cards = {}

                    for i = 1, self.config.amount do
                        local rank = pseudorandom_element(numbers, pseudoseed('fairy'..G.SEED))
                        local suit = pseudorandom_element(suits, pseudoseed('fairy'..G.SEED))
                        table.insert(cards, create_playing_card({front = G.P_CARDS[suit .. '_' .. rank]}, G.deck, false, false, {G.C.BUNCO_EXOTIC}))
                    end

                    playing_card_joker_effects(cards)

                    return true
                end)
            })
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_decks'
}

SMODS.Back{ -- Digital
	key = 'digital',

    config = {polymino_rate = 2, consumables = {'c_bunc_the_i'}},
    loc_vars = function(self)
        return {}
    end,

    unlocked = false,
    unlock_condition = {type = 'win_stake', stake = 8},

    apply = function(self)
        G.GAME.polymino_rate = self.config.polymino_rate
    end,

    pos = coordinate(2),
    atlas = 'bunco_decks'
}

-- Tags

SMODS.Atlas({key = 'bunco_tags', path = 'Tags/Tags.png', px = 34, py = 34})
SMODS.Atlas({key = 'bunco_tags_edition', path = 'Tags/TagsEdition.png', px = 34, py = 34})
SMODS.Atlas({key = 'bunco_tags_hand', path = 'Tags/TagsHand.png', px = 34, py = 34})
SMODS.Atlas({key = 'bunco_tags_exotic', path = 'Tags/TagsExotic.png', px = 34, py = 34})
SMODS.Atlas({key = 'bunco_tags_sticker', path = 'Tags/TagsSticker.png', px = 34, py = 34})

SMODS.Tag{ -- Breaking
    key = 'breaking',

    config = {type = 'round_start_bonus'},

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
                tag:yep('+', G.C.BLUE, function()
                    return true
                end)

                G.GAME.blind:disable()

                tag.triggered = true
                return true
            end
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags',

    in_pool = function()
        if pseudorandom('breaking'..G.SEED) < 0.07 then
            return true
        else
            return false
        end
    end
}

SMODS.Tag{ -- Arcade
    key = 'arcade',
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'p_bunc_virtual_mega', set = 'Other', vars = {G.P_CENTERS.p_bunc_virtual_mega.config.choose, G.P_CENTERS.p_bunc_virtual_mega.config.extra}}
        return {}
    end,

    config = {type = 'new_blind_choice'},

    apply = function(self, tag, context)
        if context.type == self.config.type then
            G.CONTROLLER.locks[tag.ID] = true
            tag:yep('+', G.C.BUNCO_VIRTUAL, function()
                local key = 'p_bunc_virtual_mega'
                local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
                G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
                card.cost = 0
                card.from_tag = true
                G.FUNCS.use_card({config = {ref_table = card}})
                card:start_materialize()
                G.CONTROLLER.locks[tag.ID] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_tags',

    in_pool = function()
        if pseudorandom('arcade'..G.SEED) < 0.1 then
            return true
        else
            return false
        end
    end
}

SMODS.Tag{ -- Triple
    key = 'triple',

    config = {type = 'tag_add'},

    apply = function(self, tag, context)
        if context.type == self.config.type and context.tag.key ~= 'tag_double' and context.tag.key ~= 'tag_bunc_triple' then
            G.CONTROLLER.locks[tag.ID] = true
            tag:yep('+', G.C.BUNCO_VIRTUAL, function()
                if context.tag.ability and context.tag.ability.orbital_hand then
                    G.orbital_hand = context.tag.ability.orbital_hand
                end
                add_tag(Tag(context.tag.key))
                add_tag(Tag(context.tag.key))
                G.orbital_hand = nil
                G.CONTROLLER.locks[tag.ID] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(3),
    atlas = 'bunco_tags',

    in_pool = function() return G.GAME.used_vouchers['v_bunc_pin_collector'] end
}

SMODS.Tag{ -- Glitter
    key = 'glitter',

    config = {type = 'store_joker_modify', edition = 'bunc_glitter', odds = 4},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_glitter
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            local applied = nil
            if context.card and not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true

                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card:set_edition({bunc_glitter = true}, true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    context.card.temp_edition = nil
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                applied = true

                tag.triggered = true
            end
            return applied
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags_edition',
}

SMODS.Tag{ -- Fluorescent
    key = 'fluorescent',

    config = {type = 'store_joker_modify', edition = 'bunc_fluorescent', odds = 4},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = G.P_CENTERS.e_bunc_fluorescent
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            local applied = nil
            if context.card and not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true

                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card:set_edition({bunc_fluorescent = true}, true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    context.card.temp_edition = nil
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                applied = true

                tag.triggered = true
            end
            return applied
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_tags_edition',

    in_pool = function()
        if pseudorandom('fluorescent'..G.SEED) < 0.5 then
            return true
        else
            return false
        end
    end
}

SMODS.Tag{ -- Chips
    key = 'chips',

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_foil.config.extra}}
    end,
    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.before then

                hand_chips = mod_chips(hand_chips + G.P_CENTERS.e_foil.config.extra)
                update_hand_text({delay = 0}, {chips = hand_chips})

                tag:instayep('+', G.C.CHIPS, function()
                    return true
                end, 0)
                tag.triggered = true
                return true
            end
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags_hand',

    in_pool = function() return false end
}

SMODS.Tag{ -- Mult
    key = 'mult',

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_holo.config.extra}}
    end,
    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.before then

                mult = mod_mult(mult + G.P_CENTERS.e_holo.config.extra)
                update_hand_text({delay = 0}, {mult = mult})

                tag:instayep('+', G.C.MULT, function()
                    return true
                end, 0)
                tag.triggered = true
                return true
            end
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_tags_hand',

    in_pool = function() return false end
}

SMODS.Tag{ -- Xmult
    key = 'xmult',

    config = {type = 'hand_played'},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_polychrome.config.extra}}
    end,
    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.after then

                mult = mod_mult(mult * G.P_CENTERS.e_polychrome.config.extra)
                update_hand_text({delay = 0}, {mult = mult})

                tag:instayep('+', G.C.MULT, function()
                    return true
                end, 0)
                tag.triggered = true
                return true
            end
        end
    end,

    pos = coordinate(3),
    atlas = 'bunco_tags_hand',

    in_pool = function() return false end
}

SMODS.Tag{ -- Xchip
    key = 'xchips',

    config = {type = 'hand_played', odds = -1},
    loc_vars = function(self, info_queue)
        return {vars = {G.P_CENTERS.e_bunc_glitter.config.Xchips}}
    end,
    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.after then

                hand_chips = mod_chips(hand_chips * G.P_CENTERS.e_bunc_glitter.config.Xchips)
                update_hand_text({delay = 0}, {chips = hand_chips})

                tag:instayep('+', G.C.CHIPS, function()
                    return true
                end, 0)
                tag.triggered = true
                return true
            end
        end
    end,

    pos = coordinate(4),
    atlas = 'bunco_tags_hand',

    in_pool = function() return false end
}

SMODS.Tag{ -- Filigree
    key = 'filigree',

    config = {type = 'standard_pack_opened'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {set = 'Other', key = 'bunc_exotic_cards'}
        return {}
    end,
    apply = function(self, tag, context)
        if context.type == self.config.type then
            tag:instayep('+', G.C.BUNCO_EXOTIC, function()
                return true
            end)
            event({
                trigger = 'after',
                delay = 0,
                blockable = false,
                blocking = false,
                func = function()
                    if G.pack_cards and G.pack_cards.cards ~= nil and G.pack_cards.cards[1] and G.pack_cards.VT.y < G.ROOM.T.h then

                        enable_exotics()

                        for _, v in ipairs(G.pack_cards.cards) do
                            if (not v:is_suit('bunc_Fleurons') and not v:is_suit('bunc_Halberds')) or v.config.center == G.P_CENTERS.m_wild then
                                local suits = {'bunc_Fleurons', 'bunc_Halberds'}
                                local suit = pseudorandom_element(suits, pseudoseed('filigree'..G.SEED))
                                v:change_suit(suit)
                            end
                        end

                        return true
                    end
                end
            })
            tag.triggered = true
            return true
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags_exotic',

    in_pool = BUNCOMOD.funcs.exotic_in_pool
}

SMODS.Tag{ -- Eternal
    key = 'eternal',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'eternal', set = 'Other'}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card and not context.card.ability.eternal and not context.card.ability.perishable and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    context.card:set_eternal(true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(1),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

SMODS.Tag{ -- Perishable
    key = 'perishable',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'perishable', set = 'Other', vars = {G.GAME.perishable_rounds or 1, G.GAME.perishable_rounds or G.GAME.perishable_rounds}}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card and not context.card.ability.perishable and not context.card.ability.eternal and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    context.card:set_perishable(true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

SMODS.Tag{ -- Scattering
    key = 'scattering',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'bunc_scattering', set = 'Other'}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card
            and not context.card.ability.bunc_scattering
            and not context.card.ability.bunc_hindered
            and not context.card.ability.bunc_reactive
            and not context.card.ability.eternal
            and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    SMODS.Stickers['bunc_scattering']:apply(context.card, true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(3),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

SMODS.Tag{ -- Hindered
    key = 'hindered',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'bunc_hindered', set = 'Other'}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card
            and not context.card.ability.bunc_scattering
            and not context.card.ability.bunc_hindered
            and not context.card.ability.bunc_reactive
            and not context.card.ability.eternal
            and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    SMODS.Stickers['bunc_hindered']:apply(context.card, true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(4),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

SMODS.Tag{ -- Reactive
    key = 'reactive',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue + 1] = {key = 'bunc_reactive', set = 'Other'}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card
            and not context.card.ability.bunc_scattering
            and not context.card.ability.bunc_hindered
            and not context.card.ability.bunc_reactive
            and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    SMODS.Stickers['bunc_reactive']:apply(context.card, true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(5),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

SMODS.Tag{ -- Rental
    key = 'rental',

    config = {type = 'store_joker_modify'},
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {key = 'rental', set = 'Other', vars = {G.GAME.rental_rate or 1}}
        return {}
    end,

    apply = function(self, tag, context)
        if context.type == self.config.type then
            if context.card and not context.card.ability.rental and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                tag:yep('+', G.C.RED, function()
                    context.card:set_rental(true)
                    big_juice(context.card)
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)

                tag.triggered = true
            end
            return true
        end
    end,

    pos = coordinate(6),
    atlas = 'bunco_tags_sticker',

    in_pool = function() return false end
}

-- Editions

SMODS.Shader({key = 'glitter', path = 'glitter.fs'})
SMODS.Sound({key = 'glitter', path = 'glitter.ogg'})

SMODS.Edition{
    key = 'glitter',

    config = {Xchips = 1.3},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.Xchips}}
    end,

    calculate = function(self, card, context)
        if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            return {func = function()
                local xchips = G.P_CENTERS.e_bunc_glitter.config.Xchips
                hand_chips = mod_chips(hand_chips * xchips)
                update_hand_text({delay = 0}, {chips = hand_chips})
                card_eval_status_text(card, 'extra', nil, percent, nil,
                {message = 'X'..xchips..' '..G.localization.misc.dictionary.bunc_chips,
                edition = true,
                x_chips = true})
            end}
        end
    end,

    sound = {sound = 'bunc_glitter', per = 1.2, vol = 0.4},
    in_shop = true,
    weight = 9,
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,

    shader = 'glitter'
}

SMODS.Shader({key = 'fluorescent', path = 'fluorescent.fs'})
SMODS.Sound({key = 'fluorescent', path = 'fluorescent.ogg'})

SMODS.Edition{
    key = 'fluorescent',

    sound = {sound = 'bunc_fluorescent', per = 1.2, vol = 0.4},
    in_shop = true,
    weight = 18,
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,

    shader = 'fluorescent'
}

-- Vouchers

SMODS.Atlas({key = 'bunco_vouchers', path = 'Vouchers/Vouchers.png', px = 71, py = 95})

SMODS.Voucher{ -- Lamination
    key = 'lamination',

    unlocked = true,

    pos = coordinate(1),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Supercoating
    key = 'supercoating',

    config = {unlock = 5},
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].consumables_with_edition_used or 0}}
    end,

    requires = {'v_bunc_lamination'},

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'use_consumable_with_edition' and args.used_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(2),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Hedge Trimmer
    key = 'hedge_trimmer',

    config = {percent = 5},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.percent}}
    end,

    unlocked = true,

    pos = coordinate(3),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Chainsaw
    key = 'chainsaw',

    config = {percent = 20, unlock = 20},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.percent}}
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].hedge_trimmer_usage or 0}}
    end,

    requires = {'v_bunc_hedge_trimmer'},

    redeem = function(self)
        G.GAME.starting_params.ante_scaling = (G.GAME.starting_params.ante_scaling / 100) * (100 - self.config.percent)
    end,

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'hedge_trimmer_used' and args.used_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(4),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Cups 'n' Balls
    key = 'cups_n_balls',

    redeem = function(self)
        G.GAME.modifiers.extra_boosters = (G.GAME.modifiers.extra_boosters or 0) + 1
        SMODS.add_booster_to_shop()
    end,

    unlocked = true,

    pos = coordinate(5),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Shell Game
    key = 'shell_game',

    config = {unlock = 25},
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].booster_packs_opened or 0}}
    end,

    requires = {'v_bunc_cups_n_balls'},

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'open_pack' and args.packs_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(6),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Disguise
    key = 'disguise',

    unlocked = true,

    pos = coordinate(7),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Masquerade
    key = 'masquerade',

    config = {unlock = 5},
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].blind_cards_used or 0}}
    end,

    requires = {'v_bunc_disguise'},

    redeem = function(self)
        if G.shop_booster and G.shop_booster.cards then
            for _, booster in ipairs(G.shop_booster.cards) do
                if booster.config.center.type == 'bunc_blind' then
                    booster.cost = 0
                end
            end
        end
    end,

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'use_blind_card' and args.blinds_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(8),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Fanny Pack
    key = 'fanny_pack',

    config = {extra = {odds = 4}},
    loc_vars = function(self, info_queue, card)

        info_queue[#info_queue+1] = {set = 'Tag', key = 'tag_double'}

        local vars
        if G.GAME and G.GAME.probabilities.normal then
            vars = {G.GAME.probabilities.normal, card.ability.extra.odds}
        else
            vars = {1, card.ability.extra.odds}
        end
        return {vars = vars}
    end,

    unlocked = true,

    pos = coordinate(9),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Pin Collector
    key = 'pin_collector',

    config = {unlock = 30},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Tag', key = 'tag_bunc_triple'}
        return {}
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].skips_total or 0}}
    end,

    requires = {'v_bunc_fanny_pack'},

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'blind_skipped' and args.skips_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(10),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Arcade Machine
    key = 'arcade_machine',

    unlocked = true,

    pos = coordinate(11),
    atlas = 'bunco_vouchers'
}

SMODS.Voucher{ -- Polybius
    key = 'polybius',

    config = {unlock = 10},
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {self.config.unlock, G.PROFILES[G.SETTINGS.profile].cards_linked or 0}}
    end,

    requires = {'v_bunc_arcade_machine'},

    unlocked = false,

    check_for_unlock = function(self, args)
        if args.type == 'link_cards' and args.links_total >= self.config.unlock then
            unlock_card(self)
        end
    end,

    pos = coordinate(12),
    atlas = 'bunco_vouchers'
}

-- Blind Cards

function Card:create_blind_card()

    if pseudorandom('the_joker'..G.SEED) < 0.04 and G.P_CENTERS['j_bunc_the_joker'].unlocked and not (G.GAME.used_jokers['j_bunc_the_joker'] and not next(find_joker('Showman'))) then
        return create_card('Joker', G.pack_cards, nil, nil, true, true, 'j_bunc_the_joker', 'buf')
    end

    self = Card(self.T.x, self.T.y, 0.8*G.CARD_W, 0.8*G.CARD_W, nil, G.P_CENTERS.c_base)

    -- Blind acquiring like in the base game

    local boss

    if not TW_BL then -- TW_BL is for Twich Blinds mod
        boss = get_new_boss()
    else
        boss = TW_BL.UTILITIES.get_new_bosses(0, 1)[1]
    end

    local blind = G.P_BLINDS[boss]

    -- Blind appearance

    self.children.center = Sprite(self.T.x, self.T.y, self.T.w, self.T.w, G.ANIMATION_ATLAS[blind.atlas] or G.ANIMATION_ATLAS['blind_chips'], {x = blind.pos.x or 0, y = blind.pos.y or 0})
    self.children.center.states.hover = self.states.hover
    self.children.center.states.click = self.states.click
    self.children.center.states.drag = self.states.drag
    self.children.center.states.collide.can = false
    self.children.center:set_role({role_type = 'Glued', major = self, draw_major = self,
    xy_bond = 'Strong',
    wh_bond = 'Strong',
    r_bond = 'Strong',
    scale_bond = 'Strong'})

    self.children.back = self.children.center

    self.ability.blind_card = {blind = blind}

    self.hover = function()
        if not G.CONTROLLER.dragging.target or G.CONTROLLER.using_touch then 
            if not self.hovering and self.states.visible then
                    self.hovering = true
                    self.hover_tilt = 3
                    self:juice_up(0.05, 0.02)
                play_sound('chips1', math.random() * 0.1 + 0.55, 0.12)
                self.config.h_popup = create_UIBox_blind_popup(self.ability.blind_card.blind, true)
                self.config.h_popup_config = {align = 'tm', offset = {x = 0, y = -0.13}, parent = self}
                Node.hover(self)
                if self.children.alert then 
                    self.children.alert:remove()
                    self.children.alert = nil
                    self.config.blind.alerted = true
                    G:save_progress()
                end
            end
        end
        self.stop_hover = function() self.hovering = false; Node.stop_hover(self); self.hover_tilt = 0 end
    end

    return self
end

-- Booster Packs

SMODS.Atlas({key = 'bunco_booster_packs_blind', path = 'Boosters/BoostersBlind.png', px = 71, py = 95})
SMODS.Atlas({key = 'bunco_booster_packs_virtual', path = 'Boosters/BoostersVirtual.png', px = 71, py = 95})

for i = 1, 4 do -- Blind
    SMODS.Booster{
        type = 'bunc_blind',

        key = 'blind_'..i,

        loc_vars = function(self, info_queue, card)
            return {key = 'p_bunc_blind', vars = {self.config.extra}}
        end,
        config = {extra = 3, choose = 1},

        cost = 8,
        weight = 1,

        create_card = function(self, card)
            return card:create_blind_card()
        end,
        update_pack = function(self, dt)
            SMODS.Booster.update_pack(self, dt)
            G.GAME.pack_choices = 1
        end,

        sparkles = {colours = {HEX('19ee94'), HEX('ecbe69'), HEX('ee80cd'), HEX('9894e2')}},
        ease_background_colour = function(self)
            ease_colour(G.C.DYN_UI.MAIN, HEX('4d7796'))
            ease_background_colour{new_colour = HEX('4d7796'), special_colour = HEX('c7d775'), contrast = 2}
        end,

        create_UIBox = function(self) -- I don't know if I should do it like that, but since I can't inject into steamodded's files directly I do this
                                    -- However I could mess with the node structure instead of repeating the whole thing. Do you want me to suffer?
                                    -- Look at this mess. Terrible
            local _size = SMODS.OPENED_BOOSTER.ability.extra
            G.pack_cards = CardArea(
                G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
                math.max(1,math.min(_size,5))*G.CARD_W*1.1,
                1.05*G.CARD_H, 
                {card_limit = _size, type = 'consumeable', highlight_limit = 1})

            local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
                {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
                    {n=G.UIT.R, config={align = "cm"}, nodes={
                    {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                        {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                            {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
                {n=G.UIT.R, config={align = "cm"}, nodes={}},
                {n=G.UIT.R, config={align = "tm"}, nodes={
                    {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
                    {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
                        UIBox_dyn_container({
                            {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                                {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                    {n=G.UIT.O, config={object = DynaText({string = localize(self.group_key or ('k_bunc_blind_pack')), colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                                {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                    {n=G.UIT.O, config={object = DynaText({string = {localize('b_reroll_boss')}, colours = {G.C.WHITE}, shadow = true, rotate = true, bump = true, spacing = 2, scale = 0.5, pop_in = 0.7})}},}},}}
                        }),}},
                    {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
                        {n=G.UIT.R,config={minh =0.2}, nodes={}},
                        (G.GAME.used_vouchers['v_bunc_shell_game'] and not G.GAME.rerolled_pack and
                        UIBox_button({label = {localize('k_reroll')}, padding = 0.07, minh = 0.7, minw = 1.8, r = 0.15, one_press = true, button = 'reroll_booster_pack', func = 'reroll_booster_pack_button'}) or nil),
                        G.GAME.used_vouchers['v_bunc_shell_game'] and {n=G.UIT.R,config = {minh = 0.07}, nodes={}},
                        {n=G.UIT.R, config = {align = G.GAME.used_vouchers['v_bunc_shell_game'] and 'cm' or 'tm', padding = G.GAME.used_vouchers['v_bunc_shell_game'] and 0.07 or 0.2, minh = G.GAME.used_vouchers['v_bunc_shell_game'] and 0.7 or 1.2, minw = 1.8, r = 0.15, colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true, shadow = true, func = 'can_skip_booster'}, nodes = {
                            {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
            return t
        end,

        pos = coordinate(i),
        atlas = 'bunco_booster_packs_blind',

        in_pool = function() return G.GAME.used_vouchers['v_bunc_disguise'] end
    }
end

for i = 1, 4 do -- Virtual
    SMODS.Booster{
        type = 'bunc_virtual',

        key = 'virtual_'..(i <= 2 and i or i == 3 and 'jumbo' or 'mega'),

        loc_vars = function(self, info_queue, card)
            return {key = (self.key == 'p_bunc_virtual_1' or self.key == 'p_bunc_virtual_2') and 'p_bunc_virtual_normal' or self.key, vars = {self.config.choose, self.config.extra}}
        end,

        config = {extra = i <= 2 and 2 or 4, choose = i <= 3 and 1 or 2},

        weight = i <= 2 and 0.07 or i == 3 and 0.05 or 0.03,
        get_weight = function(self)
            local new_weight = self.weight * (G.GAME.used_vouchers['v_bunc_arcade_machine'] and 4 or 1)
            return new_weight
        end,

        create_card = function(self, card)
            return create_card('Polymino', G.pack_cards, nil, nil, true, true, nil, 'vir')
            -- return {set = 'Polymino', area = G.pack_cards, skip_materialize = nil, soulable = nil, key_append = 'vir'}
        end,

        create_UIBox = function(self) -- I don't know if I should do it like that, but since I can't inject into steamodded's files directly I do this
            -- However I could mess with the node structure instead of repeating the whole thing. Do you want me to suffer?
            -- Look at this mess. Terrible

            for i = 1, #G.deck.cards do
                draw_card(G.deck, G.hand, i * 100 / #G.deck.cards, 'up', true)
            end

            local _size = SMODS.OPENED_BOOSTER.ability.extra
            G.pack_cards = CardArea(
            G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
            math.max(1,math.min(_size,5))*G.CARD_W*1.1,
            1.05*G.CARD_H,
            {card_limit = _size, type = 'consumeable', highlight_limit = 1})

            local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
            {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
            {n=G.UIT.R, config={align = "cm"}, nodes={
            {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
            {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
            {n=G.UIT.R, config={align = "cm"}, nodes={}},
            {n=G.UIT.R, config={align = "tm"}, nodes={
            {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
            {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
            UIBox_dyn_container({
                {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                    {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                        {n=G.UIT.O, config={object = DynaText({string = localize(self.group_key or ('k_bunc_virtual_pack')), colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                    {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                        {n=G.UIT.O, config={object = DynaText({string = {localize('k_choose')..' '}, colours = {G.C.WHITE}, shadow = true, rotate = true, bump = true, spacing = 2, scale = 0.5, pop_in = 0.7})}},
                        {n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
            }),}},
            {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
            {n=G.UIT.R,config={minh =0.2}, nodes={}},
            (G.GAME.used_vouchers['v_bunc_shell_game'] and not G.GAME.rerolled_pack and
            UIBox_button({label = {localize('k_reroll')}, padding = 0.07, minh = 0.7, minw = 1.8, r = 0.15, one_press = true, button = 'reroll_booster_pack', func = 'reroll_booster_pack_button'}) or nil),
            G.GAME.used_vouchers['v_bunc_shell_game'] and {n=G.UIT.R,config = {minh = 0.07}, nodes={}},
            {n=G.UIT.R, config = {align = G.GAME.used_vouchers['v_bunc_shell_game'] and 'cm' or 'tm', padding = G.GAME.used_vouchers['v_bunc_shell_game'] and 0.07 or 0.2, minh = G.GAME.used_vouchers['v_bunc_shell_game'] and 0.7 or 1.2, minw = 1.8, r = 0.15, colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true, shadow = true, func = 'can_skip_booster'}, nodes = {
                {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
            return t
        end,

        update_pack = function(self, dt)
            SMODS.Booster.update_pack(self)
            if G.STATE_COMPLETE then
                for i = 1, #G.deck.cards do
                    local card = G.deck.cards[i]
                    card.greyed = false
                end
            end
        end,

        ease_background_colour = function(self)
            ease_colour(G.C.DYN_UI.MAIN, G.C.BUNCO_VIRTUAL)
            ease_background_colour{new_colour = HEX('50506a'), special_colour = HEX('7e9999'), contrast = 2}
        end,

        pos = coordinate(i),
        atlas = 'bunco_booster_packs_virtual',
    }
end

SMODS.Sound({
    key = 'music_virtual',
    path = 'music_virtual.ogg',
    select_music_track = function(self)
        local booster = G.pack_cards and G.pack_cards.cards and SMODS.OPENED_BOOSTER

        if booster and booster.config.center_key:find('p_bunc_virtual') then
            return 'bunc_music_virtual'
        end
    end
})

-- Enhancements

SMODS.Atlas({key = 'bunco_enhancements', path = 'Enhancements/Enhancements.png', px = 71, py = 95})
SMODS.Sound({key = 'cracker', path = 'cracker.ogg'})

SMODS.Enhancement({ -- Cracker
    key = 'cracker',
    atlas = 'bunco_enhancements', pos = coordinate(1)
})

function calculate_cracker_cards(context)
    if #SMODS.find_card('j_bunc_hardtack', false) <= 0 then
        local crackers_total = {}
        for _, cracker_card in ipairs(context.full_hand) do
            if cracker_card.marked_cracker and cracker_card.config.center == G.P_CENTERS.m_bunc_cracker and not cracker_card.debuff then
                if not cracker_card.destroyed then
                    table.insert(crackers_total, cracker_card)

                    forced_message(localize('k_eaten_ex'), cracker_card)

                    local dissolve_time_fac = 2
                    event({
                        trigger = 'before',
                        delay = 0.7*dissolve_time_fac*1.051,
                        func = function()
                            if cracker_card and not cracker_card.removed then

                                play_sound('bunc_cracker', 1.0 + (math.random() * 0.1) - 0.05)

                                local dissolve_time = 0.7*(dissolve_time_fac or 1)
                                local childParts = Particles(0, 0, 0,0, {
                                    timer_type = 'TOTAL',
                                    timer = 0.01 * dissolve_time,
                                    scale = 1.4,
                                    speed = 0.5,
                                    lifespan = 3 * dissolve_time,
                                    attach = cracker_card,
                                    colours = {HEX('fab653'), HEX('ffce7c'), HEX('ffdfaa')},
                                    fill = true
                                })
                                event({
                                    trigger = 'after',
                                    blockable = false,
                                    delay = 0.5 * dissolve_time,
                                    func = (function() childParts:fade(0.5 * dissolve_time) return true end)
                                })

                                cracker_card:start_dissolve({HEX('ffdfaa')}, nil, dissolve_time_fac)
                            end
                            return true
                        end
                    })
                    cracker_card.destroyed = true
                end
            end
        end
        if #crackers_total > 0 then
            SMODS.calculate_context({remove_playing_cards = true, removed = crackers_total})
        end
    end
end

SMODS.Enhancement({ -- Copper
    key = 'copper',
    post_effect = true,
    rescore_amount = 1, pos = coordinate(2),
    atlas = 'bunco_enhancements',
    calculate = function(self, card, context, effect)
        if context.post_effect
        and context.cardarea == G.play
        and context.main_scoring
        and context.scoring_hand
        and ((not card.config.copper_rescored_times) or (card.config.copper_rescored_times < card.config.center.rescore_amount)) then

            local card_position
            for position, scoring_card in ipairs(context.scoring_hand) do
                if scoring_card == card then
                    card_position = position
                    break
                end
            end

            local last_in_streak = true
            if context.scoring_hand[card_position + 1] and context.scoring_hand[card_position + 1].config.center == card.config.center and not (context.scoring_hand[card_position + 1].debuff) then
                last_in_streak = false
            end

            if last_in_streak then

                local streak = false
                if context.scoring_hand[card_position - 1] and context.scoring_hand[card_position - 1].config.center == card.config.center and not (context.scoring_hand[card_position - 1].debuff) then
                    streak = true
                end

                if streak then
                    return {
                        func = function()

                            while (card.config.copper_rescored_times or 0) < card.config.center.rescore_amount do

                                local streak_cards = {card}
                                local i = 1

                                while true do
                                    if context.scoring_hand[card_position - i]
                                    and context.scoring_hand[card_position - i].config.center == card.config.center
                                    and not (context.scoring_hand[card_position - i].debuff) then
                                        table.insert(streak_cards, context.scoring_hand[card_position - i])
                                    else
                                        break
                                    end
                                    i = i + 1
                                end

                                for streak_index = #streak_cards, 1, -1 do

                                    local streak_card = streak_cards[streak_index]
                                    event({func = function() big_juice(streak_card) return true end})
                                    --forced_message(localize('bunc_repeat'), streak_card, G.C.YELLOW, streak_index == 1)

                                end

                                play_area_status_text(localize('bunc_repeat'))

                                for streak_index = #streak_cards, 1, -1 do

                                    local streak_card = streak_cards[streak_index]
                                    for _, play_card in ipairs(G.play.cards) do
                                        if play_card == streak_card then
                                            streak_card.config.copper_rescored_times = (streak_card.config.copper_rescored_times or 0) + 1
                                            local passed_context = context
                                            SMODS.score_card(play_card, passed_context)
                                        end
                                    end
                                end

                                SMODS.calculate_context({rescore_cards = streak_cards})
                            end
                        end
                    }
                end
            end
        end
        -- Reset the retrigger thingy
        if context.after then
            for _, other_card in ipairs(context.scoring_hand) do
                other_card.config.copper_rescored_times = 0
            end
        end
    end
})

-- Stickers

SMODS.Atlas({key = 'bunco_stickers', path = 'Stickers/Stickers.png', px = 71, py = 95})

SMODS.Sticker{ -- Scattering
    key = 'scattering',

    apply = function(self, card, val)
        if card.ability.eternal or card.ability.bunc_hindered or card.ability.bunc_reactive then return end
        card.ability[self.key] = val
    end,

    badge_colour = HEX('9eacbe'),

    order = 5,

    pos = coordinate(1),
    atlas = 'bunco_stickers'
}

SMODS.Sticker{ -- Hindered
    key = 'hindered',

    apply = function(self, card, val)
        if card.ability.eternal or card.ability.bunc_scattering or card.ability.bunc_reactive then return end
        card.ability[self.key] = val
        card.ability.bunc_hindered_sold = false
    end,
    calculate = function(self, card, context)
        if context.end_of_round and not context.repetition and not context.individual then
            card:calculate_hindered()
        end
    end,

    badge_colour = HEX('e97720'),

    order = 6,

    pos = coordinate(2),
    atlas = 'bunco_stickers'
}

SMODS.Sticker{ -- Reactive
    key = 'reactive',

    apply = function(self, card, val)
        if card.ability.eternal or card.ability.bunc_scattering or card.ability.bunc_hindered then return end
        card.ability[self.key] = val
        if G.GAME and G.GAME.blind then G.GAME.blind:debuff_card(card) end
    end,
    calculate = function(self, card, context)
        if context.skip_blind then
            card:calculate_reactive()
        end
    end,

    badge_colour = HEX('8238c3'),

    order = 7,

    pos = coordinate(3),
    atlas = 'bunco_stickers'
}

-- Stakes

SMODS.Atlas({key = 'bunco_stakes', path = 'Stakes/Stakes.png', px = 29, py = 29})
SMODS.Atlas({key = 'bunco_stake_stickers', path = 'Stickers/StickersStake.png', px = 71, py = 95})

SMODS.Stake{ -- Cyan
    key = 'cyan',

    unlocked_stake = 'bunc_pink',
    applied_stakes = {'orange'},
    above_stake = 'orange',
    prefix_config = {above_stake = {mod = false}, applied_stakes = {mod = false}},

    modifiers = function()
        G.GAME.modifiers.enable_scattering_in_shop = true
    end,

    colour = HEX('3cd0c8'),

    pos = coordinate(1),
    sticker_pos = coordinate(1),
    atlas = 'bunco_stakes',
    sticker_atlas = 'bunco_stake_stickers'
}

SMODS.Stake{ -- Pink
    key = 'pink',

    unlocked_stake = 'bunc_magenta',
    applied_stakes = {'bunc_cyan'},
    above_stake = 'bunc_cyan',

    modifiers = function()
        G.GAME.modifiers.enable_hindered_in_shop = true
    end,

    colour = HEX('ff8ea4'),

    pos = coordinate(2),
    sticker_pos = coordinate(2),
    atlas = 'bunco_stakes',
    sticker_atlas = 'bunco_stake_stickers'
}

SMODS.Stake{ -- Magenta
    key = 'magenta',

    unlocked_stake = 'gold',
    applied_stakes = {'bunc_pink'},
    above_stake = 'bunc_pink',

    modifiers = function()
        G.GAME.modifiers.enable_reactive_in_shop = true
    end,

    colour = HEX('cd47ea'),

    pos = coordinate(3),
    sticker_pos = coordinate(3),
    atlas = 'bunco_stakes',
    sticker_atlas = 'bunco_stake_stickers'
}

SMODS.Stake:take_ownership('gold', {
    applied_stakes = {'bunc_magenta'},
    above_stake = 'bunc_magenta'
})

-- Mod compatibility

if _G["JokerDisplay"] then
    filesystem.load(BUNCOMOD.content.path..'compat/jokerdisplay.lua')()
end