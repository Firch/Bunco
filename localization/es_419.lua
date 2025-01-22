return {
    misc = {
        dictionary = {

            -- Config values

            bunc_colorful_finishers = 'Ciegas Finales Coloridas',
            bunc_colorful_finishers_desc = 'Habilita fondos coloridos para las ciegas finales',
            bunc_colorful_finishers_desc_2 = 'y remueve el fondo gris del modo infinito',

            bunc_high_quality_shaders = 'Sombreadores de Alta Definición',
            bunc_high_quality_shaders_desc = 'Hace que algunos de los sombreadores',
            bunc_high_quality_shaders_desc_2 = 'se muestren en alta definición (puede causar lag)',

            bunc_fixed_sprites = 'Sprites Reparados',
            bunc_fixed_sprites_desc = 'Cambia algunos sprites de manera menor, removiendo',
            bunc_fixed_sprites_desc_2 = 'pixeles sueltos, mejorando la consistencia y el alto contraste',

            bunc_gameplay_reworks = 'Cambios de Jugabilidad',
            bunc_gameplay_reworks_desc = 'Rehace algunas de las mecánicas originales',
            bunc_gameplay_reworks_desc_2 = 'para hacer el juego más agradable',

            bunc_fixed_badges = 'Placas Reparadas',
            bunc_fixed_badges_desc = 'Cambia las placas en los consumibles, reemplazando texto',
            bunc_fixed_badges_desc_2 = 'confuso con indicaciones de su manera de obtener',

            bunc_jokerlike_consumable_editions = 'Ediciones en Ranura de Consumibles',
            bunc_jokerlike_consumable_editions_desc = 'Revierte al comportamiento original de los consumibles con',
            bunc_jokerlike_consumable_editions_desc_2 = 'ediciones actuando como comodines (para otros mods con conflictos)',

            bunc_default_true = 'Habilitado por defecto',
            bunc_default_false = 'Deshabilitado por defecto',
            bunc_requires_restart = 'Requiere un reinicio del juego',

            -- Miscellaneous

            bunc_copied = '¡Se copió!',
            bunc_nothing = 'Nada',
            bunc_chips = 'Fichas',
            bunc_loop = '¡Repetido!',
            bunc_chance = 'Probabilidades',
            bunc_word_and = 'y',
            bunc_debuffed = '¡Debilitado!',
            bunc_pew = 'Pew!',
            bunc_declined = 'Rechazado...',
            bunc_accepted = '¡Aceptado!',
            bunc_ouch = '¡OUCH!',
            bunc_repeat = '¡Se repitió!',
            bunc_thoth_tarot = 'Tarot de Thoth',
            bunc_mysterious_tarot = '¿Tarot?',
            bunc_mysterious_polymino = '¿Poliminó?',
            bunc_most_played_rank = '(categoría mas jugada)',
            bunc_least_played_hand = '(mano menos jugada)',
            bunc_blade = '(1.5X puntuación de la ciega)',
            bunc_exceeded_score = '¡Excedió el límite!',

            -- Consumable types

            k_polymino = 'Poliminó',
            b_polymino_cards = 'Cartas de poliminó',

            -- Booster types

            k_bunc_blind_pack = 'Paquete de ciegas',
            k_bunc_virtual_pack = 'Paquete virtual',
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Florón',
            bunc_Halberds = 'Alabarda',
        },
        suits_plural = {
            bunc_Fleurons = 'Florones',
            bunc_Halberds = 'Alabardas',
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Espectro',
            ['bunc_Straight Spectrum'] = 'Escalera espectral',
            ['bunc_Straight Spectrum (Royal)'] = 'Espectro real',
            ['bunc_Spectrum House'] = 'Full de espectro',
            ['bunc_Spectrum Five'] = 'Cinco de espectro',
            ['bunc_Deal'] = 'Trato'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '5 cartas con palos diferentes'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5 cartas seguidas (valores consecutivos),',
                [2] = 'cada una con palo diferente'
            },
            ['bunc_Spectrum House'] = {
                [1] = 'Una tercia y un par con',
                [2] = 'cada carta de un palo diferente'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '5 cartas con la misma categoría,',
                [2] = 'cada una con palo diferente'
            },
            ['bunc_Deal'] = {
                [1] = '5 categorías elegidas',
                [2] = 'por Matrícula'
            }
        },
        labels = {

            -- Editions

            bunc_glitter = 'Brillantina',
            bunc_fluorescent = 'Fluorescente',

            -- Stickers

            bunc_scattering = 'Dispersante',
            bunc_hindered = 'Estorbante',
            bunc_reactive = 'Reactivo',
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} fichas extra esta ronda'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Conectada{} en este grupo:'}},
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Conectada{} en grupo en mano'}},
            bunc_exotic_cards = {
                ['name'] = 'Cartas exoticas',
                ['text'] = {
                    [1] = 'Cartas con palo',
                    [2] = 'de {C:bunc_fleurons}Florón{} o {C:bunc_halberds}Alabarda{}'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = 'Laminada',
                ['text'] = {
                    [1] = 'Crea una {C:attention}etiqueta de fichas'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = 'Holográfica',
                ['text'] = {
                    [1] = 'Crea una {C:attention}etiqueta multi'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = 'Polícroma',
                ['text'] = {
                    [1] = 'Crea una {C:attention}etiqueta megamulti'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = 'Brillantina',
                ['text'] = {
                    [1] = 'Crea una {C:attention}etiqueta de ultrafichas'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'No se descubrió',
                ['text'] = {
                    [1] = 'Compra o usa',
                    [2] = 'esta carta',
                    [3] = 'en una partida sin códigos',
                    [4] = 'para saber lo que hace'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = 'Paquete de ciegas',
                ['text'] = {
                    [1] = 'Elige una de hasta',
                    [2] = '{C:attention}#1# ciegas jefe{} para',
                    [3] = 'reemplazar en esta apuesta inicial'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = 'Paquete virtual',
                ['text'] = {
                    [1] = 'Saca toda la baraja y',
                    [2] = 'elige {C:attention}#1#{} de hasta',
                    [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                    [4] = 'usar de inmediato'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = 'Paquete virtual jumbo',
                ['text'] = {
                    [1] = 'Saca toda la baraja y',
                    [2] = 'elige {C:attention}#1#{} de hasta',
                    [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                    [4] = 'usar de inmediato'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = 'Paquete virtual mega',
                ['text'] = {
                    [1] = 'Saca toda la baraja y',
                    [2] = 'elige {C:attention}#1#{} de hasta',
                    [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                    [4] = 'usar de inmediato'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Dispersante',
                ['text'] = {
                    [1] = 'Destruye un',
                    [2] = 'comodín al azar',
                    [3] = 'al venderse o destruirse'
                }
            },
            bunc_hindered = {
                ['name'] = 'Estorbante',
                ['text'] = {
                    [1] = 'Se queda en su lugar hasta',
                    [2] = 'el fin de la ronda',
                    [3] = 'despues de ser vendido'
                }
            },
            bunc_reactive = {
                ['name'] = 'Reactivo',
                ['text'] = {
                    [1] = 'Se debilita si no se omite',
                    [2] = 'ninguna ciega esta apuesta inicial'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Sticker cian',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}cian{}'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Sticker rosa',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}rosa{}'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Sticker magenta',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}magenta{}'
                }
            }
        },

        -- Consumables

        Tarot = {
            c_bunc_art = {
                ['name'] = 'El arte',
                ['text'] = {
                    [1] = 'Mejora {C:attention}#1#{}',
                    [2] = 'cartas seleccionadas a',
                    [3] = '{C:attention}#2#'
                }
            },
            c_bunc_sky = {
                ['name'] = 'El cielo',
                ['text'] = {
                    [1] = 'Convierte hasta',
                    [2] = '{C:attention}#1#{} cartas seleccionadas',
                    [3] = 'en {C:bunc_fleurons}Florones{}',
                }
            },
            c_bunc_abyss = {
                ['name'] = 'El abismo',
                ['text'] = {
                    [1] = 'Convierte hasta',
                    [2] = '{C:attention}#1#{} cartas seleccionadas',
                    [3] = 'en {C:bunc_halberds}Alabardas{}',
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
                ['name'] = 'Purificar',
                ['text'] = {
                    [1] = 'Agrega {C:dark_edition}fluorescencia{} a',
                    [2] = '{C:attention}#1#{} cartas seleccionadas de tu mano'
                }
            },
            c_bunc_the_8 = {
                ['name'] = 'El 8',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} todas',
                    [2] = 'las cartas sin conectar de tu mano',
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'La I',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'que comparten el {C:attention}mismo palo o categoría'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'La O',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde 2 cartas comparten una {C:attention}misma propiedad',
                    [3] = '{C:inactive}(categoría o palo){} y las otras 2 cartas',
                    [4] = 'comparten {C:attention}un tipo diferente{} de la {C:attention}misma propiedad'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'La T',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde 3 cartas comparten la {C:attention}misma propiedad',
                    [3] = '{C:inactive}(categoría o palo){} y la otra carta',
                    [4] = '{C:attention}no comparte{} la {C:attention}misma propiedad{}',
                    [5] = 'con las otras cartas'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'La S',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde {C:attention}2 grupos{} de 2 cartas comparten',
                    [3] = 'la {C:attention}misma categoría{} dentro de cada grupo, con una',
                    [4] = 'carta de cada grupo que comparten un {C:attention}mismo palo'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'La Z',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde {C:attention}2 grupos{} de 2 cartas comparten',
                    [3] = 'el {C:attention}mismo palo{} dentro de cada grupo, con una',
                    [4] = 'carta de cada grupo que comparten una {C:attention}misma categoría'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'La J',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde 3 cartas comparten la {C:attention}misma categoría',
                    [3] = 'y la otra carta comparte',
                    [4] = 'un {C:attention}mismo palo{} sin',
                    [5] = 'compartir la misma categoria'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'La L',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde 3 cartas comparten el {C:attention}mismo palo',
                    [3] = 'y la otra carta comparte',
                    [4] = 'una {C:attention}misma categoría{} sin',
                    [5] = 'compartir el mismo palo'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'El /',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                    [2] = 'donde todas las cartas tienen una',
                    [3] = '{C:attention}propiedad diferente{} {C:inactive}(categoría o palo)'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Luchador',
                ['text'] = {
                    [1] = 'Vende esta carta',
                    [2] = 'para crear 1 {C:attention}Etiqueta rompeciegas',
                    [3] = 'gratis'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Carta roja',
                ['text'] = {
                    [1] = 'Este comodín obtiene {C:red}+#1#{} multi',
                    [2] = 'por cada elección omitida',
                    [3] = 'en un {C:attention}paquete potenciador{}',
                    [4] = '{C:inactive}(Actual {C:red}+#2#{C:inactive} multi)'
                }
            },

            -- Main Jokers

            j_bunc_cassette = {
                ['name'] = 'Casete',
                ['text'] = {
                    [1] = 'Al descartar, da vuelta al comodín al otro lado',
                    [2] = '{C:attention}Lado A:{} Las cartas con palo claro',
                    [3] = 'otorgan {C:chips}+#1#{} fichas cuando anotan',
                    [4] = '{C:attention}Lado B:{} Las cartas con palo oscuro',
                    [5] = 'otorgan {C:mult}+#2#{} multi cuando anotan'
                    -- TODO would be good to have a line for the side
                    -- or colorize the active side
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Comodín mosaico',
                ['text'] = {
                    [1] = 'Las {C:attention}cartas de piedra{} jugadas',
                    [2] = 'otorgan {C:mult}+#1#{} multi',
                    [3] = 'cuando anotan'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano de 5 cartas',
                    [2] = 'que solo contiene',
                    [3] = 'cartas de {C:attention,E:1}piedra{}'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Comodín de vóxeles',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi, {X:mult,C:white}-X#2#{} multi por cada',
                    [2] = '{C:attention}carta mejorada{} en tu {C:attention}baraja{}',
                    [3] = '{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = 'Ten al menos {C:attention}10',
                    [2] = 'cartas {E:1,C:attention}mejoradas{} en',
                    [3] = 'tu baraja'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Agroglifos',
                ['text'] = {
                    [1] = 'El palo base de {C:clubs}Tréboles{} otorga {C:mult}+3{} multi,',
                    [2] = 'Los {C:attention}8s{} otorgan {C:mult}+2{} multi,',
                    [3] = 'Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} multi'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Agroglifos',
                ['text'] = {
                    [1] = 'El palo base de {C:bunc_fleurons}Florones{} otorga {C:mult}+4{} multi,',
                    [2] = 'El palo base de {C:clubs}Tréboles{} otorga {C:mult}+3{} multi,',
                    [3] = 'Los {C:attention}8s{} otorgan {C:mult}+2{} multi,',
                    [4] = 'Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} multi'
                }
            },
            j_bunc_xray = {
                ['name'] = 'Rayos X',
                ['text'] = {
                    [1] = 'Este comodín obtiene {X:mult,C:white}X#1#{} multi',
                    [2] = 'por cada carta tomada boca abajo',
                    [3] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = 'Completa el desafio',
                    [2] = '{E:1,C:attention}Visión de rayos X'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Terror',
                ['text'] = {
                    [1] = 'Después de anotar tu {C:attention}última{} {C:blue}mano{},',
                    [2] = 'mejórala por {C:attention}2 niveles{}',
                    [3] = 'y {C:attention}destruye{} las cartas anotadas',
                    [4] = '{C:red}Pierde{} todos los {C:attention}niveles ganados{} si remueves este comodín'
                },
                ['unlock'] = {
                    [1] = 'Reduce tu baraja',
                    [2] = 'por al menos {E:1,C:attention}10{} cartas',
                    [3] = 'en una ronda'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Comodín prehistorico',
                ['text'] = {
                    [1] = 'Cartas jugadas que comparten',
                    [2] = 'ambos {C:attention}categoría y palo{} con una',
                    [3] = '{C:attention}carta que ya anotó{} esta ronda',
                    [4] = 'otorgan {C:mult}+#1#{} multi'
                },
                ['unlock'] = {
                    [1] = 'Juega un',
                    [2] = '{E:1,C:attention}cinco de color'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Comodín linograbado',
                ['text'] = {
                    [1] = 'Cuando juegas exactamente {C:attention}2{} cartas',
                    [2] = 'que forman un {C:attention}Par{},',
                    [3] = "convierte el palo de la carta {C:attention}izquierda{}",
                    [4] = "en el palo de la carta {C:attention}derecha{}",
                    [5] = '{C:inactive}(Arrastra para acomodar)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'Impresión fantasma',
                ['text'] = {
                    [1] = 'Otorga fichas y multi',
                    [2] = 'de el ultimo {C:attention}tipo de mano{} jugado',
                    [3] = '{C:inactive}(Ultima mano: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Usurero',
                ['text'] = {
                    [1] = 'Gana {C:money}$#1#',
                    [2] = 'al adquirirse...'
                },
                ['unlock'] = {
                    [1] = 'Gasta al menos {E:1,C:attention}$100',
                    [2] = 'durante una sola ronda'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Usurero',
                ['text'] = {
                    [1] = 'Gana {C:money}$#1#{} al adquirirse,',
                    [2] = 'el precio de venta se vuelve {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Comodín de sótano',
                ['text'] = {
                    [1] = 'Cuando la {C:attention}ciega jefe{} es derrotada,',
                    [2] = 'crea una carta {C:spectral}espectral{}',
                    [3] = '{C:inactive}(Debe haber espacio)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Comodín pastor',
                ['text'] = {
                    [1] = 'Este comodín obtiene {C:chips}+#1#{} fichas',
                    [2] = 'cuando la mano jugada contiene un {C:attention}Par',
                    [3] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Caballero comodín',
                ['text'] = {
                    [1] = 'Cuando la {C:attention}ciega{} es seleccionada, {C:attention}mezcla{} todos los comodines',
                    [2] = 'y este comodín obtiene {C:mult}+#1#{} multi,',
                    [3] = 'se {C:red}reinicia{} cuando cualquier comodín es reacomodado',
                    [4] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = 'Derrota a la {E:1,C:attention}Bellota Ambarina',
                    [2] = 'sin deshabilitarla'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Tarjeta coleccionable de Comodín Man y el Chico Bufón Núm. 54',
                ['text'] = {
                    [1] = 'Los {C:attention}paquetes estándar{} contienen',
                    [2] = 'solo {C:attention}cartas mejoradas{}'
                },
                ['unlock'] = {
                    [1] = 'Abre {E:1,C:attention}50',
                    [2] = 'paquetes potenciadores',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Perros jugando póker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi si cada categoría',
                    [2] = 'anotada es {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, o {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Gancho derecho',
                ['text'] = {
                    [1] = 'Reactiva la carta más derecha anotada',
                    [2] = 'una vez por cada {C:blue}mano{} restante',
                },
                ['unlock'] = {
                    [1] = 'Reactiva una carta',
                    [2] = 'jugada al menos',
                    [3] = '{E:1,C:attention}5 veces{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Comodín diabólico',
                ['text'] = {
                    [1] = 'Duplica todas las fuentes de dinero,',
                    [2] = '{C:green}#1# en #2#{} probabilidades de en vez',
                    [3] = 'ganar {C:money}$1{}'
                },
                ['unlock'] = {
                    [1] = 'Completa el desafio',
                    [2] = '{E:1,C:attention}Doble o nada'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Carnaval',
                ['text'] = {
                    [1] = 'Después de derrotar a la {C:attention}ciega jefe{},',
                    [2] = '{C:attention}destruye{} un comodín al azar para',
                    [3] = 'regresar a una apuesta inicial anterior, la proxima vez',
                    [4] = 'solo funciona en una apuesta inicial mayor'
                    -- TODO needs a line for whether it's active / ante it will be active
                },
                ['unlock'] = {
                    [1] = 'Alcanza un nivel de',
                    [2] = 'apuesta inicial {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Martillo',
                ['text'] = {
                    [1] = 'Las {C:attention}cartas de vidrio{} otorgan +{X:mult,C:white}X#1#{} multi',
                    [2] = 'pero siempre se rompen'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano de 5 cartas',
                    [2] = 'que contiene solo',
                    [3] = 'cartas de {C:attention,E:1}vidrio{}'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Colgante de puerta',
                ['text'] = {
                    [1] = 'Los comodines {C:blue}comunes{} no aparecen',
                    [2] = '{s:0.8}Aparecen diferentes rarezas en vez'
                },
                ['unlock'] = {
                    [1] = 'Gana una partida sin',
                    [2] = 'haber tenido',
                    [3] = 'comodines {C:attention}comunes{}'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Huellas dactilares',
                ['text'] = {
                    [1] = 'Las cartas anotadas en la {C:attention}mano ganadora{}',
                    [2] = 'obtienen {C:chips}+#1#{} fichas solo',
                    [3] = 'por la siguiente ronda',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'El cero',
                ['text'] = {
                    [1] = 'Este comodín obtiene {C:attention}#1#X{} a',
                    [2] = 'las {C:green,E:1,S:1.1}probabilidades{} {C:attention}esta ronda{} cuando una',
                    [3] = 'carta con categoría {C:attention}ninguna{}, {C:attention}de cero{}, o {C:attention}no-contable{}',
                    [4] = 'anota {C:inactive}(K, Q, J, 0, sin categoria)',
                    [5] = '{C:inactive}(Actual {C:attention}X#2#{C:inactive} a las {C:green,E:1,S:1.1}probabilidades{C:inactive})'
                    -- TODO not sure how to word non-countable
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'El nulo',
                ['text'] = {
                    [1] = 'Las cartas {C:attention}debilitadas{} ganan',
                    [2] = '{C:money}$#1#{} cuando anotan'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Posavasos',
                ['text'] = {
                    [1] = 'Las cartas en la mano obtienen',
                    [2] = '{C:chips}+#1#{} fichas esta ronda',
                    [3] = 'al jugar o descartar'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = 'Matrícula',
                ['text'] = {
                    [1] = '#1#',
                    [2] = 'tiene las fichas y el multi de todas',
                    [3] = 'las {C:attention}manos de póker{} jugadas esta partida',
                    [4] = '{s:0.8}La combinación cambia cada ronda'
                },
                ['unlock'] = {
                    [1] = 'Completa el desafio',
                    [2] = '{E:1,C:attention}Ciudad de los 15 minutos'
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Comodín perezoso',
                ['text'] = {
                    [1] = 'Las {C:attention}cartas versátiles{}',
                    [2] = 'otorgan {C:mult}+#1#{} multi',
                    [3] = 'cuando anotan'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano de 5 cartas',
                    [2] = 'que contiene solo',
                    [3] = 'cartas {C:attention,E:1}versátiles{}'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Comodín de neón',
                ['text'] = {
                    [1] = 'Este comodín obtiene {X:mult,C:white}X#1#{} multi',
                    [2] = 'por cada carta {C:attention}debilitada{} anotada',
                    [3] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano de 5 cartas',
                    [2] = 'que contiene solo',
                    [3] = 'cartas {C:attention,E:1}debilitadas{}'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Plan de juego',
                ['text'] = {
                    [1] = 'Los {C:attention}comodines{} a los lados de este comodín',
                    [2] = 'son {C:red}debilitados{} y',
                    [3] = 'otorgan {C:mult}+#1#{} multi'
                },
                ['unlock'] = {
                    [1] = 'Derrota a la {E:1,C:attention}Hoja Verde',
                    [2] = 'sin deshabilitarla'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Conquest',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} fichas,',
                    [2] = '{C:red}debilita{} un comodín al azar',
                    [3] = 'cuando la {C:attention}ciega{} es seleccionada'
                },
                ['unlock'] = {
                    [1] = 'Derrota al {E:1,C:attention}Corazón Carmesí',
                    [2] = 'sin deshabilitarlo'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Jerarquía de necesidades',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} multi por cada',
                    -- TODO do wilds count, or base suit only?
                    [2] = '{C:attention}2-As{} del mismo palo',
                    [3] = 'en tu {C:attention}baraja',
                    [4] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Comodín enano',
                ['text'] = {
                    [1] = 'Las {C:attention}cartas de piedra{} en mano',
                    [2] = 'tienen las habilidades de',
                    [3] = 'las cartas de {C:attention}acero{} y {C:attention}oro'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano que',
                    [2] = 'contiene cartas de {E:1,C:attention}piedra{}, {E:1,C:attention}acero,',
                    [3] = 'y {E:1,C:attention}oro{}'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Aristócrata',
                ['text'] = {
                    [1] = 'Elige una carta extra',
                    [2] = 'de los {C:attention}paquetes potenciadores'
                },
                ['unlock'] = {
                    [1] = 'Gana una partida sin',
                    [2] = 'haber abierto',
                    [3] = '{C:attention,E:1}paquetes potenciadores'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Metalúrgico',
                ['text'] = {
                    [1] = 'Las {C:attention}cartas de oro{} otorgan {C:mult}+#1#{} multi',
                    [2] = 'mientras están en la mano'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Juggalo',
                ['text'] = {
                    [1] = 'Agrega efectos de edición {C:dark_edition}laminada{}, {C:dark_edition}holográfica{},',
                    [2] = '{C:dark_edition}polícroma{}, o {C:dark_edition}brillantina{}',
                    [3] = 'a un {C:attention}consumible{} al azar',
                    [4] = 'cuando la {C:attention}ciega{} es seleccionada'
                },
                ['unlock'] = {
                    [1] = 'Usa {C:attention,E:1}10{} consumibles',
                    [2] = 'con {C:attention,E:1}ediciones'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Cabeza en las nubes',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de mejorar',
                    [2] = '{C:attention}carta más alta{} cuando',
                    [3] = 'mejoras cualquier {C:attention}mano de póker'
                },
                ['unlock'] = {
                    [1] = 'Gana una partida con',
                    [2] = '{C:attention,E:1}carta más alta{} siendo la',
                    [3] = 'mano de póker mas mejorada'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Tiro a la cabeza',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi si la mano jugada',
                    [2] = 'contiene solamente una sola',
                    [3] = '{C:attention}carta de figura{} anotante'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Gatillazo',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi,',
                    [2] = '{C:attention}seleccionar{} una carta tiene',
                    [3] = '{C:green}#2# en #3#{} probabilidades de',
                    [4] = 'jugar las cartas seleccionadas'
                },
                ['unlock'] = {
                    [1] = 'Derrota a la {E:1,C:attention}Campana Cerúlea',
                    [2] = 'sin deshabilitarla'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Rayuela',
                ['text'] = {
                    [1] = 'Gana {C:red}+#1#{} descarte',
                    [2] = 'si la mano jugada',
                    [3] = 'contiene una {C:attention}Escalera{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Peón',
                ['text'] = {
                    [1] = 'Cartas de la categoría',
                    [2] = ' {C:attention}mas baja{} en tu baraja',
                    [3] = '{C:attention}incrementan en categoría{} cuando anotan'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Panel de adivinanzas',
                ['text'] = {
                    [1] = 'Cuando se usa una carta de {C:tarot}tarot{},',
                    [2] = '{C:green}#1# en #2#{} probabilidades de agregar',
                    [3] = 'edición {C:dark_edition}laminada{}, {C:dark_edition}holográfica{}, o',
                    [4] = '{C:dark_edition}polícroma{} al azar',
                    [5] = ' a una carta seleccionada'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Vandalismo',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de',
                    [2] = 'sacar cartas boca abajo',
                    [3] = 'Las cartas boca abajo obtienen',
                    [4] = '{X:mult,C:white}X#3#{} multi cuando anotan'
                },
                ['unlock'] = {
                    [1] = 'Juega una mano de 5 cartas',
                    [2] = 'que contiene solo',
                    [3] = 'cartas {C:attention,E:1}boca abajo{}'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Protestante',
                ['text'] = {
                    [1] = 'Agrega {C:attention}#1#X{} la categoría mas alta',
                    [2] = 'descartada esta ronda a las fichas',
                    [3] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Garabato',
                ['text'] = {
                    [1] = '{C:attention}Copia{} el primer consumible',
                    [2] = 'usado esta ronda',
                    [3] = '{C:inactive}(Debe haber espacio)'
                },
                ['unlock'] = {
                    [1] = 'Gana {C:attention,E:1}10{} partidas',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Desproporcionalidad',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Chiste repetido',
                ['text'] = {
                    [1] = 'Crea un "{C:attention}Comodín{}"',
                    [2] = '{C:dark_edition}negativo{} al',
                    [3] = 'principio de cada tienda'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'En Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi si',
                    [2] = 'la mano jugada contiene una {C:attention}Escalera{}',
                    [3] = 'con una {C:attention}carta de figura{} anotante'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} multi si',
                    [2] = 'ninguna {C:attention}carta mejorada{}',
                    [3] = 'anota'
                },
                ['unlock'] = {
                    [1] = 'Gana una partida sin',
                    [2] = 'haber tenido {C:attention,E:1}cartas mejoradas'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Critico',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} multi si la puntuación",
                    [2] = 'actual de la mano jugada es',
                    [3] = '{C:attention}menos que 1/#2#{} de la',
                    [4] = "puntuación requerida de la ciega"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Teléfono',
                ['text'] = {
                    [1] = '{C:attention}Regresa{} las cartas anotadas a la mano',
                    [2] = 'después de la primera jugada de la ronda',
                    [3] = 'si no se usó ningun descarte'
                }
            },
            j_bunc_wino = {
                ['name'] = 'Borrachín',
                ['text'] = {
                    [1] = 'Cartas jugadas con',
                    [2] = 'palo de {C:hearts}Corazón{} y {C:diamonds}Diamante{}',
                    [3] = 'otorgan {C:chips}+#1#{} fichas cuando anotan'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Cazarrecompensas',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} multi por',
                    [2] = 'cada {C:money}$1{} debajo de {C:money}$0',
                    [3] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = 'Ten menos de {E:1,C:attention}$#1#',
                    [2] = 'durante una sola partida'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Ratonera',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} fichas,',
                    [2] = '{C:green}#2# en #3#{} probabilidades de',
                    [3] = '{C:attention}perder{} una mano en vez'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'El Comodín',
                ['text'] = {
                    [1] = 'Después de la jugada, cada carta',
                    [2] = 'anotada sin una mejora tiene',
                    [3] = '{C:green}#1# en #2#{} probabilidades de ser destruida',
                },
                ['unlock'] = {
                    [1] = 'Descubre todas las',
                    [2] = '{C:attention}ciegas jefe'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangram',
                ['text'] = {
                    [1] = 'Cuando un {C:attention}7{} es anotado,',
                    [2] = '{C:mult}+#1#{} multi multiplicado',
                    [3] = 'por la cantidad de {C:attention}7s{} anotados'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Dominó',
                ['text'] = {
                    [1] = 'Al {C:attention}adquirir{} o {C:attention}usar',
                    [2] = 'una carta de la tienda o',
                    [3] = 'paquete potenciador, adquiere {C:attention}2',
                    [4] = 'cartas adyacentes si es posible'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = 'Pistola de pegamento',
                ['text'] = {
                    [1] = 'Vende esta carta para',
                    [2] = '{C:attention}conectar{} #1# cartas',
                    [3] = 'seleccionadas'
                }
            },
            j_bunc_taped = {
                ['name'] = 'Comodines pegados',
                ['text'] = {
                    [1] = '{C:attention}Conecta{} todas',
                    [2] = 'las cartas jugadas en la primera',
                    [3] = 'mano anotada durante',
                    [4] = 'una {C:attention}ciega jefe{}'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = 'Bola de gomas elásticas',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi por cada {C:attention}conexión{}',
                    [2] = 'creada esta partida',
                    [3] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
                }
            },
            j_bunc_headache = {
                ['name'] = 'Dolor de cabeza',
                ['text'] = {
                    [1] = 'Crea una carta de {C:bunco_virtual_dark}poliminó{}',
                    [2] = 'por cada {C:attention}#1#{} cartas de juego',
                    [3] = 'destruidas {C:inactive}(Debe haber espacio)',
                    [4] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# cartas destruidas)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = 'Coleccionista de juegos',
                ['text'] = {
                    [1] = 'Gana {C:chips}+#1#{} fichas',
                    [2] = 'cuando un grupo conectado',
                    [3] = 'se {C:attention}saca{} a la mano',
                    [4] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
                }
            },
            j_bunc_jumper = {
                ['name'] = 'Saltarín',
                ['text'] = {
                    [1] = 'Gana {C:chips}+#1#{} fichas',
                    [2] = 'si la mano jugada',
                    [3] = 'contiene un {C:attention}Color{}',
                    [4] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = 'Estilófono',
                ['text'] = {
                    [1] = 'Las cartas otorgan {C:attention}X#1#{} multi',
                    [2] = 'de la {C:attention}categoría{}',
                    [3] = 'cuando anotan'
                }
            },
            j_bunc_kite_experiment = {
                ['name'] = 'Experimento con cometa',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de {C:attention}reanotar',
                    [2] = 'las {C:attention}cartas de cobre{} reanotadas',
                    [3] = 'una vez más'
                }
            },
            j_bunc_robot = {
                ['name'] = 'Robot',
                ['text'] = {
                    [1] = 'Este comodín gana {C:mult}+#1#{} multi',
                    [2] = 'cada vez que una {C:attention}carta de cobre',
                    [3] = 'es reanotada',
                    [4] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Comodín fanático',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} multi si la mano',
                    [2] = 'jugada contiene',
                    [3] = 'un {C:attention}Espectro'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Comodín chillón',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} fichas si la mano',
                    [2] = 'jugada contiene',
                    [3] = 'un {C:attention}Espectro'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Comodín envidioso',
                ['text'] = {
                    [1] = 'Las cartas jugadas',
                    [2] = 'del palo {C:bunc_fleurons}Florón{} otorgan',
                    [3] = ' multi {C:mult}+#1#{} cuando anotan'
                }
            },
            j_bunc_proud = {
                ['name'] = 'Comodín orgulloso',
                ['text'] = {
                    [1] = 'Las cartas jugadas',
                    [2] = 'del palo {C:bunc_halberds}Alabarda{} otorgan',
                    [3] = 'multi {C:mult}+#1#{} cuando anotan'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Metál de los deseos',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades para',
                    [2] = 'los {C:bunc_fleurons}Florones{} jugados de',
                    [3] = 'ganar {C:money}${} igual a las',
                    [4] = "fichas anotadas de la carta"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Inobtanio',
                ['text'] = {
                    [1] = 'Las cartas jugadas de',
                    [2] = '{C:bunc_halberds}Alabarda{} otorgan',
                    [3] = '{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi',
                    [4] = "cuando anotan"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'La dinastía',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi si la mano',
                    [2] = 'jugada contiene',
                    [3] = 'un {C:attention}Espectro'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Varita mágica',
                ['text'] = {
                    [1] = 'Este comodín obtiene {X:mult,C:white}X#1#{} multi',
                    [2] = 'por cada mano {C:attention}consecutiva{} jugada',
                    [3] = 'que contiene un {C:attention}Espectro{}',
                    [4] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Carambola',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de mejorar el nivel de la',
                    [2] = '{C:attention}mano de póker{} jugada si contiene un {C:attention}Espectro',
                    [3] = '{C:green}#1# en #3#{} probabilidades de destruir este comodín al final de la ronda',
                    [4] = 'si se jugó una mano que contiene un {C:attention}Espectro{} esta ronda'
                    -- TODO this joker is way too long
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Fondue',
                ['text'] = {
                    [1] = 'Las cartas anotadas en la',
                    [2] = '{C:attention}primera mano{} de la ronda son',
                    [3] = 'convertidas a {C:bunc_fleurons}Florones'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Miopía',
                ['text'] = {
                    [1] = '{C:spades}Espadas{} y {C:clubs}Tréboles{}',
                    [2] = 'cuentan como {C:bunc_halberds}Alabardas'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Astigmatismo',
                ['text'] = {
                    [1] = '{C:hearts}Corazones{} y {C:diamonds}Diamantes{}',
                    [2] = 'cuentan como {C:bunc_fleurons}Florones'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Roy G. Biv',
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de agregar',
                    [2] = 'edición {C:dark_edition}polícroma{}',
                    [3] = 'a una carta anotada al azar si',
                    [4] = 'la mano contiene un {C:attention}Espectro'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi por cada {C:bunco_exotic}carta exotica{}',
                    [2] = 'en tu {C:attention}baraja',
                    [3] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'La cerca',
                ['text'] = {
                    [1] = 'Jugar o descartar cuesta',
                    [2] = 'ambos mano y descarte'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = 'El paraguas',
                ['text'] = {
                    [1] = 'Después de jugar, da vuelta todas',
                    [2] = 'las cartas en mano boca abajo'
                }
            },
            bl_bunc_tine = {
                ['name'] = 'La punta',
                ['text'] = {
                [1] = 'Cada #1# es debilitado'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'El columpio',
                ['text'] = {
                    [1] = 'Después de jugar o descartar,',
                    [2] = 'voltea todas las cartas'
                }
            },
            bl_bunc_miser = {
                ['name'] = 'El tacaño',
                ['text'] = {
                    [1] = 'Omite la tienda después',
                    [2] = 'de derrotar esta ciega'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'La puerta',
                ['text'] = {
                    [1] = 'Las cartas no pueden',
                    [2] = 'ser deseleccionadas'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'La llama',
                ['text'] = {
                    [1] = 'Todas las cartas mejoradas',
                    [2] = 'se debilitan'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'La máscara',
                ['text'] = {
                    [1] = '#1# tiene las fichas',
                    [2] = 'y el multi base de #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'El baluarte',
                ['text'] = {
                    [1] = 'Jugar un(a) #1# descarta',
                    [2] = 'todas las cartas en mano'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'El montículo',
                ['text'] = {
                    [1] = 'Tener mas de $5',
                    [2] = 'debilita la primera mano sacada'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'La piedra',
                ['text'] = {
                    [1] = '+1X puntuación base',
                    [2] = 'por cada $10 en posesión'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'La arena',
                ['text'] = {
                    [1] = '+1X puntuación base',
                    [2] = 'por cada etiqueta en posesión'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'El filo',
                ['text'] = {
                    [1] = 'La primera vez que la puntuación excede',
                    [2] = '#1#',
                    [3] = 'hace que la mano jugada anote 0'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'La garra',
                ['text'] = {
                    [1] = 'Las cartas descartadas',
                    [2] = 'regresan a la baraja'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'El velo',
                ['text'] = {
                    [1] = 'Las cartas seleccionadas',
                    [2] = 'se voltean boca abajo'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'El cadáver',
                ['text'] = {
                    [1] = 'No se deben jugar cartas de figuras'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'El viento',
                ['text'] = {
                    [1] = 'El comodín más izquierdo',
                    [2] = 'se debilita'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'El príncipe',
                ['text'] = {
                    [1] = 'Todos los comodínes se debilitan',
                    [2] = 'hasta jugar la primera mano'
                }
            },
            bl_bunc_depths = {
                ['name'] = 'Las profundidades',
                ['text'] = {
                    [1] = 'Después de jugar, gana una etiqueta',
                    [2] = 'eterna, perecedera, o dispersante'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'El aberno',
                ['text'] = {
                    [1] = 'Después de jugar, gana una etiqueta',
                    [2] = 'estorbante, reactiva o de alquiler'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Corona cartujo',
                ['text'] = {
                    [1] = 'Todas las cartas de palo base',
                    [2] = 'de Espadas, Corazón, Trébol y Diamante',
                    [3] = 'se debilitan'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Tridente bermellón',
                ['text'] = {
                    [1] = 'Sin tiendas esta apuesta inicial'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Torre índigo',
                ['text'] = {
                    [1] = 'Las cartas no jugadas previamente',
                    [2] = 'esta apuesta inicial se debilitan'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Daga magenta',
                ['text'] = {
                    [1] = 'Descartar cartas las juega',
                    [2] = 'y subtrae el valor de la puntuación'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Escudo turquesa',
                ['text'] = {
                    [1] = 'La puntuación excediente en esta apuesta inicial',
                    [2] = "se agrega a la puntuación requerida de esta ciega"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Baraja hada',
                ['text'] = {
                    [1] = 'Despues de derrotar cada',
                    [2] = '{C:attention}ciega jefe{}, agrega #1#',
                    [3] = "{C:bunco_exotic,T:bunc_exotic_cards}#2#",
                    [4] = " al azar a tu baraja"
                },
                ['unlock'] = {
                    [1] = 'Juega {E:1,C:attention}5 palos diferentes',
                    [2] = 'en una sola mano'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Baraja digital',
                ['text'] = {
                    [1] = 'Las cartas de {C:bunco_virtual_dark}poliminó{} pueden',
                    [2] = 'aparecer en la tienda,',
                    [3] = "comienza con {C:bunco_virtual_dark,T:c_bunc_the_i}La I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Etiqueta de jefe',
                ['text'] = {
                    [1] = 'Otorga gratis un',
                    [2] = '{C:attention}paquete de ciegas'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Etiqueta doble',
                ['text'] = {
                    [1] = 'Otorga una copia de',
                    [2] = 'la {C:attention}etiqueta{} siguiente seleccionada',
                    [3] = 'a excepción de {s:0.6,C:attention}Etiquetas doble y triple{s:0.8}'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Etiqueta rompeciegas',
                ['text'] = {
                    [1] = 'Deshabilita la',
                    [2] = '{C:attention}ciega jefe{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = 'Etiqueta arcade',
                ['text'] = {
                    [1] = 'Otorga gratis un',
                    [2] = '{C:bunco_virtual_dark}paquete virtual mega'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Etiqueta triple',
                ['text'] = {
                    [1] = 'Otorga dos copias de',
                    [2] = 'la {C:attention}etiqueta{} siguiente seleccionada',
                    [3] = 'a excepción de {s:0.8,C:attention}Etiqueta triple{s:0.8}'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Etiqueta brillantina',
                ['text'] = {
                    [1] = 'El próximo comodín de la',
                    [2] = 'tienda de la edición base es gratis y',
                    [3] = 'se vuelve {C:dark_edition}brillantino'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Etiqueta fluorescente',
                ['text'] = {
                    [1] = 'El próximo comodín de la',
                    [2] = 'tienda de la edición base es gratis y',
                    [3] = 'se vuelve {C:dark_edition}fluorescente'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Etiqueta de fichas',
                ['text'] = {
                [1] = '{C:chips}+#1#{} fichas en la siguiente mano'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Etiqueta multi',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} multi en la siguiente mano',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Etiqueta megamulti',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} multi en la siguiente mano',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Etiqueta de ultrafichas',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} fichas en la siguiente mano'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Etiqueta filigrana',
                ['text'] = {
                    [1] = 'El proximo {C:attention}paquete estándar{} abierto',
                    [2] = 'tiene solo {C:bunco_exotic}cartas exoticas'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Etiqueta eterna',
                ['text'] = {
                    [1] = 'El próximo comodín de la tienda',
                    [2] = 'obtendrá un sticker {C:attention}eterno{}'
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Etiqueta perecedera',
                ['text'] = {
                    [1] = 'El próximo comodín de la tienda',
                    [2] = 'obtendrá un sticker {C:attention}perecedero{}'
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Etiqueta dispersante',
                ['text'] = {
                    [1] = 'El próximo comodín de la tienda',
                    [2] = 'obtendrá un sticker {C:attention}dispersante{}'
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Etiqueta estorbante',
                ['text'] = {
                    [1] = 'El próximo comodín de la tienda',
                    [2] = 'obtendrá un sticker {C:attention}estorbante{}'
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Etiqueta reactiva',
                ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}reactivo{}'
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Etiqueta de alquiler',
                ['text'] = {
                    [1] = 'El próximo comodín de la tienda',
                    [2] = 'obtendrá un sticker de {C:attention}alquiler{}'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Brillantina',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} fichas'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Fluorescente',
                ['text'] = {
                    [1] = 'No puede voltearse, debilitarse',
                    [2] = 'o ser forzado a seleccionarse'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Laminación',
                ['text'] = {
                    [1] = 'Los consumibles en',
                    [2] = '{C:attention}paquetes potenciadores{} pueden',
                    [3] = 'aparecer con {C:dark_edition}edición'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Supercapa',
                ['text'] = {
                    [1] = 'Todos los consumibles en',
                    [2] = '{C:attention}paquetes potenciadores{} aparecen',
                    [3] = 'con {C:dark_edition}ediciones'
                },
                ['unlock'] = {
                    [1] = 'Usa {C:attention,E:1}#1#{} consumibles',
                    [2] = 'con {C:attention,E:1}ediciones',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Cortacerco',
                ['text'] = {
                    [1] = "Reduce la puntuación de la ciega",
                    [2] = 'por {C:attention}#1#%{} con cada mano jugada'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Motosierra',
                ['text'] = {
                    [1] = 'Todas las puntuaciones requeridas',
                    [2] = 'son reducidas por {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Reduce la puntuacion de ciega usando",
                    [2] = 'Cortacerco',
                    [3] = 'un total de {C:attention,E:1}#1#{} veces',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Vasos y bolas",
                ['text'] = {
                    [1] = '{C:attention}+1{} ranura de paquete potenciador',
                    [2] = 'disponible en la tienda'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Juego de bolas',
                ['text'] = {
                    [1] = 'Renueva los {C:attention}contenidos',
                    [2] = 'de los paquetes potenciadores',
                    [3] = '{C:attention}1{} vez por paquete'
                },
                ['unlock'] = {
                    [1] = 'Abre {E:1,C:attention}#1#',
                    [2] = 'paquetes potenciadores',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = "Disfraz",
                ['text'] = {
                    [1] = 'Los {C:attention}paquetes de ciegas{} pueden',
                    [2] = 'aparecer en la tienda'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Mascarada',
                ['text'] = {
                    [1] = 'Todos los {C:attention}paquetes de ciegas{} en',
                    [2] = 'la tienda son gratis'
                },
                ['unlock'] = {
                    [1] = 'Reemplaza {E:1,C:attention}#1#{}',
                    [2] = 'ciegas con ciegas',
                    [3] = 'de un paquete de ciegas',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = "Riñonera",
                ['text'] = {
                    [1] = '{C:green}#1# en #2#{} probabilidades de',
                    [2] = 'obtener una {C:attention}etiqueta doble',
                    [3] = 'cada vez que una ciega',
                    [4] = 'es {C:attention}omitida'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = 'Coleccionista',
                ['text'] = {
                    [1] = 'Todas las {C:attention}etiquetas doble{} nuevas',
                    [2] = 'aparecen como {C:attention}etiquetas triple'
                },
                ['unlock'] = {
                    [1] = 'Omite un total de',
                    [2] = '{E:1,C:attention}#1#{} ciegas',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = 'Máquina de arcade',
                ['text'] = {
                    [1] = 'Los {C:bunco_virtual_dark}paquetes virtuales',
                    [2] = 'aparecen {C:attention}4X{} mas'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = 'Las cartas de {C:bunco_virtual_dark}poliminó{} permiten',
                    [2] = 'conectar {C:attention}una carta{} más',
                    [3] = '{s:0.6,C:inactive}La carta extra puede ser de cualquier propiedad'
                },
                ['unlock'] = {
                    [1] = 'Crea un total de',
                    [2] = '{E:1,C:attention}#1#{} grupos conectados',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
        Enhanced = {
            m_bunc_copper = {
                ['name'] = 'Carta de cobre',
                ['text'] = {
                    [1] = 'Reanota si es jugada',
                    [2] = '{C:attention}adyacente{} a otra',
                    [3] = 'carta de cobre anotada'
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Pozo cian',
                ['text'] = {
                    [1] = 'La tienda puede tener comodines {C:attention}dispersantes{}',
                    [2] = '{C:inactive,s:0.8}(Destruye un comodín al azar al venderse o destruirse)'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Pozo rosa',
                ['text'] = {
                    [1] = 'La tienda puede tener comodines {C:attention}estorbantes{}',
                    [2] = '{C:inactive,s:0.8}(Se queda en su lugar hasta el fin de la ronda despues de ser vendido)'
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Pozo magenta',
                ['text'] = {
                    [1] = 'La tienda puede tener comodines {C:attention}reactivos{}',
                    [2] = '{C:inactive,s:0.8}(Se debilita si no se omite ninguna ciega esta apuesta inicial)'
                }
            }
        }
    }
}