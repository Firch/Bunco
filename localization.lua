return {
    dictionary = {
        ['en-us'] = {

            -- Config values

            colorful_finishers = 'Colorful Final Blinds',
            high_quality_shaders = 'High Quality Shaders',
            double_lovers = 'Double Lovers',
            jokerlike_consumable_editions = 'Editions in Consumables Slot',
            fixed_badges = 'Fixed Badges',
            fixed_sprites = 'Fixed Sprites',
            gameplay_reworks = 'Gameplay Reworks',

            requires_restart = '(Requires game restart)',

            -- Miscellaneous

            copied = 'Copied!',
            nothing = 'Nothing',
            chips = 'Chips',
            loop = 'Loop!',
            chance = 'Chance',
            word_and = 'and',
            debuffed = 'Debuffed!',
            pew = 'Pew!',
            declined = 'Declined...',
            accepted = 'Accepted!',
            ouch = 'OUCH!',
            mysterious_tarot = 'Tarot?',
            mysterious_polymino = 'Polymino?',
            most_played_rank = '(most played rank)',
            least_played_hand = '(least played hand)',
            blade = '(1.5X blind score)',
            exceeded_score = 'Exceeded the limit!',
            temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} extra chips this round'}},
            linked_cards = {['text'] = {[1] = '{C:attention}Linked{} in this group:'}},
            drawn_linked_cards = {['text'] = {[1] = '{C:attention}Linked{} in drawn group'}}
        },
        ['es_419'] = {

            -- Config values

            colorful_finishers = 'Ciegas Finales Coloridas',
            high_quality_shaders = 'Sombreadores de Alta Definición',
            double_lovers = 'Doble Enamorados',
            jokerlike_consumable_editions = 'Ediciones en Ranura de Consumibles',
            fixed_badges = 'Insignias Reparadas',
            fixed_sprites = 'Sprites Reparados',
            gameplay_reworks = 'Cambios de Jugabilidad',

            requires_restart = '(Requiere un reinicio del juego)',

            -- Miscellaneous

            copied = '¡Se copió!',
            nothing = 'Nada',
            chips = 'Fichas',
            loop = '¡Repetido!',
            chance = 'Probabilidades',
            word_and = 'y',
            debuffed = '¡Debilitado!',
            pew = '¡Bam!',
            declined = 'Rechazado...',
            accepted = '¡Aceptado!',
            ouch = '¡OUCH!',
            mysterious_tarot = '¿Tarot?',
            mysterious_polymino = '¿Poliminó?',
            most_played_rank = '(categoría mas jugada)',
            least_played_hand = '(mano menos jugada)',
            blade = '(1.5X puntuación de la ciega)',
            exceeded_score = '¡Excedió el límite!',
            temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} fichas extra esta ronda'}},
            linked_cards = {['text'] = {[1] = '{C:attention}Conectada{} en este grupo:'}},
            drawn_linked_cards = {['text'] = {[1] = '{C:attention}Conectada{} en grupo en mano'}}
        },
    },

    -- Suits

    fleurons = {
        ['en-us'] = {
            singular = 'Fleuron',
            plural = 'Fleurons',
        },
        ['es_419'] = {
            singular = 'Florón',
            plural = 'Florones',
        }
    },
    halberds = {
        ['en-us'] = {
            singular = 'Halberd',
            plural = 'Halberds',
        },
        ['es_419'] = {
            singular = 'Alabarda',
            plural = 'Alabardas',
        }
    },

    -- Exotic cards

    exotic_cards = {
        ['en-us'] = {
            ['name'] = 'Exotic cards',
            ['text'] = {
                [1] = 'Cards with',
                [2] = '{C:bunc_fleurons}Fleuron{} or {C:bunc_halberds}Halberd{} suit'
            }
        },
        ['es_419'] = {
            ['name'] = 'Cartas exoticas',
            ['text'] = {
                [1] = 'Cartas con palo',
                [2] = 'de {C:bunc_fleurons}Florón{} o {C:bunc_halberds}Alabarda{}'
            }
        }
    },

    -- Poker hands

    spectrum = {
        ['en-us'] = {
            name = 'Spectrum',
            description = {
                '5 cards with different suits'
            }
        },
        ['es_419'] = {
            name = 'Espectro',
            description = {
                '5 cartas con palos diferentes'
            }
        }
    },
    straight_spectrum = {
        ['en-us'] = {
            name = 'Straight Spectrum',
            description = {
                '5 cards in a row (consecutive ranks),',
                'each with a different suit'
            },
            extra = 'Royal Spectrum',
        },
        ['es_419'] = {
            name = 'Escalera espectral',
            description = {
                '5 cartas seguidas (valores consecutivos),',
                'cada una con palo diferente'
            },
            extra = 'Espectro real',
        }
    },
    spectrum_house = {
        ['en-us'] = {
            name = 'Spectrum House',
            description = {
                'A Three of a Kind and a Pair with',
                'each card having a different suit'
            }
        },
        ['es_419'] = {
            name = 'Full de espectro',
            description = {
                'Una tercia y un par con',
                'cada carta de un palo diferente'
            }
        }
    },
    spectrum_five = {
        ['en-us'] = {
            name = 'Spectrum Five',
            description = {
                '5 cards with the same rank,',
                'each with a different suit'
            },
        },
        ['es_419'] = {
            name = 'Cinco de espectro',
            description = {
                '5 cartas con la misma categoría,',
                'cada una con palo diferente'
            },
        }
    },
    deal = {
        ['en-us'] = {
            name = 'Deal',
            description = {
                '5 ranks picked',
                'by Registration Plate'
            },
        },
        ['es_419'] = {
            name = 'Trato',
            description = {
                '5 categorías elegidas',
                'por Matrícula'
            },
        }
    },

    -- Consumable Types

    polymino = {
        ['en-us'] = {
            ['name'] = 'Polymino',
            ['collection'] = 'Polymino Cards',
            ['undiscovered'] = {
                ['name'] = 'Not Discovered',
                ['text'] = {
                    [1] = 'Purchase or use',
                    [2] = 'this card in an',
                    [3] = 'unseeded run to',
                    [4] = 'learn what it does'
                }
            }
        },
        ['es_419'] = {
            ['name'] = 'Poliminó',
            ['collection'] = 'Cartas de poliminó',
            ['undiscovered'] = {
                ['name'] = 'No se descubrió',
                ['text'] = {
                    [1] = 'Compra o usa',
                    [2] = 'esta carta',
                    [3] = 'en una partida sin códigos',
                    [4] = 'para saber lo que hace'
                }
            }
        }
    },

    -- Consumables

    -- Tarots

    sky = {
        ['en-us'] = {
            ['name'] = 'The Sky',
            ['text'] = {
                [1] = 'Converts up to',
                [2] = '{C:attention}#1#{} selected cards',
                [3] = 'to {C:bunc_fleurons}Fleurons{}',
            }
        },
        ['es_419'] = {
            ['name'] = 'El cielo',
            ['text'] = {
                [1] = 'Convierte hasta',
                [2] = '{C:attention}#1#{} cartas seleccionadas',
                [3] = 'en {C:bunc_fleurons}Florones{}',
            }
        }
    },
    abyss = {
        ['en-us'] = {
            ['name'] = 'The Abyss',
            ['text'] = {
                [1] = 'Converts up to',
                [2] = '{C:attention}#1#{} selected cards',
                [3] = 'to {C:bunc_halberds}Halberds{}',
            }
        },
        ['es_419'] = {
            ['name'] = 'El abismo',
            ['text'] = {
                [1] = 'Convierte hasta',
                [2] = '{C:attention}#1#{} cartas seleccionadas',
                [3] = 'en {C:bunc_halberds}Alabardas{}',
            }
        }
    },

    -- Planets

    quaoar = {
        ['en-us'] = {
            name = 'Quaoar'
        }
    },
    haumea = {
        ['en-us'] = {
            name = 'Haumea'
        }
    },
    sedna = {
        ['en-us'] = {
            name = 'Sedna'
        }
    },
    makemake = {
        ['en-us'] = {
            name = 'Makemake'
        }
    },

    -- Spectrals

    cleanse = {
        ['en-us'] = {
            ['name'] = 'Cleanse',
            ['text'] = {
                [1] = 'Add {C:dark_edition}Fluorescent{} to',
                [2] = '{C:attention}#1#{} selected cards in hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'Purificar',
            ['text'] = {
                [1] = 'Agrega {C:dark_edition}fluorescencia{} a',
                [2] = '{C:attention}#1#{} cartas seleccionadas de tu mano'
            }
        }
    },

    -- Polyminoes

    the_i = {
        ['en-us'] = {
            ['name'] = 'The I',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'that share the {C:attention}same rank or suit'
            }
        },
        ['es_419'] = {
            ['name'] = 'La I',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'que comparten el {C:attention}mismo palo o categoría'
            }
        }
    },
    the_o = {
        ['en-us'] = {
            ['name'] = 'The O',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where 2 cards share the {C:attention}same property',
                [3] = '{C:inactive}(rank or suit){} and the other 2 cards',
                [4] = 'share {C:attention}different type{} of the {C:attention}same property'
            }
        },
        ['es_419'] = {
            ['name'] = 'La O',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde 2 cartas comparten una {C:attention}misma propiedad',
                [3] = '{C:inactive}(categoría o palo){} y las otras 2 cartas',
                [4] = 'comparten {C:attention}un tipo diferente{} de la {C:attention}misma propiedad'
            }
        },
    },
    the_t = {
        ['en-us'] = {
            ['name'] = 'The T',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where 3 cards share the {C:attention}same property',
                [3] = '{C:inactive}(rank or suit){} and the other card that',
                [4] = '{C:attention}does not share{} the {C:attention}same property{}',
                [5] = 'with the other cards'
            }
        },
        ['es_419'] = {
            ['name'] = 'La T',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde 3 cartas comparten la {C:attention}misma propiedad',
                [3] = '{C:inactive}(categoría o palo){} y la otra carta',
                [4] = '{C:attention}no comparte{} la {C:attention}misma propiedad{}',
                [5] = 'con las otras cartas'
            }
        }
    },
    the_s = {
        ['en-us'] = {
            ['name'] = 'The S',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where {C:attention}2 groups{} of 2 cards share',
                [3] = 'the {C:attention}same rank{} within each group, with one',
                [4] = 'card from each group sharing a {C:attention}common suit'
            }
        },
        ['es_419'] = {
            ['name'] = 'La S',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde {C:attention}2 grupos{} de 2 cartas comparten',
                [3] = 'la {C:attention}misma categoría{} dentro de cada grupo, con una',
                [4] = 'carta de cada grupo que comparten un {C:attention}mismo palo'
            }
        }
    },
    the_z = {
        ['en-us'] = {
            ['name'] = 'The Z',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where {C:attention}2 groups{} of 2 cards share',
                [3] = 'the {C:attention}same suit{} within each group, with one',
                [4] = 'card from each group sharing a {C:attention}common rank'
            }
        },
        ['es_419'] = {
            ['name'] = 'La Z',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde {C:attention}2 grupos{} de 2 cartas comparten',
                [3] = 'el {C:attention}mismo palo{} dentro de cada grupo, con una',
                [4] = 'carta de cada grupo que comparten una {C:attention}misma categoría'
            }
        },
    },
    the_j = {
        ['en-us'] = {
            ['name'] = 'The J',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where 3 cards share the {C:attention}same rank',
                [3] = 'and the other card that shares',
                [4] = 'a {C:attention}common suit{} while',
                [5] = 'not sharing the same rank'
            }
        },
        ['es_419'] = {
            ['name'] = 'La J',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde 3 cartas comparten la {C:attention}misma categoría',
                [3] = 'y la otra carta comparte',
                [4] = 'un {C:attention}mismo palo{} sin',
                [5] = 'compartir la misma categoria'
            }
        }
    },
    the_l = {
        ['en-us'] = {
            ['name'] = 'The L',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where 3 cards share the {C:attention}same suit',
                [3] = 'and the other card that shares',
                [4] = 'a {C:attention}common rank{} while',
                [5] = 'not sharing the same suit'
            }
        },
        ['es_419'] = {
            ['name'] = 'La L',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde 3 cartas comparten el {C:attention}mismo palo',
                [3] = 'y la otra carta comparte',
                [4] = 'una {C:attention}misma categoría{} sin',
                [5] = 'compartir el mismo palo'
            }
        }
    },
    the_slash = {
        ['en-us'] = {
            ['name'] = 'The /',
            ['text'] = {
                [1] = '{C:attention}Link together{} 4 selected cards',
                [2] = 'where all the cards have a',
                [3] = '{C:attention}different property{} {C:inactive}(rank and suit)'
            }
        },
        ['es_419'] = {
            ['name'] = 'El /',
            ['text'] = {
                [1] = '{C:attention}Conecta{} 4 cartas seleccionadas',
                [2] = 'donde todas las cartas tienen una',
                [3] = '{C:attention}propiedad diferente{} {C:inactive}(rank and suit)'
            }
        }
    },
    the_8 = {
        ['en-us'] = {
            ['name'] = 'The 8',
            ['text'] = {
                [1] = '{C:attention}Link together{} all',
                [2] = 'unlinked cards in hand',
            }
        },
        ['es_419'] = {
            ['name'] = 'El 8',
            ['text'] = {
                [1] = '{C:attention}Conecta{} todas',
                [2] = 'las cartas sin conectar de tu mano',
            }
        }
    },

    -- Reworked Jokers

    luchador = {
        ['en-us'] = {
            ['name'] = 'Luchador',
            ['text'] = {
                [1] = 'Sell this card to',
                [2] = 'create a free',
                [3] = '{C:attention}Breaking Tag'
            }
        },
        ['es_419'] = {
            ['name'] = 'Luchador',
            ['text'] = {
                [1] = 'Vende esta carta',
                [2] = 'para crear 1 {C:attention}Etiqueta rompeciegas',
                [3] = 'gratis'
            }
        }
    },
    red_card = {
        ['en-us'] = {
            ['name'] = 'Red Card',
            ['text'] = {
                [1] = 'This Joker gains {C:red}+#1#{} Mult',
                [2] = 'per skipped choice',
                [3] = 'in {C:attention}Booster Pack{}',
                [4] = '{C:inactive}(Currently {C:red}+#2#{C:inactive} Mult)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Carta roja',
            ['text'] = {
                [1] = 'Este comodín obtiene {C:red}+#1#{} multi',
                [2] = 'por cada elección omitida',
                [3] = 'en un {C:attention}paquete potenciador{}',
                [4] = '{C:inactive}(Actual {C:red}+#2#{C:inactive} multi)'
            }
        }
    },

    -- Jokers

    cassette = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Casete',
            ['text'] = {
                [1] = 'Al descartar, da vuelta al comodín al otro lado',
                [2] = '{C:attention}Lado A:{} Las cartas con palo claro',
                [3] = 'otorgan {C:chips}+#1#{} fichas cuando anotan',
                [4] = '{C:attention}Lado B:{} Las cartas con palo oscuro',
                [5] = 'otorgan {C:mult}+#2#{} multi cuando anotan'
            }
        }
    },
    mosaic = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    voxel = {
        ['en-us'] = {
            ['name'] = 'Voxel Joker',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult, {X:mult,C:white}-X#2#{} Mult for each',
                [2] = '{C:attention}Enhanced card{} in your {C:attention}full deck{}',
                [3] = '{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)'
            },
            ['unlock'] = {
                [1] = 'Have at least {C:attention}10',
                [2] = '{E:1,C:attention}Enhanced{} cards in',
                [3] = 'your deck'
            }
        },
        ['es_419'] = {
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
        }
    },
    crop_circles = {
        ['en-us'] = {
            ['name'] = 'Crop Circles',
            ['text'] = {
                [1] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                [2] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                [3] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
            }
        },
        ['es_419'] = {
            ['name'] = 'Agroglifos',
            ['text'] = {
                [1] = 'El palo base de {C:clubs}Tréboles{} otorga {C:mult}+3{} multi,',
                [2] = 'Los {C:attention}8s{} otorgan {C:mult}+2{} multi,',
                [3] = 'Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} multi'
            }
        }
    },
    crop_circles_exotic = {
        ['en-us'] = {
            ['name'] = 'Crop Circles',
            ['text'] = {
                [1] = 'Base suit {C:bunc_fleurons}Fleurons{} give {C:mult}+4{} Mult,',
                [2] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                [3] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                [4] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
            }
        },
        ['es_419'] = {
            ['name'] = 'Agroglifos',
            ['text'] = {
                [1] = 'El palo base de {C:bunc_fleurons}Florones{} otorga {C:mult}+4{} multi,',
                [2] = 'El palo base de {C:clubs}Tréboles{} otorga {C:mult}+3{} multi,',
                [3] = 'Los {C:attention}8s{} otorgan {C:mult}+2{} multi,',
                [4] = 'Las {C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} otorgan {C:mult}+1{} multi'
            }
        }
    },
    xray = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    dread = {
        ['en-us'] = {
            ['name'] = 'Dread',
            ['text'] = {
                [1] = 'After scoring your {C:attention}last{} {C:blue}hand{},',
                [2] = 'upgrade it by {C:attention}2 levels{}',
                [3] = 'and {C:attention}destroy{} scored cards',
                [4] = '{C:red}Lose{} all {C:attention}gained levels{} if you remove this Joker'
            },
            ['unlock'] = {
                [1] = 'Reduce your deck',
                [2] = 'by at least {E:1,C:attention}10{} cards',
                [3] = 'in one round'
            }
        },
        ['es_419'] = {
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
        }
    },
    prehistoric = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    linocut = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Comodín linograbado',
            ['text'] = {
                [1] = 'Cuando juegas exactamente {C:attention}2{} cartas',
                [2] = 'que forman un {C:attention}Par{},',
                [3] = "convierte el palo de la carta {C:attention}izquierda{}",
                [4] = "en el palo de la carta {C:attention}derecha{}",
                [5] = '{C:inactive}(Arrastra para acomodar)'
            }
        }
    },
    ghost_print = {
        ['en-us'] = {
            ['name'] = 'Ghost Print',
            ['text'] = {
                [1] = 'Gives Chips and Mult',
                [2] = 'from last {C:attention}hand type{} played',
                [3] = '{C:inactive}(Last poker hand: #1#)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Impresión fantasma',
            ['text'] = {
                [1] = 'Otorga fichas y multi',
                [2] = 'de el ultimo {C:attention}tipo de mano{} jugado',
                [3] = '{C:inactive}(Ultima mano: #1#)'
            }
        }
    },
    loan_shark = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Usurero',
            ['text'] = {
                [1] = 'Gana {C:money}$#1#',
                [2] = 'al adquirirse...'
            },
            ['unlock'] = {
                [1] = 'Gasta al menos {E:1,C:attention}$100',
                [2] = 'durante una sola ronda'
            }
        }
    },
    loan_shark_full = {
        ['en-us'] = {
            ['name'] = 'Loan Shark',
            ['text'] = {
                [1] = 'Gain {C:money}$#1#{} when acquired,',
                [2] = 'set sell price to {C:money}$-100'
            }
        },
        ['es_419'] = {
            ['name'] = 'Usurero',
            ['text'] = {
                [1] = 'Gana {C:money}$#1#{} al adquirirse,',
                [2] = 'el precio de venta se vuelve {C:money}$-100'
            }
        }
    },
    basement = {
        ['en-us'] = {
            ['name'] = 'Basement Joker',
            ['text'] = {
                [1] = 'When {C:attention}Boss Blind{} is defeated,',
                [2] = 'create a {C:spectral}Spectral{} card',
                [3] = '{C:inactive}(Must have room)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín de sótano',
            ['text'] = {
                [1] = 'Cuando la {C:attention}ciega jefe{} es derrotada,',
                [2] = 'crea una carta {C:spectral}espectral{}',
                [3] = '{C:inactive}(Debe haber espacio)'
            }
        }
    },
    shepherd = {
        ['en-us'] = {
            ['name'] = 'Shepherd Joker',
            ['text'] = {
                [1] = 'This Joker gains {C:chips}+#1#{} Chips',
                [2] = 'when played hand contains a {C:attention}Pair',
                [3] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín pastor',
            ['text'] = {
                [1] = 'Este comodín obtiene {C:chips}+#1#{} fichas',
                [2] = 'cuando la mano jugada contiene un {C:attention}Par',
                [3] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
            }
        }
    },
    knight = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    jmjb = {
        ['en-us'] = {
            ['name'] = 'Joker Man & Jester Boy Trading Card No. 54',
            ['text'] = {
                [1] = '{C:attention}Standard Packs{} contain',
                [2] = 'only {C:attention}Enhanced cards{}'
            },
            ['unlock'] = {
                [1] = 'Open {E:1,C:attention}50',
                [2] = 'Booster Packs'
            }
        },
        ['es_419'] = {
            ['name'] = 'Tarjeta coleccionable de Comodín Man y el Chico Bufón No. 54',
            ['text'] = {
                [1] = 'Los {C:attention}paquetes estándar{} contienen',
                [2] = 'solo {C:attention}cartas mejoradas{}'
            },
            ['unlock'] = {
                [1] = 'Abre {E:1,C:attention}50',
                [2] = 'paquetes potenciadores'
            }
        }
    },
    dogs_playing_poker = {
        ['en-us'] = {
            ['name'] = 'Dogs Playing Poker',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult if every scored',
                [2] = 'rank is {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5'
            }
        },
        ['es_419'] = {
            ['name'] = 'Perros jugando póker',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} multi si cada categoría',
                [2] = 'anotada es {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, o {C:attention}5'
            }
        }
    },
    righthook = {
        ['en-us'] = {
            ['name'] = 'Righthook Joker',
            ['text'] = {
                [1] = 'Retrigger rightmost scored card',
                [2] = 'one time per remaining {C:blue}hand{}',
                -- TODO unintutive behavior, a hand is deducted when you play a hand
            },
            ['unlock'] = {
                [1] = 'Retrigger a played',
                [2] = 'card at least',
                [3] = '{E:1,C:attention}5 times{}'
            }
        },
        ['es_419'] = {
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
        }
    },
    fiendish = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    carnival = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Carnaval',
            ['text'] = {
                [1] = 'Después de derrotar a la {C:attention}ciega jefe{},',
                [2] = '{C:attention}destruye{} un comodín al azar para',
                [3] = 'regresar a una apuesta inicial anterior, la proxima vez',
                [4] = 'solo funciona en una apuesta inicial mayor'
            },
            ['unlock'] = {
                [1] = 'Alcanza un nivel de',
                [2] = 'apuesta inicial {E:1,C:attention}0'
            }
        }
    },
    sledgehammer = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    doorhanger = {
        ['en-us'] = {
            ['name'] = 'Doorhanger',
            ['text'] = {
                [1] = '{C:blue}Common{} Jokers do not appear',
                [2] = '{s:0.8}Different rarities appear instead'
            },
            ['unlock'] = {
                [1] = 'Win a run without',
                [2] = 'ever having',
                [3] = '{C:attention}Common{} Jokers' -- Sorry, no E:1! It doesn't work
            }
        },
        ['es_419'] = {
            ['name'] = 'Perchero de puerta',
            ['text'] = {
                [1] = 'Los comodines {C:blue}comunes{} no aparecen',
                [2] = '{s:0.8}Aparecen diferentes rarezas en vez'
            },
            ['unlock'] = {
                [1] = 'Gana una partida sin',
                [2] = 'haber tenido',
                [3] = 'comodines {C:attention}comunes{}'
            }
        }
    },
    fingerprints = {
        ['en-us'] = {
            ['name'] = 'Fingerprints',
            ['text'] = {
                [1] = 'Scored cards in {C:attention}winning hand{}',
                [2] = 'gain {C:chips}+#1#{} Chips for',
                [3] = 'next round only',
            }
        },
        ['es_419'] = {
            ['name'] = 'Huellas dactilares',
            ['text'] = {
                [1] = 'Las cartas anotadas en la {C:attention}mano ganadora{}',
                [2] = 'obtienen {C:chips}+#1#{} fichas solo',
                [3] = 'por la siguiente ronda',
            }
        }
    },
    zero_shapiro = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'El cero',
            ['text'] = {
                [1] = 'Este comodín obtiene {C:attention}#1#X{} a',
                [2] = 'las {C:green,E:1,S:1.1}probabilidades{} {C:attention}esta ronda{} cuando una',
                [3] = 'carta con categoría {C:attention}ninguna{}, {C:attention}de cero{}, o {C:attention}no-contable{}',
                [4] = 'anota {C:inactive}(K, Q, J, 0, sin categoria)',
                [5] = '{C:inactive}(Actual {C:attention}X#2#{C:inactive} a las {C:green,E:1,S:1.1}probabilidades{C:inactive})'
            }
        }
    },
    nil_bill = {
        ['en-us'] = {
            ['name'] = 'Nil Bill',
            ['text'] = {
                [1] = '{C:attention}Debuffed{} cards earn',
                [2] = '{C:money}$#1#{} when scored'
            }
        },
        ['es_419'] = {
            ['name'] = 'El nulo',
            ['text'] = {
                [1] = 'Las cartas {C:attention}debilitadas{} ganan',
                [2] = '{C:money}$#1#{} cuando anotan'
            }
        }
    },
    bierdeckel = {
        ['en-us'] = {
            ['name'] = 'Bierdeckel',
            ['text'] = {
                [1] = 'Cards in hand gain',
                [2] = '{C:chips}+#1#{} Chips this round',
                [3] = 'after play or discard'
            }
        },
        ['es_419'] = {
            ['name'] = 'Posavasos',
            ['text'] = {
                [1] = 'Las cartas en la mano obtienen',
                [2] = '{C:chips}+#1#{} fichas esta ronda',
                [3] = 'al jugar o descartar'
            }
        }
    },
    registration_plate = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    slothful = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    neon = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    gameplan = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    conquest = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Conquista',
            ['text'] = {
                [1] = '{C:chips}+#1#{} fichas,',
                [2] = '{C:red}debilita{} un comodín al azar',
                [3] = 'cuando la {C:attention}ciega{} es seleccionada'
            },
            ['unlock'] = {
                [1] = 'Derrota al {E:1,C:attention}Corazón Carmesí',
                [2] = 'sin deshabilitarlo'
            }
        }
    },
    hierarchy_of_needs = {
        ['en-us'] = {
            ['name'] = 'Hierarchy of Needs',
            ['text'] = {
                [1] = '{C:mult}+#1#{} Mult per',
                -- TODO do wilds count, or base suit only?
                [2] = '{C:attention}2-Ace{} of the same suit',
                [3] = 'in your {C:attention}full deck',
                [4] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Jerarquía de necesidades',
            ['text'] = {
                [1] = '{C:mult}+#1#{} multi por cada',
                [2] = '{C:attention}2-As{} del mismo palo',
                [3] = 'en tu {C:attention}baraja',
                [4] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
            }
        }
    },
    dwarven = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    aristocrat = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    metallurgist = {
        ['en-us'] = {
            ['name'] = 'Metallurgist',
            ['text'] = {
                [1] = '{C:attention}Gold Cards{} give {C:mult}+#1#{} Mult',
                [2] = 'while held in hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'Metalúrgico',
            ['text'] = {
                [1] = 'Las {C:attention}cartas de oro{} otorgan {C:mult}+#1#{} multi',
                [2] = 'mientras están en la mano'
            }
        }
    },
    juggalo = {
        ['en-us'] = {
            ['name'] = 'Juggalo',
            ['text'] = {
                [1] = 'Adds {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                [2] = '{C:dark_edition}Polychrome{}, or {C:dark_edition}Glitter{} edition',
                [3] = 'to a random {C:attention}consumable{}',
                [4] = 'when {C:attention}Blind{} is selected'
            },
            ['unlock'] = {
                [1] = 'Use {C:attention,E:1}10{} consumables',
                [2] = 'with {C:attention,E:1}Editions'
            }
        },
        ['es_419'] = {
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
        }
    },
    head_in_the_clouds = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    headshot = {
        ['en-us'] = {
            ['name'] = 'Headshot',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult if played hand',
                [2] = 'contains only a single',
                [3] = 'scoring {C:attention}face card{}'
            }
        },
        ['es_419'] = {
            ['name'] = 'Tiro a la cabeza',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} multi si la mano jugada',
                [2] = 'contiene solamente una sola',
                [3] = '{C:attention}carta de figura{} anotante'
            }
        }
    },
    trigger_finger = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    hopscotch = {
        ['en-us'] = {
            ['name'] = 'Hopscotch',
            ['text'] = {
                [1] = 'Gain {C:red}+#1#{} discard',
                [2] = 'if played hand',
                [3] = 'contains a {C:attention}Straight{}'
            }
        },
        ['es_419'] = {
            ['name'] = 'Rayuela',
            ['text'] = {
                [1] = 'Gana {C:red}+#1#{} descarte',
                [2] = 'si la mano jugada',
                [3] = 'contiene una {C:attention}Escalera{}'
            }
        }
    },
    pawn = {
        ['en-us'] = {
            ['name'] = 'Pawn',
            ['text'] = {
                [1] = 'Cards of the {C:attention}lowest{}',
                [2] = 'rank in your full deck',
                [3] = '{C:attention}increase in rank{} when scored'
                -- TODO "when scored" is only accurate
                -- if the card's rank changes during scoring
            }
        },
        ['es_419'] = {
            ['name'] = 'Peón',
            ['text'] = {
                [1] = 'Cartas de la categoría',
                [2] = ' {C:attention}mas baja{} en tu baraja',
                [3] = '{C:attention}incrementan en categoría{} cuando anotan'
            }
        }
    },
    puzzle_board = {
        ['en-us'] = {
            ['name'] = 'Puzzle Board',
            ['text'] = {
                [1] = 'When {C:tarot}Tarot{} card is used,',
                [2] = '{C:green}#1# in #2#{} chance to add',
                [3] = '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or',
                [4] = '{C:dark_edition}Polychrome{} edition to a random',
                [5] = 'selected playing card'
            }
        },
        ['es_419'] = {
            ['name'] = 'Panel de adivinanzas',
            ['text'] = {
                [1] = 'Cuando se usa una carta de {C:tarot}tarot{},',
                [2] = '{C:green}#1# en #2#{} probabilidades de agregar',
                [3] = 'edición {C:dark_edition}laminada{}, {C:dark_edition}holográfica{}, o',
                [4] = '{C:dark_edition}polícroma{} al azar',
                [5] = ' a una carta seleccionada'
            }
        }
    },
    vandalism = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    protester = {
        ['en-us'] = {
            ['name'] = 'Protester',
            ['text'] = {
                [1] = 'Adds {C:attention}#1#X{} the highest rank',
                [2] = 'discarded this round to Chips',
                [3] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Protestante',
            ['text'] = {
                [1] = 'Agrega {C:attention}#1#X{} la categoría mas alta',
                [2] = 'descartada esta ronda a las fichas',
                [3] = '{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)'
            }
        }
    },
    doodle = {
        ['en-us'] = {
            ['name'] = 'Doodle',
            ['text'] = {
                [1] = '{C:attention}Copy{} first consumable',
                [2] = 'used this round',
                [3] = '{C:inactive}(Must have room)'
            },
            ['unlock'] = {
                [1] = 'Win {C:attention,E:1}10{} runs'
            }
        },
        ['es_419'] = {
            ['name'] = 'Garabato',
            ['text'] = {
                [1] = '{C:attention}Copia{} el primer consumible',
                [2] = 'usado esta ronda',
                [3] = '{C:inactive}(Debe haber espacio)'
            },
            ['unlock'] = {
                [1] = 'Gana {C:attention,E:1}10{} partidas'
            }
        }
    },
    disproportionality = {
        ['en-us'] = {
            ['name'] = 'Disproportionality',
            ['text'] = {
                [1] = ''
            }
        },
        ['es_419'] = {
            ['name'] = 'Desproporcionalidad',
            ['text'] = {
                [1] = ''
            }
        }
    },
    running_joke = {
        ['en-us'] = {
            ['name'] = 'Running Joke',
            ['text'] = {
                [1] = 'Create a {C:dark_edition}Negative',
                [2] = '"{C:attention}Joker{}" at the',
                [3] = 'start of every shop'
            }
        },
        ['es_419'] = {
            ['name'] = 'Chiste repetido',
            ['text'] = {
                [1] = 'Crea un "{C:attention}Comodín{}"',
                [2] = '{C:dark_edition}negativo{} al',
                [3] = 'principio de cada tienda'
            }
        }
    },
    on_broadway = {
        ['en-us'] = {
            ['name'] = 'On Broadway',
            ['text'] = {
                [1] = '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult if',
                [2] = 'played hand contains a {C:attention}Straight{}',
                [3] = 'with a scoring {C:attention}face card'
            }
        },
        ['es_419'] = {
            ['name'] = 'En Broadway',
            ['text'] = {
                [1] = '{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi si',
                [2] = 'la mano jugada contiene una {C:attention}Escalera{}',
                [3] = 'con una {C:attention}carta de figura{} anotante'
            }
        }
    },
    rasta = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    critic = {
        ['en-us'] = {
            ['name'] = 'Critic',
            ['text'] = {
                [1] = "{X:mult,C:white}X#1#{} Mult if played hand's",
                [2] = 'current score is',
                [3] = '{C:attention}less than 1/#2#{} of',
                [4] = "blind's required score"
            }
        },
        ['es_419'] = {
            ['name'] = 'Critico',
            ['text'] = {
                [1] = "{X:mult,C:white}X#1#{} multi si la puntuación",
                [2] = 'actual de la mano jugada es',
                [3] = '{C:attention}menos que 1/#2#{} de la',
                [4] = "puntuación requerida de la ciega" 
            }
        }
    },
    cellphone = {
        ['en-us'] = {
            ['name'] = 'Cellphone',
            ['text'] = {
                [1] = '{C:attention}Return{} scored cards to hand',
                [2] = 'after first play of round',
                [3] = 'if no discards were used'
            }
        },
        ['es_419'] = {
            ['name'] = 'Teléfono',
            ['text'] = {
                [1] = '{C:attention}Regresa{} las cartas anotadas a la mano',
                [2] = 'después de la primera jugada de la ronda',
                [3] = 'si no se usó ningun descarte'
            }
        }
    },
    wino = {
        ['en-us'] = {
            ['name'] = 'Wino',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:hearts}Heart{} and {C:diamonds}Diamond{} suit',
                [3] = 'give {C:chips}+#1#{} Chips when scored'
            }
        },
        ['es_419'] = {
            ['name'] = 'Borrachín',
            ['text'] = {
                [1] = 'Cartas jugadas con',
                [2] = 'palo de {C:hearts}Corazón{} y {C:diamonds}Diamante{}',
                [3] = 'otorgan {C:chips}+#1#{} fichas cuando anotan'
            }
        }
    },
    bounty_hunter = {
        ['en-us'] = {
            ['name'] = 'Bounty Hunter',
            ['text'] = {
                [1] = '{C:mult}+#1#{} Mult for',
                [2] = 'each {C:money}$1{} below {C:money}$0',
                [3] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
            },
            ['unlock'] = {
                [1] = 'Have less than {E:1,C:attention}$-20',
                [2] = 'during a single run'
            }
        },
        ['es_419'] = {
            ['name'] = 'Cazarrecompensas',
            ['text'] = {
                [1] = '{C:mult}+#1#{} multi por',
                [2] = 'cada {C:money}$1{} debajo de {C:money}$0',
                [3] = '{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)'
            },
            ['unlock'] = {
                [1] = 'Ten menos de {E:1,C:attention}$-20',
                [2] = 'durante una sola partida'
            }
        }
    },
    mousetrap = {
        ['en-us'] = {
            ['name'] = 'Mousetrap',
            ['text'] = {
                [1] = '{C:chips}+#1#{} Chips,',
                [2] = '{C:green}#2# in #3#{} chance to',
                [3] = '{C:attention}lose{} one hand instead'
            }
        },
        ['es_419'] = {
            ['name'] = 'Ratonera',
            ['text'] = {
                [1] = '{C:chips}+#1#{} fichas,',
                [2] = '{C:green}#2# en #3#{} probabilidades de',
                [3] = '{C:attention}perder{} una mano en vez'
            }
        }
    },
    the_joker = {
        ['en-us'] = {
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
        ['es_419'] = {
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
        }
    },
    tangram = {
        ['en-us'] = {
            ['name'] = 'Tangram',
            ['text'] = {
                [1] = 'Every played {C:attention}7{} gives',
                [2] = '{C:mult}+#1#{} Mult per every',
                [3] = 'scored {C:attention}7{} when scored'
            }
        },
        ['es_419'] = {
            ['name'] = 'Tangram',
            ['text'] = {
                [1] = 'Cada {C:attention}7{} jugado otorga',
                [2] = '{C:mult}+#1#{} multi por cada',
                [3] = '{C:attention}7{} anotado cuando anotan'
            }
        }
    },
    domino = {
        ['en-us'] = {
            ['name'] = 'Domino',
            ['text'] = {
                [1] = 'Upon {C:attention}acquiring{} or {C:attention}using',
                [2] = 'a card from shop or',
                [3] = 'Booster Pack, acquire {C:attention}2',
                [4] = 'adjacent cards if possible'
            }
        },
        ['es_419'] = {
            ['name'] = 'Dominó',
            ['text'] = {
                [1] = 'Al {C:attention}adquirir{} o {C:attention}usar',
                [2] = 'una carta de la tienda o',
                [3] = 'paquete potenciador, adquiere {C:attention}2',
                [4] = 'cartas adyacentes si es posible'
            }
        }
    },

    -- Exotic

    zealous = {
        ['en-us'] = {
            ['name'] = 'Zealous Joker',
            ['text'] = {
                [1] = '{C:mult}+#1#{} Mult if played',
                [2] = 'hand contains',
                [3] = 'a {C:attention}Spectrum'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín fanático',
            ['text'] = {
                [1] = '{C:mult}+#1#{} multi si la mano',
                [2] = 'jugada contiene',
                [3] = 'un {C:attention}Espectro'
            }
        }
    },
    lurid = {
        ['en-us'] = {
            ['name'] = 'Lurid Joker',
            ['text'] = {
                [1] = '{C:chips}+#1#{} Chips if played',
                [2] = 'hand contains',
                [3] = 'a {C:attention}Spectrum'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín chillón',
            ['text'] = {
                [1] = '{C:chips}+#1#{} fichas si la mano',
                [2] = 'jugada contiene',
                [3] = 'un {C:attention}Espectro'
            }
        }
    },
    envious = {
        ['en-us'] = {
            ['name'] = 'Envious Joker',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:bunc_fleurons}Fleuron{} suit give',
                [3] = '{C:mult}+#1#{} Mult when scored'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín envidioso',
            ['text'] = {
                [1] = 'Las cartas jugadas',
                [2] = 'del palo {C:bunc_fleurons}Florón{} otorgan',
                [3] = ' multi {C:mult}+#1#{} cuando anotan'
            }
        }
    },
    proud = {
        ['en-us'] = {
            ['name'] = 'Proud Joker',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:bunc_halberds}Halberd{} suit give',
                [3] = '{C:mult}+#1#{} Mult when scored'
            }
        },
        ['es_419'] = {
            ['name'] = 'Comodín orgulloso',
            ['text'] = {
                [1] = 'Las cartas jugadas',
                [2] = 'del palo {C:bunc_halberds}Alabarda{} otorgan',
                [3] = 'multi {C:mult}+#1#{} cuando anotan'
            }
        }
    },
    wishalloy = {
        ['en-us'] = {
            ['name'] = 'Wishalloy',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance for',
                [2] = 'played {C:bunc_fleurons}Fleurons{} to',
                [3] = 'earn {C:money}${} equal to',
                [4] = "card's scored Chips"
            }
        },
        ['es_419'] = {
            ['name'] = 'Metál de los deseos',
            ['text'] = {
                [1] = '{C:green}#1# en #2#{} probabilidades para',
                [2] = 'los {C:bunc_fleurons}Florones{} jugados de',
                [3] = 'ganar {C:money}${} igual a las',
                [4] = "fichas anotadas de la carta"
            }
        }
    },
    unobtanium = {
        ['en-us'] = {
            ['name'] = 'Unobtanium',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:bunc_halberds}Halberd{} suit give',
                [3] = '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult',
                [4] = "when scored"
            }
        },
        ['es_419'] = {
            ['name'] = 'Inobtanio',
            ['text'] = {
                [1] = 'Las cartas jugadas de',
                [2] = '{C:bunc_halberds}Alabarda{} otorgan',
                [3] = '{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi',
                [4] = "cuando anotan"
            }
        }
    },
    dynasty = {
        ['en-us'] = {
            ['name'] = 'The Dynasty',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult if played',
                [2] = 'hand contains',
                [3] = 'a {C:attention}Spectrum'
            }
        },
        ['es_419'] = {
            ['name'] = 'La dinastía',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} multi si la mano',
                [2] = 'jugada contiene',
                [3] = 'un {C:attention}Espectro'
            }
        }
    },
    magic_wand = {
        ['en-us'] = {
            ['name'] = 'Magic Wand',
            ['text'] = {
                [1] = 'This Joker gains {X:mult,C:white}X#1#{} Mult',
                [2] = 'per {C:attention}consecutive{} played hand',
                [3] = 'containing a {C:attention}Spectrum{}',
                [4] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
            }
        },
        ['es_419'] = {
            ['name'] = 'Varita mágica',
            ['text'] = {
                [1] = 'Este comodín obtiene {X:mult,C:white}X#1#{} multi',
                [2] = 'por cada mano {C:attention}consecutiva{} jugada',
                [3] = 'que contiene un {C:attention}Espectro{}',
                [4] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
            }
        }
    },
    starfruit = {
        ['en-us'] = {
            ['name'] = 'Starfruit',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance to level up played',
                [2] = '{C:attention}poker hand{} if it contains a {C:attention}Spectrum',
                [3] = '{C:green}#1# in #3#{} chance to destroy this Joker at end of round',
                [4] = 'if a {C:attention}Spectrum{}-containing hand was played this round'
                -- TODO this joker is way too long
            }
        },
        ['es_419'] = {
            ['name'] = 'Carambola',
            ['text'] = {
                [1] = '{C:green}#1# en #2#{} probabilidades de mejorar el nivel de la',
                [2] = '{C:attention}mano de póker{} jugada si contiene un {C:attention}Espectro',
                [3] = '{C:green}#1# en #3#{} probabilidades de destruir este comodín al final de la ronda',
                [4] = 'si se jugó una mano que contiene un {C:attention}Espectro{} esta ronda'
            }
        }
    },
    fondue = {
        ['en-us'] = {
            ['name'] = 'Fondue',
            ['text'] = {
                [1] = 'Scored cards in the',
                [2] = '{C:attention}first hand{} of round are',
                [3] = 'converted to {C:bunc_fleurons}Fleurons'
            }
        },
        ['es_419'] = {
            ['name'] = 'Fondue',
            ['text'] = {
                [1] = 'Las cartas anotadas en la',
                [2] = '{C:attention}primera mano{} de la ronda son',
                [3] = 'convertidas a {C:bunc_fleurons}Florones'
            }
        }
    },
    myopia = {
        ['en-us'] = {
            ['name'] = 'Myopia',
            ['text'] = {
                [1] = '{C:spades}Spades{} and {C:clubs}Clubs{}',
                [2] = 'count as {C:bunc_halberds}Halberds'
            }
        },
        ['es_419'] = {
            ['name'] = 'Miopía',
            ['text'] = {
                [1] = '{C:spades}Espadas{} y {C:clubs}Tréboles{}',
                [2] = 'cuentan como {C:bunc_halberds}Alabardas'
            }
        }
    },
    astigmatism = {
        ['en-us'] = {
            ['name'] = 'Astigmatism',
            ['text'] = {
                [1] = '{C:hearts}Hearts{} and {C:diamonds}Diamonds{}',
                [2] = 'count as {C:bunc_fleurons}Fleurons'
            }
        },
        ['es_419'] = {
            ['name'] = 'Astigmatismo',
            ['text'] = {
                [1] = '{C:hearts}Corazones{} y {C:diamonds}Diamantes{}',
                [2] = 'cuentan como {C:bunc_fleurons}Florones'
            }
        }
    },
    roygbiv = {
        ['en-us'] = {
            ['name'] = 'Roy G. Biv',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance to add',
                [2] = '{C:dark_edition}Polychrome{} edition',
                [3] = 'to a random scored card if',
                [4] = 'hand contains a {C:attention}Spectrum'
            }
        },
        ['es_419'] = {
            ['name'] = 'Roy G. Biv',
            ['text'] = {
                [1] = '{C:green}#1# en #2#{} probabilidades de agregar',
                [2] = 'edición {C:dark_edition}polícroma{}',
                [3] = 'a una carta anotada al azar si',
                [4] = 'la mano contiene un {C:attention}Espectro'
            }
        }
    },
    rigoletto = {
        ['en-us'] = {
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
        ['es_419'] = {
            ['name'] = 'Rigoletto',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} multi por cada {C:bunco_exotic}carta exotica{}',
                [2] = 'en tu {C:attention}baraja',
                [3] = '{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)'
            },
            ['unlock'] = {
                [1] = '{E:1,s:1.3}?????'
            }
        }
    },

    -- Blinds

    paling = {
        ['en-us'] = {
            ['name'] = 'The Paling',
            ['text'] = {
                [1] = 'Playing or Discarding costs',
                [2] = 'both hand and discard'
            }
        },
        ['es_419'] = {
            ['name'] = 'La cerca',
            ['text'] = {
                [1] = 'Jugar o descartar cuesta',
                [2] = 'ambos mano y descarte'
            }
        }
    },
    umbrella = {
        ['en-us'] = {
            ['name'] = 'The Umbrella',
            ['text'] = {
                [1] = 'After Play, flip all',
                [2] = 'cards in hand face down'
            }
        },
        ['es_419'] = {
            ['name'] = 'El paraguas',
            ['text'] = {
                [1] = 'Después de jugar, da vuelta todas',
                [2] = 'las cartas en mano boca abajo'
            }
        }
    },
    tine = {
        ['en-us'] = {
            ['name'] = 'The Tine',
            ['text'] = {
                [1] = 'Each #1# is debuffed'
            }
        },
        ['es_419'] = {
            ['name'] = 'La punta',
            ['text'] = {
                [1] = 'Cada #1# es debilitado'
            }
        }
    },
    swing = {
        ['en-us'] = {
            ['name'] = 'The Swing',
            ['text'] = {
                [1] = 'After Play or Discard,',
                [2] = 'flip all cards'
            }
        },
        ['es_419'] = {
            ['name'] = 'El columpio',
            ['text'] = {
                [1] = 'Después de jugar o descartar,',
                [2] = 'voltea todas las cartas'
            }
        }
    },
    miser = {
        ['en-us'] = {
            ['name'] = 'The Miser',
            ['text'] = {
                [1] = 'Skip the shop after',
                [2] = 'defeating this blind'
            }
        },
        ['es_419'] = {
            ['name'] = 'El tacaño',
            ['text'] = {
                [1] = 'Omite la tienda después',
                [2] = 'de derrotar esta ciega'
            }
        }
    },
    gate = {
        ['en-us'] = {
            ['name'] = 'The Gate',
            ['text'] = {
                [1] = 'Cards cannot',
                [2] = 'be deselected'
            }
        },
        ['es_419'] = {
            ['name'] = 'La puerta',
            ['text'] = {
                [1] = 'Las cartas no pueden',
                [2] = 'ser deseleccionadas'
            }
        }
    },
    flame = {
        ['en-us'] = {
            ['name'] = 'The Flame',
            ['text'] = {
                [1] = 'All Enhanced cards',
                [2] = 'are debuffed'
            }
        },
        ['es_419'] = {
            ['name'] = 'La llama',
            ['text'] = {
                [1] = 'Todas las cartas mejoradas',
                [2] = 'se debilitan'
            }
        }
    },
    mask = {
        ['en-us'] = {
            ['name'] = 'The Mask',
            ['text'] = {
                [1] = '#1# has the base',
                [2] = 'Chips and Mult of #2#'
            }
        },
        ['es_419'] = {
            ['name'] = 'La máscara',
            ['text'] = {
                [1] = '#1# tiene las fichas',
                [2] = 'y el multi base de #2#'
            }
        }
    },
    bulwark = {
        ['en-us'] = {
            ['name'] = 'The Bulwark',
            ['text'] = {
                [1] = 'Playing a #1# discards',
                [2] = 'all cards in hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'El baluarte',
            ['text'] = {
                [1] = 'Jugar un(a) #1# descarta',
                [2] = 'todas las cartas en mano'
            }
        }
    },
    knoll = {
        ['en-us'] = {
            ['name'] = 'The Knoll',
            ['text'] = {
                [1] = 'Having more than $5',
                [2] = 'debuffs first hand drawn'
            }
        },
        ['es_419'] = {
            ['name'] = 'El montículo',
            ['text'] = {
                [1] = 'Tener mas de $5',
                [2] = 'debilita la primera mano sacada'
            }
        }
    },
    stone = {
        ['en-us'] = {
            ['name'] = 'The Stone',
            ['text'] = {
                [1] = '+1X Base score for',
                [2] = 'every $10 held'
            }
        },
        ['es_419'] = {
            ['name'] = 'La piedra',
            ['text'] = {
                [1] = '+1X puntuación base',
                [2] = 'por cada $10 en posesión'
            }
        }
    },
    sand = {
        ['en-us'] = {
            ['name'] = 'The Sand',
            ['text'] = {
                [1] = '+1X Base score for',
                [2] = 'every tag held'
            }
        },
        ['es_419'] = {
            ['name'] = 'La arena',
            ['text'] = {
                [1] = '+1X puntuación base',
                [2] = 'por cada etiqueta en posesión'
            }
        }
    },
    blade = {
        ['en-us'] = {
            ['name'] = 'The Blade',
            ['text'] = {
                [1] = 'First time score exceeds #1#',
                [2] = 'makes played hand score 0'
            }
        },
        ['es_419'] = {
            ['name'] = 'El filo',
            ['text'] = {
                [1] = 'La primera vez que la puntuación excede',
                [2] = '#1#',
                [3] = 'hace que la mano jugada anote 0'
            }
        }
    },
    claw = {
        ['en-us'] = {
            ['name'] = 'The Claw',
            ['text'] = {
                [1] = 'Discarded cards',
                [2] = 'go back into the deck'
            }
        },
        ['es_419'] = {
            ['name'] = 'La garra',
            ['text'] = {
                [1] = 'Las cartas descartadas',
                [2] = 'regresan a la baraja'
            }
        }
    },
    veil = {
        ['en-us'] = {
            ['name'] = 'The Veil',
            ['text'] = {
                [1] = 'Selected cards are',
                [2] = 'flipped face down'
            }
        },
        ['es_419'] = {
            ['name'] = 'El velo',
            ['text'] = {
                [1] = 'Las cartas seleccionadas',
                [2] = 'se voltean boca abajo'
            }
        }
    },
    cadaver = {
        ['en-us'] = {
            ['name'] = 'The Cadaver',
            ['text'] = {
                [1] = 'Must not play face cards'
            }
        },
        ['es_419'] = {
            ['name'] = 'El cadáver',
            ['text'] = {
                [1] = 'No se deben jugar cartas de figuras'
            }
        }
    },
    wind = {
        ['en-us'] = {
            ['name'] = 'The Wind',
            ['text'] = {
                [1] = 'Leftmost Joker',
                [2] = 'is debuffed'
            }
        },
        ['es_419'] = {
            ['name'] = 'El viento',
            ['text'] = {
                [1] = 'El comodín más izquierdo',
                [2] = 'se debilita'
            }
        }
    },
    prince = {
        ['en-us'] = {
            ['name'] = 'The Prince',
            ['text'] = {
                [1] = 'All Jokers are debuffed',
                [2] = 'until first hand is played'
            }
        },
        ['es_419'] = {
            ['name'] = 'El príncipe',
            ['text'] = {
                [1] = 'Todos los comodínes se debilitan',
                [2] = 'hasta jugar la primera mano'
            }
        }
    },
    depths = {
        ['en-us'] = {
            ['name'] = 'The Depths',
            ['text'] = {
                [1] = 'After Play, gain Eternal,',
                [2] = 'Perishable, or Scattering tag'
            }
        },
        ['es_419'] = {
            ['name'] = 'Las profundidades',
            ['text'] = {
                [1] = 'Después de jugar, gana una etiqueta',
                [2] = 'eterna, perecedera, o dispersante'
            }
        }
    },
    chasm = {
        ['en-us'] = {
            ['name'] = 'The Chasm',
            ['text'] = {
                [1] = 'After Play, gain Hindered,',
                [2] = 'Reactive, or Rental tag'
            }
        },
        ['es_419'] = {
            ['name'] = 'La fosa',
            ['text'] = {
                [1] = 'Después de jugar, gana una etiqueta',
                [2] = 'estorbante, reactiva o de alquiler'
            }
        }
    },


    -- Finishers

    chartreuse_crown = {
        ['en-us'] = {
            ['name'] = 'Chartreuse Crown',
            ['text'] = {
                [1] = 'All Spade, Heart, Club, and Diamond',
                [2] = 'base suit cards are debuffed'
            }
        },
        ['es_419'] = {
            ['name'] = 'Corona cartujo',
            ['text'] = {
                [1] = 'Todas las cartas de palo base',
                [2] = 'de Espadas, Corazón, Trébol y Diamante'
            }
        }
    },
    vermilion_trident = {
        ['en-us'] = {
            ['name'] = 'Vermilion Trident',
            ['text'] = {
                [1] = 'No shops this Ante'
            }
        },
        ['es_419'] = {
            ['name'] = 'Tridente bermellón',
            ['text'] = {
                [1] = 'Sin tiendas esta apuesta inicial'
            }
        }
    },
    indigo_tower = {
        ['en-us'] = {
            ['name'] = 'Indigo Tower',
            ['text'] = {
                [1] = 'Cards not played previously',
                [2] = 'this Ante are debuffed'
            }
        },
        ['es_419'] = {
            ['name'] = 'Torre índigo',
            ['text'] = {
                [1] = 'Las cartas no jugadas previamente',
                [2] = 'esta apuesta inicial se debilitan'
            }
        }
    },
    magenta_dagger = {
        ['en-us'] = {
            ['name'] = 'Magenta Dagger',
            ['text'] = {
                [1] = 'Discarding cards plays them',
                [2] = 'and subtracts scored value'
            }
        },
        ['es_419'] = {
            ['name'] = 'Daga magenta',
            ['text'] = {
                [1] = 'Descartar cartas las juega',
                [2] = 'y subtrae el valor de la puntuación'
            }
        }
    },
    turquoise_shield = {
        ['en-us'] = {
            ['name'] = 'Turquoise Shield',
            ['text'] = {
                [1] = 'Excess score this Ante adds',
                [2] = "to this blind's required score"
            }
        },
        ['es_419'] = {
            ['name'] = 'Escudo turquesa',
            ['text'] = {
                [1] = 'La puntuación excediente en esta apuesta inicial',
                [2] = "se agrega a la puntuación requerida de esta ciega"
            }
        }
    },

    -- Decks

    fairy = {
        ['en-us'] = {
            ['name'] = 'Fairy Deck',
            ['text'] = {
                [1] = 'After defeating each',
                [2] = '{C:attention}Boss Blind{}, add #1#',
                [3] = "random {C:bunco_exotic,T:exotic_cards}#2#",
                [4] = "to your deck"
            },
            ['unlock'] = {
                [1] = 'Play {E:1,C:attention}5 different suits',
                [2] = 'in a single hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'Baraja hada',
            ['text'] = {
                [1] = 'Despues de derrotar cada',
                [2] = '{C:attention}ciega jefe{}, agrega #1#',
                [3] = "{C:bunco_exotic,T:exotic_cards}#2#",
                [4] = " al azar a tu baraja"
            },
            ['unlock'] = {
                [1] = 'Juega {E:1,C:attention}5 palos diferentes',
                [2] = 'en una sola mano'
            }
        }
    },
    digital = {
        ['en-us'] = {
            ['name'] = 'Digital Deck',
            ['text'] = {
                [1] = '{C:bunco_virtual_dark}Polymino{} cards may',
                [2] = 'appear in the shop,',
                [3] = "start with {C:bunco_virtual_dark,T:c_bunc_the_i}The I{}"
            }
        },
        ['es_419'] = {
            ['name'] = 'Baraja digital',
            ['text'] = {
                [1] = 'Las cartas de {C:bunco_virtual_dark}poliminó{} pueden',
                [2] = 'aparecer en la tienda,',
                [3] = "comienza con {C:bunco_virtual_dark,T:c_bunc_the_i}La I{}"
            }
        }
    },

    -- Reworked tags

    boss = {
        ['en-us'] = {
            ['name'] = 'Boss Tag',
            ['text'] = {
                [1] = 'Gives a free',
                [2] = '{C:attention}Blind Pack'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta de jefe',
            ['text'] = {
                [1] = 'Otorga gratis un',
                [2] = '{C:attention}paquete de ciegas'
            }
        }
    },
    double = {
        ['en-us'] = {
            ['name'] = 'Double Tag',
            ['text'] = {
                [1] = 'Gives a copy of the',
                [2] = 'next selected {C:attention}Tag{}',
                [3] = '{s:0.6,C:attention}Double and Triple Tags{s:0.8} excluded'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta doble',
            ['text'] = {
                [1] = 'Otorga una copia de',
                [2] = 'la {C:attention}etiqueta{} siguiente seleccionada',
                [3] = 'a excepción de {s:0.6,C:attention}Etiquetas doble y triple{s:0.8}'
            }
        }
    },

    -- Tags

    breaking = {
        ['en-us'] = {
            ['name'] = 'Breaking Tag',
            ['text'] = {
                [1] = 'Disables the',
                [2] = '{C:attention}Boss Blind{}'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta rompeciegas',
            ['text'] = {
                [1] = 'Deshabilita la',
                [2] = '{C:attention}ciega jefe{}'
            }
        }
    },
    arcade = {
        ['en-us'] = {
            ['name'] = 'Arcade Tag',
            ['text'] = {
                [1] = 'Gives a free',
                [2] = '{C:bunco_virtual_dark}Mega Virtual Pack'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta arcade',
            ['text'] = {
                [1] = 'Otorga gratis un',
                [2] = '{C:bunco_virtual_dark}paquete virtual mega'
            }
        }
    },
    triple = {
        ['en-us'] = {
            ['name'] = 'Triple Tag',
            ['text'] = {
                [1] = 'Gives two copies of the',
                [2] = 'next selected {C:attention}Tag{}',
                [3] = '{s:0.8,C:attention}Triple Tag{s:0.8} excluded'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta triple',
            ['text'] = {
                [1] = 'Otorga dos copias de',
                [2] = 'la {C:attention}etiqueta{} siguiente seleccionada',
                [3] = 'a excepción de {s:0.8,C:attention}Etiqueta triple{s:0.8}'
            }
        }
    },
    glitter_tag = {
        ['en-us'] = {
            ['name'] = 'Glitter Tag',
            ['text'] = {
                [1] = 'Next base edition shop',
                [2] = 'Joker is free and',
                [3] = 'becomes {C:dark_edition}Glitter'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta brillantina',
            ['text'] = {
                [1] = 'El próximo comodín de la',
                [2] = 'tienda de la edición base es gratis y',
                [3] = 'se vuelve {C:dark_edition}brillantino'
            }
        }
    },
    fluorescent_tag = {
        ['en-us'] = {
            ['name'] = 'Fluorescent Tag',
            ['text'] = {
                [1] = 'Next base edition shop',
                [2] = 'Joker is free and',
                [3] = 'becomes {C:dark_edition}Fluorescent'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta fluorescente',
            ['text'] = {
                [1] = 'El próximo comodín de la',
                [2] = 'tienda de la edición base es gratis y',
                [3] = 'se vuelve {C:dark_edition}fluorescente'
            }
        }
    },
    chips = {
        ['en-us'] = {
            ['name'] = 'Chips Tag',
            ['text'] = {
                [1] = '{C:chips}+#1#{} Chips next hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta de fichas',
            ['text'] = {
                [1] = '{C:chips}+#1#{} fichas en la siguiente mano'
            }
        }
    },
    mult = {
        ['en-us'] = {
            ['name'] = 'Mult Tag',
            ['text'] = {
                [1] = '{C:mult}+#1#{} Mult next hand',
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta multi',
            ['text'] = {
                [1] = '{C:mult}+#1#{} multi en la siguiente mano',
            }
        }
    },
    xmult = {
        ['en-us'] = {
            ['name'] = 'Megamult Tag',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult next hand',
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta megamulti',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} multi en la siguiente mano',
            }
        }
    },
    xchips = {
        ['en-us'] = {
            ['name'] = 'Ultrachips Tag',
            ['text'] = {
                [1] = '{X:chips,C:white}X#1#{} Chips next hand'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta de ultrafichas',
            ['text'] = {
                [1] = '{X:chips,C:white}X#1#{} fichas en la siguiente mano'
            }
        }
    },
    filigree = {
        ['en-us'] = {
            ['name'] = 'Filigree Tag',
            ['text'] = {
                [1] = 'Next {C:attention}Standard Pack{} opened',
                [2] = 'has only {C:bunco_exotic}Exotic cards'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta filigrana',
            ['text'] = {
                [1] = 'El proximo {C:attention}paquete estándar{} abierto',
                [2] = 'tiene solo {C:bunco_exotic}cartas exoticas'
            }
        }
    },
    eternal = {
        ['en-us'] = {
            ['name'] = 'Eternal Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Eternal{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta eterna',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}eterno{}'
            }
        }
    },
    perishable = {
        ['en-us'] = {
            ['name'] = 'Perishable Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Perishable{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta perecedera',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}perecedero{}'
            }
        }
    },
    rental = {
        ['en-us'] = {
            ['name'] = 'Rental Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Rental{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta de alquiler',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker de {C:attention}alquiler{}'
            }
        }
    },
    scattering_tag = {
        ['en-us'] = {
            ['name'] = 'Scattering Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Scattering{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta dispersante',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}dispersante{}'
            }
        }
    },
    hindered_tag = {
        ['en-us'] = {
            ['name'] = 'Hindered Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Hindered{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta estorbante',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}estorbante{}'
            }
        }
    },
    reactive_tag = {
        ['en-us'] = {
            ['name'] = 'Reactive Tag',
            ['text'] = {
                [1] = 'Next shop Joker',
                [2] = 'will gain {C:attention}Reactive{} sticker'
            }
        },
        ['es_419'] = {
            ['name'] = 'Etiqueta reactiva',
            ['text'] = {
                [1] = 'El próximo comodín de la tienda',
                [2] = 'obtendrá un sticker {C:attention}reactivo{}'
            }
        }
    },

    -- Editions

    glitter_edition = {
        ['en-us'] = {
            ['name'] = 'Glitter',
            ['label'] = 'Glitter',
            ['text'] = {
                [1] = '{X:chips,C:white}X#1#{} Chips'
            }
        },
        ['es_419'] = {
            ['name'] = 'Brillantina',
            ['label'] = 'Brillantina',
            ['text'] = {
                [1] = '{X:chips,C:white}X#1#{} fichas'
            }
        }
    },
    fluorescent_edition = {
        ['en-us'] = {
            ['name'] = 'Fluorescent',
            ['label'] = 'Fluorescent',
            ['text'] = {
                [1] = 'Cannot be flipped, debuffed',
                [2] = 'or forced to be selected'
            }
        },
        ['es_419'] = {
            ['name'] = 'Fluorescente',
            ['label'] = 'Fluorescente',
            ['text'] = {
                [1] = 'No puede voltearse, debilitarse',
                [2] = 'o ser forzado a seleccionarse'
            }
        }
    },

    -- Vouchers

    lamination = {
        ['en-us'] = {
            ['name'] = 'Lamination',
            ['text'] = {
                [1] = 'Consumables in',
                [2] = '{C:attention}Booster Packs{} may',
                [3] = 'appear with {C:dark_edition}Edition'
            }
        },
        ['es_419'] = {
            ['name'] = 'Laminación',
            ['text'] = {
                [1] = 'Los consumibles en',
                [2] = '{C:attention}paquetes potenciadores{} pueden',
                [3] = 'aparecer con {C:dark_edition}edición'
            }
        }
    },
    supercoating = {
        ['en-us'] = {
            ['name'] = 'Supercoating',
            ['text'] = {
                [1] = 'All consumables in',
                [2] = '{C:attention}Booster Packs{} will',
                [3] = 'appear with {C:dark_edition}Edition'
            },
            ['unlock'] = {
                [1] = 'Use {C:attention,E:1}5{} consumables',
                [2] = 'with {C:attention,E:1}Editions'
            }
        },
        ['es_419'] = {
            ['name'] = 'Supercapa',
            ['text'] = {
                [1] = 'Todos los consumibles en',
                [2] = '{C:attention}paquetes potenciadores{} aparecen',
                [3] = 'con {C:dark_edition}ediciones'
            },
            ['unlock'] = {
                [1] = 'Usa {C:attention,E:1}5{} consumibles',
                [2] = 'con {C:attention,E:1}ediciones'
            }
        }
    },
    hedge_trimmer = {
        ['en-us'] = {
            ['name'] = 'Hedge Trimmer',
            ['text'] = {
                [1] = "Reduce blind's score",
                [2] = 'by {C:attention}#1#%{} every hand played'
            }
        },
        ['es_419'] = {
            ['name'] = 'Cortacerco',
            ['text'] = {
                [1] = "Reduce la puntuación de la ciega",
                [2] = 'por {C:attention}#1#%{} con cada mano jugada'
            }
        }
    },
    chainsaw = {
        ['en-us'] = {
            ['name'] = 'Chainsaw',
            ['text'] = {
                [1] = 'All required scores',
                [2] = 'reduced by {C:attention}#1#%{}'
            },
            ['unlock'] = {
                [1] = "Reduce blind's score using",
                [2] = 'Hedge Trimmer',
                [3] = 'a total of {C:attention,E:1}20{} times'
            }
        },
        ['es_419'] = {
            ['name'] = 'Motosierra',
            ['text'] = {
                [1] = 'Todas las puntuaciones requeridas',
                [2] = 'son reducidas por {C:attention}#1#%{}'
            },
            ['unlock'] = {
                [1] = "Reduce la puntuacion de ciega usando",
                [2] = 'Cortacerco',
                [3] = 'un total de {C:attention,E:1}20{} veces'
            }
        }
    },
    cups_n_balls = {
        ['en-us'] = {
            ['name'] = "Cups 'n' Balls",
            ['text'] = {
                [1] = '{C:attention}+1{} Booster Pack',
                [2] = 'slot available in shop'
            }
        },
        ['es_419'] = {
            ['name'] = "Vasos y bolas",
            ['text'] = {
                [1] = '{C:attention}+1{} ranura de paquete potenciador',
                [2] = 'disponible en la tienda'
            }
        }
    },
    shell_game = {
        ['en-us'] = {
            ['name'] = 'Shell Game',
            ['text'] = {
                [1] = 'Reroll {C:attention}contents',
                [2] = 'of Booster Packs',
                [3] = '{C:attention}1{} time per pack'
            },
            ['unlock'] = {
                [1] = 'Open {E:1,C:attention}25',
                [2] = 'Booster Packs'
            }
        },
        ['es_419'] = {
            ['name'] = 'Juego de bolas',
            ['text'] = {
                [1] = 'Renueva los {C:attention}contenidos',
                [2] = 'de los paquetes potenciadores',
                [3] = '{C:attention}1{} vez por paquete'
            },
            ['unlock'] = {
                [1] = 'Abre {E:1,C:attention}25',
                [2] = 'paquetes potenciadores'
            }
        }
    },
    disguise = {
        ['en-us'] = {
            ['name'] = 'Disguise',
            ['text'] = {
                [1] = '{C:attention}Blind Packs{} may',
                [2] = 'appear in the shop'
            }
        },
        ['es_419'] = {
            ['name'] = "Disfraz",
            ['text'] = {
                [1] = 'Los {C:attention}paquetes de ciega{} pueden',
                [2] = 'aparecer en la tienda'
            }
        }
    },
    masquerade = {
        ['en-us'] = {
            ['name'] = 'Masquerade',
            ['text'] = {
                [1] = 'All {C:attention}Blind Packs{} in',
                [2] = 'the shop are free'
            },
            ['unlock'] = {
                [1] = 'Replace {E:1,C:attention}5{}',
                [2] = 'Blinds with Blinds',
                [3] = 'from Blind Pack'
            }
        },
        ['es_419'] = {
            ['name'] = 'Mascarada',
            ['text'] = {
                [1] = 'Todos los {C:attention}paquetes de ciega{} en',
                [2] = 'la tienda son gratis'
            },
            ['unlock'] = {
                [1] = 'Reemplaza {E:1,C:attention}5{}',
                [2] = 'ciegas con ciegas',
                [3] = 'de un paquete de ciegas'
            }
        }
    },
    fanny_pack = {
        ['en-us'] = {
            ['name'] = 'Fanny Pack',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance to',
                [2] = 'gain a {C:attention}Double Tag',
                [3] = 'each time a blind',
                [4] = 'is {C:attention}skipped'
            }
        },
        ['es_419'] = {
            ['name'] = "Riñonera",
            ['text'] = {
                [1] = '{C:green}#1# en #2#{} probabilidades de',
                [2] = 'obtener una {C:attention}etiqueta doble',
                [3] = 'cada vez que una ciega',
                [4] = 'es {C:attention}omitida'
            }
        }
    },
    pin_collector = {
        ['en-us'] = {
            ['name'] = 'Pin Collector',
            ['text'] = {
                [1] = 'All new {C:attention}Double Tags',
                [2] = 'appear as {C:attention}Triple Tags'
            },
            ['unlock'] = {
                [1] = 'Skip a total of',
                [2] = '{E:1,C:attention}30{} blinds'
            }
        },
        ['es_419'] = {
            ['name'] = 'Coleccionista',
            ['text'] = {
                [1] = 'Todas las {C:attention}etiquetas doble{} nuevas',
                [2] = 'aparecen como {C:attention}etiquetas triple'
            },
            ['unlock'] = {
                [1] = 'Omite un total de',
                [2] = '{E:1,C:attention}30{} ciegas'
            }
        }
    },
    arcade_machine = {
        ['en-us'] = {
            ['name'] = 'Arcade Machine',
            ['text'] = {
                [1] = '{C:bunco_virtual_dark}Virtual Packs',
                [2] = 'appear {C:attention}4X{} more often'
            }
        }
    },
    polybius = {
        ['en-us'] = {
            ['name'] = 'Polybius',
            ['text'] = {
                [1] = '{C:bunco_virtual_dark}Polymino{} cards allow to',
                [2] = 'link {C:attention}one more{} card',
                [3] = '{s:0.6,C:inactive}Extra card can be of any property'
            },
            ['unlock'] = {
                [1] = 'Create a total of',
                [2] = '{E:1,C:attention}10{} linked groups'
            }
        }
    },

    -- Booster Packs

    blind = {
        ['en-us'] = {
            ['group_name'] = 'Blind Pack',
            ['name'] = 'Blind Pack',
            ['text'] = {
                [1] = 'Choose one of up to',
                [2] = '{C:attention}#1# Boss Blinds{} to',
                [3] = 'replace on this Ante'
            }
        },
        ['es_419'] = {
            ['group_name'] = 'Paquete de ciegas',
            ['name'] = 'Paquete de ciegas',
            ['text'] = {
                [1] = 'Elige una de hasta',
                [2] = '{C:attention}#1# ciegas jefe{} para',
                [3] = 'reemplazar en esta apuesta inicial'
            }
        }
    },
    virtual = {
        ['en-us'] = {
            ['group_name'] = 'Virtual Pack',
            ['name'] = 'Virtual Pack',
            ['text'] = {
                [1] = 'Draw the whole deck and',
                [2] = 'choose {C:attention}#1#{} of up to',
                [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                [4] = 'be used immediately'
            }
        },
        ['es_419'] = {
            ['group_name'] = 'Paquete virtual',
            ['name'] = 'Paquete virtual',
            ['text'] = {
                [1] = 'Saca toda la baraja y',
                [2] = 'elige {C:attention}#1#{} de hasta',
                [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                [4] = 'usar de inmediato'
            }
        }
    },
    virtual_jumbo = {
        ['en-us'] = {
            ['group_name'] = 'Virtual Pack',
            ['name'] = 'Jumbo Virtual Pack',
            ['text'] = {
                [1] = 'Draw the whole deck and',
                [2] = 'choose {C:attention}#1#{} of up to',
                [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                [4] = 'be used immediately'
            }
        },
        ['es_419'] = {
            ['group_name'] = 'Paquete virtual',
            ['name'] = 'Paquete virtual jumbo',
            ['text'] = {
                [1] = 'Saca toda la baraja y',
                [2] = 'elige {C:attention}#1#{} de hasta',
                [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                [4] = 'usar de inmediato'
            }
        }
    },
    virtual_mega = {
        ['en-us'] = {
            ['group_name'] = 'Virtual Pack',
            ['name'] = 'Mega Virtual Pack',
            ['text'] = {
                [1] = 'Draw the whole deck and',
                [2] = 'choose {C:attention}#1#{} of up to',
                [3] = '{C:attention}#2#{C:bunco_virtual_dark} Polymino{} cards to',
                [4] = 'be used immediately'
            }
        },
        ['es_419'] = {
            ['group_name'] = 'Paquete virtual',
            ['name'] = 'Paquete virtual mega',
            ['text'] = {
                [1] = 'Saca toda la baraja y',
                [2] = 'elige {C:attention}#1#{} de hasta',
                [3] = '{C:attention}#2# cartas de{C:bunco_virtual_dark} poliminó{} para',
                [4] = 'usar de inmediato'
            }
        }
    },

    -- Stickers

    scattering = {
        ['en-us'] = {
            ['name'] = 'Scattering',
            ['label'] = 'Scattering',
            ['text'] = {
                [1] = 'Destroys random',
                [2] = 'Joker when sold',
                [3] = 'or destroyed'
            }
        },
        ['es_419'] = {
            ['name'] = 'Dispersante',
            ['label'] = 'Dispersante',
            ['text'] = {
                [1] = 'Destruye un',
                [2] = 'comodín al azar',
                [3] = 'al venderse o destruirse'
            }
        }
    },
    hindered = {
        ['en-us'] = {
            ['name'] = 'Hindered',
            ['label'] = 'Hindered',
            ['text'] = {
                [1] = 'Stays in place until',
                [2] = 'the end of the round',
                [3] = 'after being sold'
            }
        },
        ['es_419'] = {
            ['name'] = 'Estorbante',
            ['label'] = 'Estorbante',
            ['text'] = {
                [1] = 'Se queda en su lugar hasta',
                [2] = 'el fin de la ronda',
                [3] = 'despues de ser vendido'
            }
        }
    },
    reactive = {
        ['en-us'] = {
            ['name'] = 'Reactive',
            ['label'] = 'Reactive',
            ['text'] = {
                [1] = 'Debuffed if no blinds',
                [2] = 'are skipped this Ante'
            }
        },
        ['es_419'] = {
            ['name'] = 'Reactivo',
            ['label'] = 'Reactivo',
            ['text'] = {
                [1] = 'Se debilita si no se omite',
                [2] = 'ninguna ciega esta apuesta inicial'
            }
        }
    },

    -- Stakes

    cyan = {
        ['en-us'] = {
            ['name'] = 'Cyan Stake',
            ['text'] = {
                [1] = 'Shop can have {C:attention}Scattering{} Jokers',
                [2] = '{C:inactive,s:0.8}(Destroys random Joker when sold or destroyed)'
            },
            ['sticker'] = {
                ['name'] = 'Cyan Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Cyan',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            }
        },
        ['es_419'] = {
            ['name'] = 'Pozo cian',
            ['text'] = {
                [1] = 'La tienda puede tener comodines {C:attention}dispersantes{}',
                [2] = '{C:inactive,s:0.8}(Destruye un comodín al azar al venderse o destruirse)'
            },
            ['sticker'] = {
                ['name'] = 'Sticker cian',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}cian{}'
                }
            }
        }
    },
    pink = {
        ['en-us'] = {
            ['name'] = 'Pink Stake',
            ['text'] = {
                [1] = 'Shop can have {C:attention}Hindered{} Jokers',
                [2] = '{C:inactive,s:0.8}(Stays in place until the end of the round after being sold)'
            },
            ['sticker'] = {
                ['name'] = 'Pink Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Pink',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            }
        },
        ['es_419'] = {
            ['name'] = 'Pozo rosa',
            ['text'] = {
                [1] = 'La tienda puede tener comodines {C:attention}estorbantes{}',
                [2] = '{C:inactive,s:0.8}(Se queda en su lugar hasta el fin de la ronda despues de ser vendido)'
            },
            ['sticker'] = {
                ['name'] = 'Sticker rosa',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}rosa{}'
                }
            }
        }
    },
    magenta = {
        ['en-us'] = {
            ['name'] = 'Magenta Stake',
            ['text'] = {
                [1] = 'Shop can have {C:attention}Reactive{} Jokers',
                [2] = '{C:inactive,s:0.8}(Debuffed if no blinds are skipped this Ante)'
            },
            ['sticker'] = {
                ['name'] = 'Magenta Sticker',
                ['text'] = {
                    [1] = 'Used this Joker',
                    [2] = 'to win on {C:attention}Magenta',
                    [3] = '{C:attention}Stake{} difficulty'
                }
            }
        },
        ['es_419'] = {
            ['name'] = 'Pozo magenta',
            ['text'] = {
                [1] = 'La tienda puede tener comodines {C:attention}reactivos{}',
                [2] = '{C:inactive,s:0.8}(Se debilita si no se omite ninguna ciega esta apuesta inicial)'
            },
            ['sticker'] = {
                ['name'] = 'Sticker magenta',
                ['text'] = {
                    [1] = 'Usaste este comodín',
                    [2] = 'para ganar en la dificultad {C:attention}Pozo',
                    [3] = '{C:attention}magenta{}'
                }
            }
        }
    }
}