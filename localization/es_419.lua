return { -- Random line added BC I wrote the wrong repo name
	misc = {
		dictionary = {

			-- Config values

			bunc_colorful_finishers = "Ciegas Finales Coloridas",
			bunc_colorful_finishers_desc = "Habilita fondos coloridos para las ciegas finales",
			bunc_colorful_finishers_desc_2 = "y remueve el fondo gris del modo infinito",

			bunc_high_quality_shaders = "Sombreadores de Alta Definición",
			bunc_high_quality_shaders_desc = "Hace que algunos de los sombreadores",
			bunc_high_quality_shaders_desc_2 = "se muestren en alta definición (puede causar lag)",

			bunc_fixed_sprites = "Sprites Reparados",
			bunc_fixed_sprites_desc = "Cambia algunos sprites de manera menor, removiendo",
			bunc_fixed_sprites_desc_2 = "pixeles sueltos, mejorando la consistencia y el alto contraste",

			bunc_gameplay_reworks = "Cambios de Jugabilidad",
			bunc_gameplay_reworks_desc = "Rehace algunas de las mecánicas originales",
			bunc_gameplay_reworks_desc_2 = "para hacer el juego más agradable",

			bunc_fixed_badges = "Placas Reparadas",
			bunc_fixed_badges_desc = "Cambia las placas en los consumibles, reemplazando texto",
			bunc_fixed_badges_desc_2 = "confuso con indicaciones de su manera de obtener",

			bunc_jokerlike_consumable_editions = "Ediciones en Ranura de Consumibles",
			bunc_jokerlike_consumable_editions_desc = "Revierte al comportamiento original de los consumibles con",
			bunc_jokerlike_consumable_editions_desc_2 = "ediciones actuando como comodines (para otros mods con conflictos)",

			bunc_default_true = "Habilitado por defecto",
			bunc_default_false = "Deshabilitado por defecto",
			bunc_requires_restart = "Requiere un reinicio del juego",

			-- Miscellaneous

			bunc_copied = "¡Se copió!",
			bunc_nothing = "Nada",
			bunc_chips = "Fichas",
			bunc_loop = "¡Repetido!",
			bunc_chance = "Probabilidades",
			bunc_word_and = "y",
			bunc_debuffed = "¡Debilitado!",
			bunc_pew = "Pew!",
			bunc_declined = "Rechazado...",
			bunc_accepted = "¡Aceptado!",
			bunc_ouch = "¡OUCH!",
			bunc_repeat = "¡Se repitió!",
			bunc_thoth_tarot = "Tarot de Thoth",
			bunc_mysterious_tarot = "¿Tarot?",
			bunc_mysterious_polymino = "¿Polimino?",
			bunc_most_played_rank = "(categoría mas jugada)",
			bunc_least_played_hand = "(mano menos jugada)",
			bunc_blade = "(1.5X puntuación de la ciega)",
			bunc_exceeded_score = "¡Excedió el límite!",
			bunc_volume = "Volumen",

			-- Consumable types

			k_polymino = "Polimino",
			b_polymino_cards = "Cartas de polimino",

			-- Booster types

			k_bunc_blind_pack = "Paquete de ciegas",
			k_bunc_virtual_pack = "Paquete virtual",
		},

		-- Suits

		suits_singular = {
			bunc_Fleurons = "Florón",
			bunc_Halberds = "Alabarda",
		},
		suits_plural = {
			bunc_Fleurons = "Florones",
			bunc_Halberds = "Alabardas",
		},

		-- Poker hands

		poker_hands = {
			["bunc_Spectrum"] = "Espectro",
			["bunc_Straight Spectrum"] = "Escalera Espectral",
			["bunc_Straight Spectrum (Royal)"] = "Espectro Real",
			["bunc_Spectrum House"] = "Full Espectral",
			["bunc_Spectrum Five"] = "Quintilla Espectral",
			["bunc_Deal"] = "Matrícula",
		},
		poker_hand_descriptions = {
			["bunc_Spectrum"] = {
				[1] = "5 cartas de palo diferente",
			},
			["bunc_Straight Spectrum"] = {
				[1] = "5 cartas seguidas",
				[2] = "de palo diferente",
			},
			["bunc_Spectrum House"] = {
				[1] = "Una Tercia y un Par con cada",
				[2] = "carta de palo diferente",
			},
			["bunc_Spectrum Five"] = {
				[1] = "5 cartas de la misma categoría y",
				[2] = "cada una de palo diferente",
			},
			["bunc_Deal"] = {
				[1] = "5 Categorías elegidas",
				[2] = "por la Matrícula",
			},
		},
		labels = {

			-- Editions

			bunc_glitter = "Brillantina",
			bunc_fluorescent = "Fluorescente",

			-- Stickers

			bunc_scattering = "Dispersante",
			bunc_hindered = "Estorbante",
			bunc_reactive = "Reactiva",
		},
	},
	descriptions = {
		Other = {
			bunc_temporary_extra_chips = { ["text"] = { [1] = "{C:chips}+#1#{} fichas extra esta ronda" } },
			bunc_linked_cards = { ["text"] = { [1] = "{C:attention}Conectada{} en este grupo:" } },
			bunc_linked_group = {
				["name"] = "Grupo Conectado",
				["text"] = {
					[1] = "Ls cartas conectadas en",
					[2] = "Grupo se sacan, seleccionan",
					[3] = "y destruyen {C:attention}juntas",
				},
			},
			bunc_drawn_linked_cards = { ["text"] = { [1] = "{C:attention}Conectada{} en grupo en mano" } },
			bunc_exotic_cards = {
				["name"] = "Cartas exoticas",
				["text"] = {
					[1] = "Cartas con palo",
					[2] = "de {C:bunc_fleurons}Florón{} o {C:bunc_halberds}Alabarda{}",
				},
			},
			Enhanced = {
				m_bunc_copper = {
					["name"] = "Carta de Cobre",
					["text"] = {
						[1] = "Anota de nuevo si",
						[2] = "está al {C:attention}lado{} de",
						[3] = "otra carta de cobre anotada",
					},
				},
				m_bunc_cracker = {
					["name"] = "Carta Galleta",
					["text"] = {
						[1] = "{C:attention}Al descartarse{} la carta se",
						[2] = "juega y luego se destruye",
					},
				},
			},

			-- Undiscovered

			undiscovered_polymino = {
				["name"] = "No se descubrió",
				["text"] = {
					[1] = "Compra o usa",
					[2] = "esta carta",
					[3] = "en una partida sin códigos",
					[4] = "para saber lo que hace",
				},
			},

			-- Booster Packs

			p_bunc_blind = {
				["name"] = "Paquete de ciegas",
				["text"] = {
					[1] = "Elige {C:attention}1{} de hasta {C:attention}#1# Ciegas Jefe{}",
					[2] = "para cambiar la actual",
				},
			},
			p_bunc_virtual_normal = {
				["name"] = "Paquete virtual",
				["text"] = {
					[1] = "Saca toda la baraja y",
					[2] = "elige {C:attention}#1#{} de hasta",
					[3] = "{C:attention}#2# cartas de{C:bunco_virtual_dark} polimino{} para",
					[4] = "usar de inmediato",
				},
			},
			p_bunc_virtual_jumbo = {
				["name"] = "Paquete jumbo virtual",
				["text"] = {
					[1] = "Saca toda la baraja y",
					[2] = "elige {C:attention}#1#{} de hasta",
					[3] = "{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para",
					[4] = "usar de inmediato",
				},
			},
			p_bunc_virtual_mega = {
				["name"] = "Paquete mega virtual",
				["text"] = {
					[1] = "Saca toda la baraja y",
					[2] = "elige {C:attention}#1#{} de hasta",
					[3] = "{C:attention}#2# cartas de{C:bunco_virtual_dark} polimino{} para",
					[4] = "usar de inmediato",
				},
			},

			-- Stickers

			bunc_scattering = {
				["name"] = "Dispersante",
				["text"] = {
					[1] = "Destruye un",
					[2] = "comodín al cercano",
					[3] = "al venderse o destruirse",
				},
			},
			bunc_hindered = {
				["name"] = "Estorbante",
				["text"] = {
					[1] = "Se queda en su lugar hasta",
					[2] = "el fin de la ronda",
					[3] = "despues de ser vendido",
				},
			},
			bunc_reactive = {
				["name"] = "Reactivo",
				["text"] = {
					[1] = "Se debilita si no se omite",
					[2] = "ninguna ciega esta apuesta inicial",
				},
			},

			-- Stake stickers

			bunc_cyan_sticker = {
				["name"] = "Sticker cian",
				["text"] = {
					[1] = "Usaste este comodín",
					[2] = "para ganar en la dificultad {C:attention}Pozo",
					[3] = "{C:attention}cian{}",
				},
			},
			bunc_pink_sticker = {
				["name"] = "Sticker rosa",
				["text"] = {
					[1] = "Usaste este comodín",
					[2] = "para ganar en la dificultad {C:attention}Pozo",
					[3] = "{C:attention}rosa{}",
				},
			},
			bunc_magenta_sticker = {
				["name"] = "Sticker magenta",
				["text"] = {
					[1] = "Usaste este comodín",
					[2] = "para ganar en la dificultad {C:attention}Pozo",
					[3] = "{C:attention}magenta{}",
				},
			},
		},

		-- Consumables

		Tarot = {
			-- Reworked Tarots

			c_bunc_wheel_of_fortune = {
				["name"] = "Rueda de la Fortuna",
				["text"] = {
					[1] = "{C:green}#1# en #2#{} probabilidades de",
					[2] = "añadir {C:dark_edition}Laminado{}, {C:dark_edition}Holográfica{},",
					[3] = "{C:dark_edition}Policroma{}, o {C:dark_edition}Brillantina{} a",
					[4] = "un {C:attention}Comodín{} al azar",
				},
			},

			-- Main Tarots

			c_bunc_adjustment = {
				["name"] = "El Ajuste",
				["text"] = {
					[1] = "Mejora hasta {C:attention}#1#{} cartas",
					[2] = "seleccionadas",
					[3] = "a {C:attention}Cartas Galletas",
				},
			},
			c_bunc_art = {
				["name"] = "El Arte",
				["text"] = {
					[1] = "Mejora {C:attention}#1#{} cartas",
					[2] = "seleccionadas",
					[3] = "a {C:attention}#2#",
				},
			},
			c_bunc_universe = {
				["name"] = "El Universo",
				["text"] = {
					[1] = "{C:attention}Cambia al azar{} el palo,",
					[2] = "categoría, mejora, edición,",
					[3] = "y sello de hasta {C:attention}#1#{}",
					[4] = "cartas seleccionadas",
				},
			},
			c_bunc_lust = {
				["name"] = "La Lujuría",
				["text"] = {
					[1] = "Otorga {C:money}$#1#{} por cada",
					[2] = "carta en mano",
					[3] = "{C:inactive}(Máximo de {C:money}$#2#{C:inactive})",
					[4] = "{C:inactive}(Actualmente {C:money}$#3#{C:inactive})",
				},
			},
			c_bunc_sky = {
				["name"] = "El Cielo",
				["text"] = {
					[1] = "Convierte hasta {C:attention}#1#{}",
					[2] = "cartas seleccionadas",
					[3] = "en {C:bunc_fleurons}Florones{}",
				},
			},
			c_bunc_abyss = {
				["name"] = "El Abismo",
				["text"] = {
					[1] = "Convierte hasta {C:attention}#1#{}",
					[2] = "cartas seleccionadas",
					[3] = "en {C:bunc_halberds}Alabardas{}",
				},
			},
		},
		Planet = {
			c_bunc_quaoar = {
				["name"] = "Quaoar",
			},
			c_bunc_haumea = {
				["name"] = "Haumea",
			},
			c_bunc_sedna = {
				["name"] = "Sedna",
			},
			c_bunc_makemake = {
				["name"] = "Makemake",
			},
		},
		Spectral = {

			c_bunc_aura = {
				["name"] = "Aura",
				["text"] = {
					[1] = "Otorga edición {C:dark_edition}Laminada{}, {C:dark_edition}Holografica{},",
					[2] = "{C:dark_edition}Policromo{}, o {C:dark_edition}Brillantina{}",
					[3] = "a {C:attention}1{} carta seleccionada",
				},
			},
			c_bunc_cleanse = {
				["name"] = "Purificar",
				["text"] = {
					[1] = "Agrega {C:dark_edition}fluorescencia{} a {C:attention}#1#{} cartas",
					[2] = "seleccionadas de tu mano",
				},
			},
			c_bunc_the_8 = {
				["name"] = "El 8",
				["text"] = {
					[1] = "{C:attention}Conecta{} todas las cartas",
					[2] = "sin conectar de tu mano",
				},
			},
		},
		Polymino = {
			c_bunc_the_i = {
				["name"] = "La I",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "que comparten el {C:attention}mismo palo o categoría",
				},
			},
			c_bunc_the_o = {
				["name"] = "La O",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde 2 cartas comparten una {C:attention}misma propiedad",
					[3] = "{C:inactive}(categoría o palo){} y las otras 2 cartas",
					[4] = "comparten {C:attention}un tipo diferente{} de la {C:attention}misma propiedad",
				},
			},
			c_bunc_the_t = {
				["name"] = "La T",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde 3 cartas comparten la {C:attention}misma propiedad",
					[3] = "{C:inactive}(categoría o palo){} y la otra carta",
					[4] = "{C:attention}no comparte{} la {C:attention}misma propiedad{}",
					[5] = "con las otras cartas",
				},
			},
			c_bunc_the_s = {
				["name"] = "La S",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde {C:attention}2 grupos{} de 2 cartas comparten",
					[3] = "la {C:attention}misma categoría{} dentro de cada grupo, con una",
					[4] = "carta de cada grupo que comparten un {C:attention}mismo palo",
				},
			},
			c_bunc_the_z = {
				["name"] = "La Z",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde {C:attention}2 grupos{} de 2 cartas comparten",
					[3] = "el {C:attention}mismo palo{} dentro de cada grupo, con una",
					[4] = "carta de cada grupo que comparten una {C:attention}misma categoría",
				},
			},
			c_bunc_the_j = {
				["name"] = "La J",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde 3 cartas comparten la {C:attention}misma categoría",
					[3] = "y la otra carta comparte",
					[4] = "un {C:attention}mismo palo{} sin",
					[5] = "compartir la misma categoria",
				},
			},
			c_bunc_the_l = {
				["name"] = "La L",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde 3 cartas comparten el {C:attention}mismo palo",
					[3] = "y la otra carta comparte",
					[4] = "una {C:attention}misma categoría{} sin",
					[5] = "compartir el mismo palo",
				},
			},
			c_bunc_the_slash = {
				["name"] = "El /",
				["text"] = {
					[1] = "{C:attention}Conecta{} 4 cartas seleccionadas",
					[2] = "donde todas las cartas tienen una",
					[3] = "{C:attention}propiedad diferente{} {C:inactive}(categoría o palo)",
				},
			},
		},
		Joker = {

			-- Reworked Jokers

			j_bunc_luchador = {
				["name"] = "Luchador",
				["text"] = {
					[1] = "Vende este comodín para crear",
					[2] = "una {C:attention}Etiqueta quebradora",
				},
			},
			j_bunc_red_card = {
				["name"] = "Tarjeta roja",
				["text"] = {
					[1] = "Este comodín obtiene {C:red}+#1#{} multi",
					[2] = "por cada elección omitida",
					[3] = "en un {C:attention}paquete potenciador{}",
					[4] = "{C:inactive}(Actual {C:red}+#2#{C:inactive} multi)",
				},
			},

			-- Main Jokers

			j_bunc_cassette_a = {
				["name"] = "Cassette (Lado A)",
				["text"] = {
					[1] = "Las cartas de {C:attention}palo claro",
					[2] = "otorgan {C:chips}+#1#{} fichas al anotar",
				},
			},
			j_bunc_cassette_b = {
				["name"] = "Cassette (Lado B)",
				["text"] = {
					[1] = "Las cartas de {C:attention}palo oscuro",
					[2] = "otorgan {C:mult}+#2#{} multi al anotar",
				},
			},
			j_bunc_cassette_extra = {
				["text"] = {
					[1] = "{C:inactive}Al descartar, cambia de lado",
				},
			},
			j_bunc_mosaic = {
				["name"] = "Comodín de Mosaico",
				["text"] = {
					[1] = "Las {C:attention}cartas de piedra{} otorgan",
					[2] = "{C:mult}+#1#{} Multi al anotar",
				},
				["unlock"] = {
					[1] = "Juega una mano de 5 cartas",
					[2] = "que solo contiene",
					[3] = "cartas de {C:attention,E:1}piedra{}",
				},
			},
			j_bunc_voxel = {
				["name"] = "Comodín de Vóxeles",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi, {X:mult,C:white}-X#2#{} multi por cada",
					[2] = "{C:attention}carta mejorada{} en tu {C:attention}baraja{}",
					[3] = "{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
				},
				["unlock"] = {
					[1] = "Ten al menos {C:attention}10",
					[2] = "cartas {E:1,C:attention}mejoradas{} en",
					[3] = "tu baraja",
				},
			},
			j_bunc_crop_circles = {
				["name"] = "Agroglifos",
				["text"] = {
					[1] = "Los {C:clubs}Tréboles{} otorgan {C:mult}+3{} Multi,",
					[2] = "Los {C:attention}8s{} otorgan {C:mult}+2{} Multi,",
					[3] = "Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} Multi",
				},
			},
			j_bunc_crop_circles_exotic = {
				["name"] = "Agroglifos",
				["text"] = {
					[1] = "Los {C:bunc_fleurons}Florones{} otorgan {C:mult}+4{} Multi,",
					[2] = "Los {C:clubs}Tréboles{} otorgan {C:mult}+3{} Multi,",
					[3] = "Los {C:attention}8s{} otorgan {C:mult}+2{} Multi,",
					[4] = "Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} Multi",
				},
			},
			j_bunc_xray = {
				["name"] = "Rayos X",
				["text"] = {
					[1] = "Este comodín obtiene {X:mult,C:white}X#1#{} Multi",
					[2] = "por cada carta volteada",
					[3] = "{C:inactive}(Actualmente {X:mult,C:white}X#2#{C:inactive} Multi)",
				},
				["unlock"] = {
					[1] = "Completa el desafio",
					[2] = "{E:1,C:attention}Visión de rayos X",
				},
			},
			j_bunc_dread = {
				["name"] = "Terror",
				["text"] = {
					"Al jugar tu {C:attention}última{} {C:blue}mano{},",
					"ganas {C:attention}2{} {C:planet}niveles{} y {C:attention}destruyes{}",
					"Las cartas anotadas",
					"{C:red,s:0.8}pierdes{} {C:inactive,s:0.8}todos los{} {C:attention,s:0.8}niveles ganados{}",
					"{C:inactive,s:0.8}si pierdes este comodín",
				},
				["unlock"] = {
					[1] = "Reduce tu baraja",
					[2] = "por al menos {E:1,C:attention}10{} cartas",
					[3] = "en una ronda",
				},
			},
			j_bunc_prehistoric = {
				["name"] = "Comodín prehistorico",
				["text"] = {
					[1] = "Cartas anotadas que compartan",
					[2] = "{C:attention}categoría{} y {C:attention}palo{} con una {C:attention}carta",
					[3] = "{C:attention}que ya anotó{} esta ronda",
					[4] = "otorgan {C:mult}+#1#{} Multi",
				},
				["unlock"] = {
					[1] = "Juega un",
					[2] = "{E:1,C:attention}cinco de color",
				},
			},
			j_bunc_linocut = {
				["name"] = "Comodín linograbado",
				["text"] = {
					[1] = "Al jugar exactamente {C:attention}2{}",
					[2] = "cartas que forman un {C:attention}Par{}",
					[3] = "convierte la carta {C:attention}izquierda{}",
					[4] = "al palo de la carta {C:attention}derecha{}",
					[5] = "{C:inactive}(Arrastra para reordenar)",
					-- TODO this joker is a bit wordy
				},
			},
			j_bunc_ghost_print = {
				["name"] = "Impresión fantasma",
				["text"] = {
					[1] = "Otorga {C:blue}fichas{} y {C:red}multi{} iguales al",
					[2] = "{C:planet}valor base{} de la {C:attention}última mano{} jugada",
					[3] = "{C:inactive}(Ultima mano: #1#)",
				},
			},
			j_bunc_loan_shark = {
				["name"] = "Usurero",
				["text"] = {
					[1] = "Gana {C:money}$#1#",
					[2] = "al adquirirse...",
				},
				["unlock"] = {
					[1] = "Gasta al menos {E:1,C:attention}$100",
					[2] = "durante una sola ronda",
				},
			},
			j_bunc_loan_shark_full = {
				["name"] = "Usurero",
				["text"] = {
					[1] = "Ganas {C:money}$#1#{} al obtenerlo,",
					[2] = "te cobra {C:money}$100{} para irse",
				},
			},
			j_bunc_basement = {
				["name"] = "Comodín de sótano",
				["text"] = {
					[1] = "Al derrotar la {C:attention}ciega jefe{},",
					[2] = "crea una carta {C:spectral}espectral{}",
					[3] = "{C:inactive}(Debe haber espacio)",
				},
			},
			j_bunc_shepherd = {
				["name"] = "Comodín pastor",
				["text"] = {
					[1] = "Este comodín obtiene {C:chips}+#1#{} Fichas",
					[2] = "si la mano jugada contiene un {C:attention}Par{}",
					[3] = "{C:inactive}(Actual {C:chips}+#2#{C:inactive} Fichas)",
				},
			},
			j_bunc_knight = {
				["name"] = "Caballero Comodín",
				["text"] = {
					[1] = "Al seleccionar la {C:attention}ciega{}, {C:attention}mezcla{} todos",
					[2] = "los comodines y obtiene {C:mult}+#1#{} Multi se",
					[3] = "{C:red}reinicia{} si reacomodas un comodín",
					[4] = "{C:inactive}(Actualmente {C:mult}+#2#{C:inactive} Multi)",
				},
				["unlock"] = {
					[1] = "Derrota a la {E:1,C:attention}Bellota Ambarina",
					[2] = "sin deshabilitarla",
				},
			},
			j_bunc_jmjb = {
				["name"] = "Tarjeta Coleccionable de Comodín Man y el Chico Bufón Núm. 54",
				["text"] = {
					[1] = "Los {C:attention}paquetes estándar{} contienen",
					[2] = "solo {C:dark_edition,E:1}cartas mejoradas{}",
				},
				["unlock"] = {
					[1] = "Abre {E:1,C:attention}50",
					[2] = "paquetes potenciadores",
					[3] = "{C:inactive}(#2#)",
				},
			},
			j_bunc_dogs_playing_poker = {
				["name"] = "Perros jugando póker",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi si sólo anotas",
					[2] = "{C:attention}2{}, {C:attention}3{}, {C:attention}4{}, o {C:attention}5",
				},
			},
			j_bunc_righthook = {
				["name"] = "Gancho derecho",
				["text"] = {
					[1] = "{C:attention}Reactiva{} la carta del extremo derecho",
					[2] = "una vez por cada {C:blue}mano{} restante",
				},
				["unlock"] = {
					[1] = "Reactiva una carta",
					[2] = "jugada al menos",
					[3] = "{E:1,C:attention}5 veces{}",
				},
			},
			j_bunc_fiendish = {
				["name"] = "Comodín Embustero",
				["text"] = {
					[1] = "Duplica todas las fuentes de dinero.",
					[2] = "Prob. de {C:green}#1# en #2#{} de otorgar",
					[3] = "{C:money}$1{} de cualquier ingreso",
				},
				["unlock"] = {
					[1] = "Completa el desafio",
					[2] = "{E:1,C:attention}Doble o nada",
				},
			},
			j_bunc_carnival = {
				["name"] = "Carnaval",
				["text"] = {
					[1] = "Al derrotar la {C:attention}Ciega Jefe{},",
					[2] = "{C:red}destruyes{} un comodín al azar y",
					[3] = "retrocedes 1 apuesta, la próxima vez",
					[4] = "solo funciona en una apuesta mayor",
				},
				["unlock"] = {
					[1] = "Retrocede a la",
					[2] = "apuesta {E:1,C:attention}0",
				},
			},
			j_bunc_sledgehammer = {
				["name"] = "Martillo",
				["text"] = {
					[1] = "Las {C:attention}Cartas de Vidrio{}",
					[2] = "otorgan {X:mult,C:white}X#1#{} Multi adicional",
					[3] = "pero siempre se rompen",
				},
				["unlock"] = {
					[1] = "Juega una mano de 5 cartas",
					[2] = "que contiene solo",
					[3] = "cartas de {C:attention,E:1}vidrio{}",
				},
			},
			j_bunc_doorhanger = {
				["name"] = "Colgante de puerta",
				["text"] = {
					[1] = "Los comodines {C:blue}comunes{} no aparecen",
					[2] = "{C:inactive,s:0.8}Los otros comodines son más comunes{}",
				},
				["unlock"] = {
					[1] = "Gana una partida sin",
					[2] = "haber tenido",
					[3] = "comodines {C:attention}comunes{}",
				},
			},
			j_bunc_fingerprints = {
				["name"] = "Huellas dactilares",
				["text"] = {
					[1] = "Las cartas anotadas en la {C:blue}mano{}",
					[2] = "{C:attention}ganadora{} otorgan {C:chips}+#1#{} fichas en",
					[3] = "la siguiente ronda",
				},
			},
			j_bunc_zero_shapiro = {
				["name"] = "Cero Shapiro",
				["text"] = {
					[1] = "Al anotar {C:attention}Ks{}, {C:attention}Qs{}, {C:attention}Js{}, o",
					[2] = "{C:attention}cartas sin categoria",
					[3] = "tienes una prob. {C:green}#1# en #2#{} de",
					[4] = "crear una {C:attention}Etiqueta D6",
				},
			},
			j_bunc_nil_bill = {
				["name"] = "El nulo",
				["text"] = {
					[1] = "Las cartas {C:attention}debilitadas{}",
					[2] = "ganan {C:money}$#1#{} cuando anotan",
				},
			},
			j_bunc_bierdeckel = {
				["name"] = "Posavasos",
				["text"] = {
					[1] = "Las Cartas en {C:attention}mano",
					[2] = "ganan {C:chips}+#1#{} Fichas esta",
					[3] = "ronda al jugar o descartar",
				},
			},
			j_bunc_registration_plate = {
				["name"] = "Matrícula",
				["text"] = {
					[1] = "Jugar #1#, #2#, #3#, #4# y #5#",
					[2] = "Anota las {C:blue}Fichas{} y el {C:red}Multi{} de las",
					[3] = "las {C:attention}manos{} jugadas esta ronda",
					[4] = "{C:inactive,s:0.8}La combinación cambia cada ronda{}",
					[5] = "{C:inactive,s:0.8}Se deben jugar las 5 cartas{}",
				},
				["unlock"] = {
					[1] = "Completa el desafio",
					[2] = "{E:1,C:attention}Ciudad de los 15 minutos",
				},
			},
			j_bunc_slothful = {
				["name"] = "Comodín Perezoso",
				["text"] = {
					[1] = "Las {C:attention}Cartas Versátiles{}",
					[2] = "otorgan {C:mult}+#1#{} multi",
					[3] = "cuando anotan",
				},
				["unlock"] = {
					[1] = "Juega una mano de 5 cartas",
					[2] = "que contiene solo",
					[3] = "cartas {C:attention,E:1}versátiles{}",
				},
			},
			j_bunc_neon = {
				["name"] = "Comodín de Neón",
				["text"] = {
					[1] = "Las Cartas Mejoradas obtienen",
					[2] = "edición {C:dark_edition,E:1}Fluorescente{} al {C:attention}Anotar",
				},
				["unlock"] = {
					[1] = "Juega una mano de 5 cartas",
					[2] = "que contiene solo",
					[3] = "cartas {C:attention,E:1}debilitadas{}",
				},
			},
			j_bunc_gameplan = {
				["name"] = "Plan de Juego",
				["text"] = {
					[1] = "Los {C:attention}comodines{} a los costados",
					[2] = "de este comodín son {C:red}debilitados{}",
					[3] = "y otorgan {C:mult}+#1#{} Multi", -- Could be common actually
				},
				["unlock"] = {
					[1] = "Derrota a la {E:1,C:attention}Hoja Verde",
					[2] = "sin deshabilitarla",
				},
			},
			j_bunc_conquest = {
				["name"] = "Conquest",
				["text"] = {
					[1] = "{C:chips}+#1#{} fichas,",
					[2] = "{C:red}Debilita{} un comodín al azar",
					[3] = "al seleccionar la {C:attention}Ciega{}",
				},
				["unlock"] = {
					[1] = "Derrota al {E:1,C:attention}Corazón Carmesí",
					[2] = "sin deshabilitarlo",
				},
			},
			j_bunc_hierarchy_of_needs = {
				["name"] = "Jerarquía Secuencial",
				["text"] = {
					[1] = "{C:mult}+#1#{} Multi por cada secuencia {C:attention}As-2{}",
					-- TODO do wilds count, or base suit only?
					[2] = "del mismo palo en tu {C:attention}baraja{}",
					[3] = "{C:inactive}(Actual {C:mult}+#2#{C:inactive} Multi)",
				},
			},
			j_bunc_dwarven = {
				["name"] = "Comodín Enano",
				["text"] = {
					[1] = "Las {C:attention}Cartas de Piedra{} en",
					[2] = "mano cuentan como cartas",
					[3] = "de {C:attention}Acero{} y {C:attention}Oro",
				},
				["unlock"] = {
					[1] = "Juega una mano que",
					[2] = "contiene cartas de {E:1,C:attention}piedra{}, {E:1,C:attention}acero,",
					[3] = "y {E:1,C:attention}oro{}",
				},
			},
			j_bunc_aristocrat = {
				["name"] = "Comodín Aristócrata",
				["text"] = {
					[1] = "Elige una carta extra de los",
					[2] = "{C:attention}paquetes potenciadores",
				},
				["unlock"] = {
					[1] = "Gana una partida sin",
					[2] = "haber abierto",
					[3] = "{C:attention,E:1}paquetes potenciadores",
				},
			},
			j_bunc_metallurgist = {
				["name"] = "Comodín Metalúrgico",
				["text"] = {
					[1] = "Las {C:attention}cartas de oro{} otorgan {C:mult}+#1#{}",
					[2] = "Multi mientras al estar en mano",
				},
			},
			j_bunc_juggalo = {
				["name"] = "Juggalo",
				["text"] = {
					[1] = "Otorga edición {C:dark_edition}laminada{},",
					[2] = "{C:dark_edition}holográfica{}, {C:dark_edition}polícroma{}",
					[3] = "o {C:dark_edition}brillantina{} a un {C:attention}consumible{}",
					[4] = "al azar al seleccionar una {C:attention}Ciega{}",
				},
				["unlock"] = {
					[1] = "Usa {C:attention,E:1}10{} consumibles",
					[2] = "con {C:attention,E:1}ediciones",
				},
			},
			j_bunc_head_in_the_clouds = {
				["name"] = "Cabeza en las nubes",
				["text"] = {
					[1] = "Prob. de {C:green}#1# en #2#{} de subir de {C:planet}nivel",
					[2] = "{C:attention}Carta más Alta{} cuando subes",
					[3] = "de {C:planet}nivel{} otra {C:attention}mano",
				},
				["unlock"] = {
					[1] = "Gana una partida con",
					[2] = "{C:attention,E:1}carta más alta{} siendo la",
					[3] = "mano de póker mas mejorada",
				},
			},
			j_bunc_headshot = {
				["name"] = "Disparo a la cabeza",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} Multi si la mano anota",
					[2] = "una sola {C:attention}carta de figura{}",
				},
			},
			j_bunc_trigger_finger = {
				["name"] = "Gatillazo",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} Multi.",
					[2] = "{C:attention}Seleccionar{} una carta tiene",
					[3] = "una prob. de {C:green}#2# en #3#{} de jugar",
					[4] = "las cartas seleccionadas",
				},
				["unlock"] = {
					[1] = "Derrota a la {E:1,C:attention}Campana Cerúlea",
					[2] = "sin deshabilitarla",
				},
			},
			j_bunc_hopscotch = {
				["name"] = "Rayuela",
				["text"] = {
					[1] = "Ganas {C:red}+#1#{} descarte",
					[2] = "si la mano jugada",
					[3] = "contiene una {C:attention}Escalera{}",
				},
			},
			j_bunc_pawn = {
				["name"] = "Peón",
				["text"] = {
					[1] = "Las cartas con la categoría",
					[2] = "más {C:attention}baja{} tu baraja",
					[3] = "{C:attention}suben de categoría{} al anotar",
					[4] = "{C:inactive}(Categoría más baja: #1#)",
				},
			},
			j_bunc_puzzle_board = {
				["name"] = "Panel de Adivinanzas",
				["text"] = {
					[1] = "Al usar cartas del {C:tarot}Tarot{}, hay",
					[2] = "una prob. de {C:green}#1# en #2#{} de otorgar",
					[3] = "edición {C:dark_edition}Laminada{}, {C:dark_edition}Holográfica{}, o",
					[4] = "{C:dark_edition}Polícroma{} a una carta",
					[5] = "seleccionada",
				},
			},
			j_bunc_vandalism = {
				["name"] = "Vandalismo",
				["text"] = {
					[1] = "Prob. de {C:green}#1# en #2#{} de sacar",
					[2] = "las cartas boca abajo.",
					[3] = "Las cartas boca abajo",
					[4] = "otorgan {X:mult,C:white}X#3#{} Multi al anotan",
				},
				["unlock"] = {
					[1] = "Juega una mano de 5 cartas",
					[2] = "que contiene solo",
					[3] = "cartas {C:attention,E:1}boca abajo{}",
				},
			},
			j_bunc_protester = {
				["name"] = "Protestante",
				["text"] = {
					[1] = "Agrega {C:attention}#1#X{} el valor la",
					[2] = "categoría más alta descartada",
					[3] = "esta ronda como {C:blue}fichas",
					[4] = "{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas)",
				},
			},
			j_bunc_doodle = {
				["name"] = "Garabato",
				["text"] = {
					[1] = "{C:attention}Copia{} la primera carta del",
					[2] = "{C:tarot}Tarot{} o de {C:planet}Planeta{} usada",
					[3] = "esta ronda",
					[4] = "{C:inactive}(Debe haber espacio)",
				},
				["unlock"] = {
					[1] = "Gana {C:attention,E:1}10{} partidas",
					[2] = "{C:inactive}(#2#)",
				},
			},
			j_bunc_disproportionality = {
				["name"] = "{s:0.9}Desproporcionalidad{}",
				["text"] = {
					[1] = "",
				},
			},
			j_bunc_running_joke = {
				["name"] = "Chiste recurrente",
				["text"] = {
					[1] = 'Crea un "{C:attention}Comodín{}"',
					[2] = "{C:dark_edition}negativo{} al principio",
					[3] = "de cada tienda",
				},
			},
			j_bunc_on_broadway = {
				["name"] = "En Broadway",
				["text"] = {
					[1] = "{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi si la mano",
					[2] = "jugada contiene una {C:attention}Escalera{} y",
					[3] = "anota una {C:attention}carta de figura{}",
				},
			},
			j_bunc_rasta = {
				["name"] = "Rasta",
				["text"] = {
					[1] = "{C:mult}+#1#{} multi si ninguna",
					[2] = "{C:attention}carta mejorada{}",
					[3] = "anota",
				},
				["unlock"] = {
					[1] = "Gana una partida sin",
					[2] = "haber tenido {C:attention,E:1}cartas mejoradas",
				},
			},
			j_bunc_critic = {
				["name"] = "Critico",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} Multi si la puntuación",
					[2] = "actual de la mano jugada es",
					[3] = "{C:attention}menos{} de la {C:attention}1/#2#{} de la",
					[4] = "puntuación requerida",
				},
			},
			j_bunc_cellphone = {
				["name"] = "Teléfono",
				["text"] = {
					[1] = "{C:attention}Regresa{} las cartas anotadas a la mano",
					[2] = "después de la primera jugada de la ronda",
					[3] = "si no se usó ningún {C:red}descarte",
				},
			},
			j_bunc_wino = {
				["name"] = "Borrachín",
				["text"] = {
					[1] = "Los con {C:hearts}Corazones{} y {C:diamonds}Diamantes{}",
					[2] = "otorgan {C:chips}+#1#{} Fichas al anotar",
				},
			},
			j_bunc_bounty_hunter = {
				["name"] = "Cazarrecompensas",
				["text"] = {
					[1] = "Todas las fuentes de {C:money}dinero",
					[2] = "otorgan {C:money}#1#${} menos y",
					[3] = "gana {C:mult}+#1#{} Multi por cada",
					[4] = "vez que ganas {C:money}dinero",
					[5] = "{C:inactive}(Actualmente {C:mult}+#2#{C:inactive} Multi)",
				},
				["unlock"] = {
					[1] = "Ten menos de {E:1,C:attention}$#1#",
					[2] = "durante una sola partida",
				},
			},
			j_bunc_mousetrap = {
				["name"] = "Ratonera",
				["text"] = {
					[1] = "{C:chips}+#1#{} Fichas,",
					[2] = "Prob. de {C:green}#2# en #3#{} de",
					[3] = "{C:red,E:1}anular{} la mano",
				},
			},
			j_bunc_the_joker = {
				["name"] = "El Comodín",
				["text"] = {
					[1] = "Después de cada mano, cada carta",
					[2] = "anotada sin una mejora tiene una",
					[3] = "Prob. de {C:green}#1# en #2#{} ser {C:red}destruida",
				},
				["unlock"] = {
					[1] = "Descubre todas las",
					[2] = "{C:attention}ciegas jefe",
				},
			},
			j_bunc_tangram = {
				["name"] = "Tangram",
				["text"] = {
					[1] = "Cuando un {C:attention}7{} es anotado,",
					[2] = "{C:mult}+#1#{} multi multiplicado por",
					[3] = "la cantidad de {C:attention}7s{} anotados",
				},
			},
			j_bunc_domino = {
				["name"] = "Dominó",
				["text"] = {
					[1] = "Al {C:attention}Adquirir{} o {C:attention}Usar{} una carta de la",
					[2] = "tienda o paquete potenciador",
					[3] = "se adquieren las cartas",
					[4] = "adyacentes si es posible",
				},
			},
			j_bunc_glue_gun = {
				["name"] = "Pistola de pegamento",
				["text"] = {
					[1] = "Vende esta carta",
					[2] = "para {C:attention}unir{} hasta #1#",
					[3] = "cartas seleccionadas",
				},
			},
			j_bunc_taped = {
				["name"] = "Comodines pegados",
				["text"] = {
					[1] = "{C:attention}Conecta{} todas las cartas",
					[2] = "jugadas en la primera",
					[3] = "mano anotada durante",
					[4] = "la {C:attention}ciega jefe{}",
				},
			},
			j_bunc_rubber_band_ball = {
				["name"] = "Bola de Ligas",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi por cada {C:attention}conexión{}",
					[2] = "creada esta partida",
					[3] = "{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)",
				},
			},
			j_bunc_headache = {
				["name"] = "Dolor de cabeza",
				["text"] = {
					[1] = "Crea una etiqueta de {C:bunco_virtual_dark}Arcade{} por",
					[2] = "cada {C:attention}#1#{} {C:inactive}({C:attention}#2#{C:inactive}/#1#){} cartas de juego",
					[3] = "destruidas",
					[4] = "{C:inactive}(Debe haber espacio)",
				},
			},
			j_bunc_games_collector = {
				["name"] = "Coleccionista de juegos",
				["text"] = {
					[1] = "Gana {C:chips}+#1#{} Fichas cuando un {C:bunco_virtual_dark}grupo{}",
					[2] = "conectado se {C:attention}saca{} a la mano",
					[3] = "{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
				},
			},
			j_bunc_jumper = {
				["name"] = "Comodín Saltarín",
				["text"] = {
					[1] = "Gana {C:chips}+#1#{} fichas",
					[2] = "si la mano jugada",
					[3] = "contiene un {C:attention}Color{}",
					[4] = "{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
				},
			},
			j_bunc_stylophone = {
				["name"] = "Estilófono",
				["text"] = {
					[1] = "Las cartas otorgan un {C:attention}#1#{}",
					[2] = "de su {C:attention}categoría{} como {C:red}multi",
					[3] = "cuando anotan",
				},
			},
			j_bunc_kite_experiment = {
				["name"] = "Experimento con Cometa",
				["text"] = {
					[1] = "Prob. de {C:green}#1# en #2#{} de {C:attention}reanotar",
					[2] = "las {C:attention}cartas de cobre{}",
					[3] = "reanotadas una vez más",
				},
			},
			j_bunc_robot = {
				["name"] = "Robot",
				["text"] = {
					[1] = "Este comodín gana {C:mult}+#1#{} multi",
					[2] = "cada vez que una {C:attention}carta de",
					[3] = "{C:attention}cobre{} es reanotada",
					[4] = "{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)",
				},
			},
			j_bunc_hardtack = {
				["name"] = "Galleta Dura",
				["text"] = {
					[1] = "Las{C:attention} Cartas Galleta{}",
					[2] = "no se destruyen",
					[3] = "al descartarse",
				},
			},
			j_bunc_pica = {
				["name"] = "Comodín Picador",
				["text"] = {
					[1] = "Cuando una {C:attention}Carta Galleta{}",
					[2] = "se descarta, {C:attention}juega{} todas",
					[3] = "las cartas descartadas",
				},
			},

			-- Exotic Jokers

			j_bunc_zealous = {
				["name"] = "Comodín Ferviente",
				["text"] = {
					[1] = "{C:mult}+#1#{} multi si la mano",
					[2] = "jugada contiene",
					[3] = "un {C:attention}Espectro",
				},
			},
			j_bunc_lurid = {
				["name"] = "Comodín Tenebroso",
				["text"] = {
					[1] = "{C:chips}+#1#{} fichas si la mano",
					[2] = "jugada contiene",
					[3] = "un {C:attention}Espectro",
				},
			},
			j_bunc_envious = {
				["name"] = "Comodín Envidioso",
				["text"] = {
					[1] = "Las cartas jugadas",
					[2] = "del palo {C:bunc_fleurons}Florón{} otorgan",
					[3] = " multi {C:mult}+#1#{} cuando anotan",
				},
			},
			j_bunc_proud = {
				["name"] = "Comodín Orgulloso",
				["text"] = {
					[1] = "Las cartas jugadas",
					[2] = "del palo {C:bunc_halberds}Alabarda{} otorgan",
					[3] = "multi {C:mult}+#1#{} cuando anotan",
				},
			},
			j_bunc_wishalloy = {
				["name"] = "Deseoaleación",
				["text"] = {
					[1] = "Prob. en {C:green}#1# en #2#{} de que los",
					[2] = "los {C:bunc_fleurons}Florones{} jugados",
					[3] = "otorguen sus {C:blue}Fichas{} como",
					[4] = "{C:money}Dinero{} al anotar",
				},
			},
			j_bunc_unobtanium = {
				["name"] = "Unobtainio",
				["text"] = {
					[1] = "Las cartas de {C:bunc_halberds}Alabarda{}",
					[2] = "otorgan {C:chips}+#1#{} fichas y {C:mult}+#2#{} multi",
					[3] = "cuando anotan",
				},
			},
			j_bunc_dynasty = {
				["name"] = "La Dinastía",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi si la mano",
					[2] = "jugada contiene",
					[3] = "un {C:attention}Espectro",
				},
			},
			j_bunc_magic_wand = {
				["name"] = "Varita mágica",
				["text"] = {
					[1] = "Obtiene {C:mult}+#1#{} Multi si la mano",
					[2] = "jugada contiene {C:attention}Espectro{}",
					[3] = "{C:inactive}(Actual {C:mult}+#2#{C:inactive} Multi)",
					[4] = "{C:inactive}(Actual {C:mult}+#2#{C:inactive} Multi)",
				},
			},
			j_bunc_starfruit = {
				["name"] = "Carambola",
				["text"] = {
					[1] = "Sube de {C:planet}Nivel{} la mano jugada",
					[2] = "si contiene un {C:attention}Espectro{}.",
					[3] = "Prob. de {C:green}#1# en #2#{} de {C:red}destruirse",
					[4] = "al final de la ronda",
				},
			},
			j_bunc_fondue = {
				["name"] = "Fondue",
				["text"] = {
					[1] = "Las cartas anotadas en",
					[2] = "la {C:attention}primera mano{} son",
					[3] = "convertidas a {C:bunc_fleurons}Florones",
				},
			},
			j_bunc_myopia = {
				["name"] = "Miopía",
				["text"] = {
					[1] = "{C:spades}Espadas{} y {C:clubs}Tréboles{}",
					[2] = "cuentan como {C:bunc_halberds}Alabardas",
				},
			},
			j_bunc_astigmatism = {
				["name"] = "Astigmatismo",
				["text"] = {
					[1] = "{C:hearts}Corazones{} y {C:diamonds}Diamantes{}",
					[2] = "cuentan como {C:bunc_fleurons}Florones",
				},
			},
			j_bunc_roygbiv = {
				["name"] = "Roy G. Biv",
				["text"] = {
					[1] = "Prob. de {C:green}#1# en #2#{} de agregar",
					[2] = "edición {C:dark_edition}polícroma{} a una carta",
					[3] = "anotada al azar si la mano",
					[4] = "contiene un {C:attention}Espectro",
				},
			},
			j_bunc_rigoletto = {
				["name"] = "Rigoletto",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi por cada {C:bunco_exotic}carta{}",
					[2] = "{C:bunco_exotic}exotica{} en tu {C:attention}baraja",
					[3] = "{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)",
				},
				["unlock"] = {
					[1] = "{E:1,s:1.3}?????",
				},
			},
		},
		Blind = {
			bl_bunc_paling = {
				["name"] = "La cerca",
				["text"] = {
					[1] = "Pierde $1 por",
					[2] = "carta descartada",
				},
			},
			bl_bunc_umbrella = {
				["name"] = "El paraguas",
				["text"] = {
					[1] = "Después de jugar, da vuelta todas",
					[2] = "las cartas en mano boca abajo",
				},
			},
			bl_bunc_tine = {
				["name"] = "La punta",
				["text"] = {
					[1] = "Cada #1#",
					[2] = "es debilitada",
				},
			},
			bl_bunc_swing = {
				["name"] = "El columpio",
				["text"] = {
					[1] = "Después de jugar o descartar,",
					[2] = "voltea todas las cartas",
				},
			},
			bl_bunc_miser = {
				["name"] = "El tacaño",
				["text"] = {
					[1] = "Omite la tienda después",
					[2] = "de derrotar esta ciega",
				},
			},
			bl_bunc_gate = {
				["name"] = "La puerta",
				["text"] = {
					[1] = "Las cartas no pueden",
					[2] = "ser deseleccionadas",
				},
			},
			bl_bunc_flame = {
				["name"] = "La llama",
				["text"] = {
					[1] = "Todas las cartas mejoradas",
					[2] = "se debilitan",
				},
			},
			bl_bunc_mask = {
				["name"] = "La máscara",
				["text"] = {
					[1] = "#1# tiene las fichas",
					[2] = "y el multi base de #2#",
				},
			},
			bl_bunc_bulwark = {
				["name"] = "El baluarte",
				["text"] = {
					[1] = "Jugar un(a) #1# descarta",
					[2] = "todas las cartas en mano",
				},
			},
			bl_bunc_knoll = {
				["name"] = "El montículo",
				["text"] = {
					[1] = "Tener mas de $5",
					[2] = "debilita la primera mano sacada",
				},
			},
			bl_bunc_stone = {
				["name"] = "La piedra",
				["text"] = {
					[1] = "+1X puntuación base",
					[2] = "por cada $10 en posesión",
				},
			},
			bl_bunc_sand = {
				["name"] = "La arena",
				["text"] = {
					[1] = "+1X puntuación base",
					[2] = "por cada etiqueta en posesión",
				},
			},
			bl_bunc_blade = {
				["name"] = "El filo",
				["text"] = {
					[1] = "La primera vez que la puntuación excede",
					[2] = "#1#",
					[3] = "hace que la mano jugada anote 0",
				},
			},
			bl_bunc_claw = {
				["name"] = "La garra",
				["text"] = {
					[1] = "Las cartas descartadas",
					[2] = "regresan a la baraja",
				},
			},
			bl_bunc_veil = {
				["name"] = "El velo",
				["text"] = {
					[1] = "Las cartas seleccionadas",
					[2] = "se voltean boca abajo",
				},
			},
			bl_bunc_cadaver = {
				["name"] = "El cadáver",
				["text"] = {
					[1] = "Se debe jugar al menos una",
					[2] = "carta de figura para anotar",
				},
			},
			bl_bunc_wind = {
				["name"] = "El viento",
				["text"] = {
					[1] = "El comodín más a la",
					[2] = "izquierda se debilita",
				},
			},
			bl_bunc_prince = {
				["name"] = "El príncipe",
				["text"] = {
					[1] = "Todos los comodínes se debilitan",
					[2] = "hasta jugar la primera mano",
				},
			},
			bl_bunc_depths = {
				["name"] = "Las profundidades",
				["text"] = {
					[1] = "Después de jugar, gana una etiqueta",
					[2] = "eterna, perecedera, o dispersante",
				},
			},
			bl_bunc_chasm = {
				["name"] = "El aberno",
				["text"] = {
					[1] = "Después de jugar, gana una etiqueta",
					[2] = "estorbante, reactiva o de alquiler",
				},
			},

			-- Final

			bl_bunc_final_crown = {
				["name"] = "Corona Cartuja",
				["text"] = {
					[1] = "Todas las cartas de los palos",
					[2] = "Espada, Corazón, Trébol y Diamante",
					[3] = "se debilitan",
				},
			},
			bl_bunc_final_trident = {
				["name"] = "Tridente Bermellón",
				["text"] = {
					[1] = "+1X a la puntuación por",
					[2] = "cada compra antes de esta ciega",
				},
			},
			bl_bunc_final_tower = {
				["name"] = "Torre de Índigo",
				["text"] = {
					[1] = "Las cartas no jugadas",
					[2] = "esta apuesta se debilitan",
				},
			},
			bl_bunc_final_dagger = {
				["name"] = "Daga Magenta",
				["text"] = {
					[1] = "Descartar cartas las juega",
					[2] = "y subtrae el valor a la puntuación",
				},
			},
			bl_bunc_final_shield = {
				["name"] = "Escudo Turquesa",
				["text"] = {
					[1] = "La puntuación excedente en esta",
					[2] = "apuesta inicial se agrega a la",
					[3] = "puntuación requerida de esta ciega",
				},
			},
		},
		Back = {
			b_bunc_fairy = {
				["name"] = "Baraja de Hadas",
				["text"] = {
					[1] = "Después de derrotar a la",
					[2] = "{C:attention}Ciega Jefe{}, agrega #1#",
					[3] = "{C:bunco_exotic,T:bunc_exotic_cards}#2#",
					[4] = " al azar a tu baraja",
				},
				["unlock"] = {
					[1] = "Juega {E:1,C:attention}5 palos diferentes",
					[2] = "en una sola mano",
				},
			},
			b_bunc_digital = {
				["name"] = "Baraja Digital",
				["text"] = {
					[1] = "Las cartas de {C:bunco_virtual_dark,E:1}Polimino{} pueden",
					[2] = "aparecer en la tienda,",
					[3] = "comienza con la{C:bunco_virtual_dark,T:c_bunc_the_i} I{}",
				},
			},
		},
		Tag = {

			-- Reworked

			tag_bunc_boss = {
				["name"] = "Etiqueta de jefe",
				["text"] = {
					[1] = "Otorga gratis un",
					[2] = "{C:attention}paquete de ciegas",
				},
			},
			tag_bunc_double = {
				["name"] = "Etiqueta doble",
				["text"] = {
					[1] = "Otorga una copia de",
					[2] = "la siguiente {C:attention}etiqueta{} seleccionada",
					[3] = "a excepción de {s:0.6,C:attention}Etiquetas doble y triple{s:0.8}",
				},
			},
			tag_bunc_d_six = {
				["name"] = "Etiqueta D6",
				["text"] = {
					[1] = "Agrega un {C:green}Cambio{} gratis",
					[2] = "en la siguiente tienda",
				},
			},

			-- Main Tags

			tag_bunc_breaking = {
				["name"] = "Etiqueta quebradora",
				["text"] = {
					[1] = "Deshabilita la",
					[2] = "{C:attention}ciega jefe{}",
				},
			},
			tag_bunc_arcade = {
				["name"] = "Etiqueta arcade",
				["text"] = {
					[1] = "Otorga gratis un",
					[2] = "{C:bunco_virtual_dark}paquete virtual mega",
				},
			},
			tag_bunc_triple = {
				["name"] = "Etiqueta triple",
				["text"] = {
					[1] = "Otorga dos copias de",
					[2] = "la {C:attention}etiqueta{} siguiente seleccionada",
					[3] = "a excepción de {s:0.8,C:attention}Etiqueta triple{s:0.8}",
				},
			},

			-- Edition tags

			tag_bunc_glitter = {
				["name"] = "Etiqueta brillantina",
				["text"] = {
					[1] = "El próximo comodín de la",
					[2] = "tienda es gratis y tiene",
					[3] = "edición {C:dark_edition}brillantina",
				},
			},
			tag_bunc_fluorescent = {
				["name"] = "Etiqueta fluorescente",
				["text"] = {
					[1] = "El próximo comodín de la",
					[2] = "tienda es gratis y",
					[3] = "se vuelve {C:dark_edition}fluorescente",
				},
			},

			-- Consumable edition tags

			tag_bunc_chips = {
				["name"] = "Etiqueta de fichas",
				["text"] = {
					[1] = "{C:chips}+#1#{} fichas en la siguiente mano",
				},
			},
			tag_bunc_mult = {
				["name"] = "Etiqueta multi",
				["text"] = {
					[1] = "{C:mult}+#1#{} multi en la siguiente mano",
				},
			},
			tag_bunc_xmult = {
				["name"] = "Etiqueta megamulti",
				["text"] = {
					[1] = "{X:mult,C:white}X#1#{} multi en la siguiente mano",
				},
			},
			tag_bunc_xchips = {
				["name"] = "Etiqueta de ultrafichas",
				["text"] = {
					[1] = "{X:chips,C:white}X#1#{} fichas en la siguiente mano",
				},
			},

			-- Exotic tags

			tag_bunc_filigree = {
				["name"] = "Etiqueta filigrana",
				["text"] = {
					[1] = "El proximo {C:attention}paquete estándar{} abierto",
					[2] = "tiene solo {C:bunco_exotic}cartas exoticas",
				},
			},

			-- Anti-tags

			tag_bunc_eternal = {
				["name"] = "Etiqueta eterna",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker {C:attention}eterno{}",
				},
			},
			tag_bunc_perishable = {
				["name"] = "Etiqueta perecedera",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker {C:attention}perecedero{}",
				},
			},
			tag_bunc_scattering = {
				["name"] = "Etiqueta dispersante",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker {C:attention}dispersante{}",
				},
			},
			tag_bunc_hindered = {
				["name"] = "Etiqueta estorbante",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker {C:attention}estorbante{}",
				},
			},
			tag_bunc_reactive = {
				["name"] = "Etiqueta reactiva",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker {C:attention}reactivo{}",
				},
			},
			tag_bunc_rental = {
				["name"] = "Etiqueta de alquiler",
				["text"] = {
					[1] = "El próximo comodín de la tienda",
					[2] = "obtendrá un sticker de {C:attention}alquiler{}",
				},
			},
		},
		Edition = {
			e_bunc_glitter = {
				["name"] = "Brillantina",
				["text"] = {
					[1] = "{X:chips,C:white}X#1#{} fichas",
				},
			},
			e_bunc_fluorescent = {
				["name"] = "Fluorescente",
				["text"] = {
					[1] = "No puede voltearse, debilitarse",
					[2] = "o ser forzado a seleccionarse",
				},
			},
			-- Consumible Editions
			e_bunc_consumable_edition_foil = {
				name = "Laminada",
				["text"] = {
					[1] = "Crea una etiqueta de",
					[2] = "{C:attention}Fichas{} al usarse",
				},
			},
			e_bunc_consumable_edition_holo = {
				["name"] = "Holográfica",
				["text"] = {
					[1] = "Crea una etiqueta",
					[2] = "{C:attention}Multi{} al usarse",
				},
			},
			e_bunc_consumable_edition_polychrome = {
				["name"] = "Policroma",
				["text"] = {
					[1] = "Crea una etiqueta",
					[2] = "{C:attention}Megamulti{} al usarse",
				},
			},
			e_bunc_consumable_edition_bunc_glitter = {
				["name"] = "Brillantina",
				["text"] = {
					[1] = "Crea una etiqueta de",
					[2] = "{C:attention}Ultrafichas{} al usarse",
				},
			},
		},
		Voucher = {
			v_bunc_lamination = {
				["name"] = "Laminación",
				["text"] = {
					[1] = "Los consumibles en",
					[2] = "{C:attention}paquetes potenciadores{} pueden",
					[3] = "aparecer con {C:dark_edition}edición",
				},
			},
			v_bunc_supercoating = {
				["name"] = "Supercapa",
				["text"] = {
					[1] = "Todos los consumibles en",
					[2] = "{C:attention}paquetes potenciadores{} aparecen",
					[3] = "con {C:dark_edition}ediciones",
				},
				["unlock"] = {
					[1] = "Usa {C:attention,E:1}#1#{} consumibles",
					[2] = "con {C:attention,E:1}ediciones",
					[3] = "{C:inactive}(#2#)",
				},
			},
			v_bunc_hedge_trimmer = {
				["name"] = "Cortacerco",
				["text"] = {
					[1] = "Reduce la puntuación de la ciega",
					[2] = "por {C:attention}#1#%{} con cada mano jugada",
				},
			},
			v_bunc_chainsaw = {
				["name"] = "Motosierra",
				["text"] = {
					[1] = "Todas las puntuaciones requeridas",
					[2] = "son reducidas por {C:attention}#1#%{}",
				},
				["unlock"] = {
					[1] = "Reduce la puntuacion de ciega usando",
					[2] = "Cortacerco",
					[3] = "un total de {C:attention,E:1}#1#{} veces",
					[4] = "{C:inactive}(#2#)",
				},
			},
			v_bunc_cups_n_balls = {
				["name"] = "Vasos y bolas",
				["text"] = {
					[1] = "{C:attention}+1{} paquete potenciador",
					[2] = "disponible en la tienda",
				},
			},
			v_bunc_shell_game = {
				["name"] = "Juego de bolas",
				["text"] = {
					[1] = "Renueva los {C:attention}contenidos",
					[2] = "de los paquetes potenciadores",
					[3] = "{C:attention}1{} vez",
				},
				["unlock"] = {
					[1] = "Abre {E:1,C:attention}#1#",
					[2] = "paquetes potenciadores",
					[3] = "{C:inactive}(#2#)",
				},
			},
			v_bunc_disguise = {
				["name"] = "Disfraz",
				["text"] = {
					[1] = "Los {C:attention}paquetes de ciegas{} pueden",
					[2] = "aparecer en la tienda",
				},
			},
			v_bunc_masquerade = {
				["name"] = "Mascarada",
				["text"] = {
					[1] = "Todos los {C:attention}paquetes de ciegas{} en",
					[2] = "la tienda son gratis",
				},
				["unlock"] = {
					[1] = "Reemplaza {E:1,C:attention}#1#{}",
					[2] = "ciegas con ciegas",
					[3] = "de un paquete de ciegas",
					[4] = "{C:inactive}(#2#)",
				},
			},
			v_bunc_fanny_pack = {
				["name"] = "Riñonera",
				["text"] = {
					[1] = "{C:green}#1# en #2#{} probabilidades de",
					[2] = "obtener una {C:attention}etiqueta doble",
					[3] = "cada vez que una ciega",
					[4] = "es {C:attention}omitida",
				},
			},
			v_bunc_pin_collector = {
				["name"] = "Coleccionista",
				["text"] = {
					[1] = "Todas las {C:attention}etiquetas doble{} nuevas",
					[2] = "aparecen como {C:attention}etiquetas triple",
				},
				["unlock"] = {
					[1] = "Omite un total de",
					[2] = "{E:1,C:attention}#1#{} ciegas",
					[3] = "{C:inactive}(#2#)",
				},
			},
			v_bunc_arcade_machine = {
				["name"] = "Máquina de arcade",
				["text"] = {
					[1] = "Los {C:bunco_virtual_dark}paquetes virtuales",
					[2] = "aparecen {C:attention}4X{} mas",
				},
			},
			v_bunc_polybius = {
				["name"] = "Polybius",
				["text"] = {
					[1] = "Las cartas de {C:bunco_virtual_dark}polimino{} permiten",
					[2] = "conectar {C:attention}una carta{} más",
					[3] = "{s:0.6,C:inactive}La carta extra puede ser de cualquier propiedad",
				},
				["unlock"] = {
					[1] = "Crea un total de",
					[2] = "{E:1,C:attention}#1#{} grupos conectados",
					[3] = "{C:inactive}(#2#)",
				},
			},
		},
		Enhanced = {
			m_bunc_copper = {
				["name"] = "Carta de cobre",
				["text"] = {
					[1] = "Reanota si es jugada",
					[2] = "{C:attention}adyacente{} a otra",
					[3] = "carta de cobre anotada",
				},
			},
			m_bunc_cracker = {
				["name"] = "Carta Galleta",
				["text"] = {
					[1] = "{C:attention}Al descartarse{} la carta se",
					[2] = "juega y luego se destruye",
				},
			},
		},
		Stake = {
			stake_bunc_cyan = {
				["name"] = "Pozo cian",
				["text"] = {
					[1] = "La tienda puede tener comodines {C:attention}dispersantes{}",
					[2] = "{C:inactive,s:0.8}(#1#)",
				},
			},
			stake_bunc_pink = {
				["name"] = "Pozo rosa",
				["text"] = {
					[1] = "La tienda puede tener comodines {C:attention}estorbantes{}",
					[2] = "{C:inactive,s:0.8}(#1#)",
				},
			},
			stake_bunc_magenta = {
				["name"] = "Pozo magenta",
				["text"] = {
					[1] = "La tienda puede tener comodines {C:attention}reactivos{}",
					[2] = "{C:inactive,s:0.8}(#1#)",
				},
			},
		},
	},
}
