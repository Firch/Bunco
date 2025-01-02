return {
    misc = {
        dictionary = {

            -- French Translation by Kaishi_
                -- C'est pas impossible que ce soit nul ou foireux à certains moments donc hésitez pas à le dire
                -- dans le thread de bunco ou dans mes mps (voilà voilà)

            -- Config values

            bunc_colorful_finishers = 'Blindes Finales Colorées',
            bunc_colorful_finishers_desc = 'Active les fonds colorés pour les blindes finales',
            bunc_colorful_finishers_desc_2 = 'et retire le fond gris du mode sans fin/infini',

            bunc_high_quality_shaders = 'Shaders de haut qualité',
            bunc_high_quality_shaders_desc = 'Fait que certains des shaders vanilla',
            bunc_high_quality_shaders_desc_2 = 'soient de meilleure qualité (peut causer du lag)',

            bunc_fixed_sprites = 'Sprites corrigés',
            bunc_fixed_sprites_desc = 'Change légèrement quelques sprites en retirant',
            bunc_fixed_sprites_desc_2 = 'les pixels en trop, en améliorant la consistance et le haut contraste',

            bunc_gameplay_reworks = 'Changements de gameplay',
            bunc_gameplay_reworks_desc = 'Change certaines méchaniques vanilla',
            bunc_gameplay_reworks_desc_2 = 'pour rendre le jeu plus appréciable',

            bunc_fixed_badges = 'Badges corrigés',
            bunc_fixed_badges_desc = 'Change les badges de consommables en remplaçant les textes',
            bunc_fixed_badges_desc_2 = "confondants avec des explications sur leur moyens d'obtention",

            bunc_jokerlike_consumable_editions = 'Editions dans les emplacements de Consommables',
            bunc_jokerlike_consumable_editions_desc = 'Change le comportement des consommables avec des',
            bunc_jokerlike_consumable_editions_desc_2 = 'éditions qui agissent comme des Jokers (pour les mods conflictuels)',

            bunc_default_true = 'Activé par défaut',
            bunc_default_false = 'Désactivé par défaut',
            bunc_requires_restart = 'Nécessite un redémarrage',

            -- Miscellaneous

            bunc_copied = 'Copié!',
            bunc_nothing = 'Rien',
            bunc_chips = 'Jetons',
            bunc_loop = 'Boucle!',
            bunc_chance = 'Chance',
            bunc_word_and = 'et',
            bunc_debuffed = 'Affaibli!',
            bunc_pew = 'Pan!',
            bunc_declined = 'Refusé...',
            bunc_accepted = 'Accepté!',
            bunc_ouch = 'AÏE!',
            bunc_mysterious_tarot = 'Tarot?',
            bunc_mysterious_polymino = 'Polymino?',
            bunc_most_played_rank = '(valeur la plus jouée)',
            bunc_least_played_hand = '(main la moins jouée)',
            bunc_blade = '(1.5X score de la blinde)',
            bunc_exceeded_score = 'Limite dépassée!',

            -- Consumable types

            k_polymino = 'Polymino',
            b_polymino_cards = 'Cartes Polymino'

        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Fleuron',
            bunc_Halberds = 'Hallebarde'
        },
        suits_plural = {
            bunc_Fleurons = 'Fleurons',
            bunc_Halberds = 'Hallebardes'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Spectre',
            ['bunc_Straight Spectrum'] = 'Suite Spectrale',
            ['bunc_Straight Spectrum (Royal)'] = 'Spectre Royal',
            ['bunc_Spectrum House'] = 'Spectrum House',
            ['bunc_Spectrum Five'] = 'Spectrum Five',
            ['bunc_Deal'] = 'Deal'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '5 cartes avec des couleurs différentes'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5 cartes à la suite {valeurs consécutives} avec,',
                [2] = 'chacune une couleur différente'
            },
            ['bunc_Spectrum House'] = {
                [1] = 'Un Brelan et une Paire avec',
                [2] = 'chaque carte ayant une couleur différente'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '5 cartes avec la même valeur,',
                [2] = 'chacune avec une couleur différente'
            },
            ['bunc_Deal'] = {
                [1] = '5 valeurs choisis',
                [2] = "par Plaque d'immatriculation"
            }
        },
        labels = {

            -- Editions

            bunc_glitter = 'Pailleté',
            bunc_fluorescent = 'Fluorescent',

            -- Stickers

            bunc_scattering = 'Diffus',
            bunc_hindered = 'Entravé',
            bunc_reactive = 'Réactif'
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} Jetons supplémentaire cette manche'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Liés{} dans ce groupe:'}},
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Liés{} dans le groupe pioché'}},
            bunc_exotic_cards = {
                ['name'] = 'cartes Éxotiques',
                ['text'] = {
                    [1] = 'Les cartes ayant',
                    [2] = 'les couleurs {C:bunc_fleurons}Fleuron{} ou {C:bunc_halberds}Hallebarde{}'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Non Découvert',
                ['text'] = {
                    [1] = 'Achetez ou utilisez',
                    [2] = 'cette carte dans une partie',
                    [3] = 'sans seed pour',
                    [4] = 'connaître son effet'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['group_name'] = 'Paquet Blinde',
                ['name'] = 'Paquet Blinde',
                ['text'] = {
                    [1] = 'Choisissez parmis {C:attention}#1# Blindes{}',
                    [2] = 'pour remplacer la blinde actuelle',
                    [3] = 'cette Mise initiale'
                }
            },
            p_bunc_virtual_normal = {
                ['group_name'] = 'Paquet Virtuel',
                ['name'] = 'Paquet Virtuel',
                ['text'] = {
                    [1] = 'Piochez tout votre jeu et',
                    [2] = "choisissez de {C:attention}#1#{} jusqu'à",
                    [3] = '{C:attention}#2# cartes{C:bunco_virtual_dark} Polymino{} à',
                    [4] = 'utiliser immédiatement'
                }
            },
            p_bunc_virtual_jumbo = {
                ['group_name'] = 'Paquet Virtuel',
                ['name'] = 'Paquet Jumbo Virtuel',
                ['text'] = {
                    [1] = 'Piochez tout votre jeu et',
                    [2] = "choisissez de {C:attention}#1#{} jusqu'à",
                    [3] = '{C:attention}#2# cartes{C:bunco_virtual_dark} Polymino{} à',
                    [4] = 'utiliser immédiatement'
                }
            },
            p_bunc_virtual_mega = {
                ['group_name'] = 'Paquet Virtuel',
                ['name'] = 'Paquet Méga-Virtuel',
                ['text'] = {
                    [1] = 'Piochez tout votre jeu et',
                    [2] = "choisissez de {C:attention}#1#{} jusqu'à",
                    [3] = '{C:attention}#2# cartes{C:bunco_virtual_dark} Polymino{} à',
                    [4] = 'utiliser immédiatement'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Diffus',
                ['text'] = {
                    [1] = 'Détruit un Joker',
                    [2] = 'aléatoire quand vendu',
                    [3] = 'ou détruit'
                }
            },
            bunc_hindered = {
                ['name'] = 'Entravé',
                ['text'] = {
                    [1] = 'Reste dans son emplacement',
                    [2] = "jusqu'à la fin du tour",
                    [3] = 'où il a été vendu'
                }
            },
            bunc_reactive = {
                ['name'] = 'Réactif',
                ['text'] = {
                    [1] = 'Affaibli si aucune blinde',
                    [2] = "n'est passée durant cette Mise initiale"
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Autocollant cyan',
                ['text'] = {
                    [1] = 'Joker utilisé',
                    [2] = 'pour gagner en difficulté',
                    [3] = '{C:attention}Mise cyan{}'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Autocollant rose',
                ['text'] = {
                    [1] = 'Joker utilisé',
                    [2] = 'pour gagner en difficulté',
                    [3] = '{C:attention}Mise rose{}'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Autocollant magenta',
                ['text'] = {
                    [1] = 'Joker utilisé',
                    [2] = 'pour gagner en difficulté',
                    [3] = '{C:attention}Mise magenta{}'
                }
            }
        },

        -- Consumables

        Tarot = {
            c_bunc_sky = {
                ['name'] = 'Le Ciel',
                ['text'] = {
                    [1] = "Convertit jusqu'à",
                    [2] = '{C:attention}#1#{} cartes selectionnées',
                    [3] = 'pour les changer en {C:bunc_fleurons}Fleurons{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = "L'Abysse",
                ['text'] = {
                    [1] = "Convertit jusqu'à",
                    [2] = '{C:attention}#1#{} cartes selectionnées',
                    [3] = 'pour les changer en {C:bunc_halberds}Hallebardes{}'
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
                ['name'] = 'Purification',
                ['text'] = {
                    [1] = 'Ajoute {C:dark_edition}Fluorescent{}',
                    [2] = 'à {C:attention}#1#{} carte choisie dans votre main'
                }
            },
            c_bunc_the_8 = {
                ['name'] = 'Le 8',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} toutes',
                    [2] = 'les cartes non liées dans la main',
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'Le I',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'qui partagent la {C:attention}même valeur ou couleur'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'Le O',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où 2 cartes partagent la {C:attention}même propriété',
                    [3] = '{C:inactive}(valeur ou couleur){} et où les 2 autres cartes',
                    [4] = 'partagent un {C:attention}different type{} de la {C:attention}même propriété'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'Le T',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où 3 cartes partagent la {C:attention}même propriété',
                    [3] = "{C:inactive}(valeur ou couleur){} et où l'autre carte",
                    [4] = '{C:attention}ne partage pas{} la {C:attention}même propriété{}',
                    [5] = 'que les autres cartes'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'Le S',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où {C:attention}2 groupes{} de 2 cartes partagent',
                    [3] = 'la {C:attention}même valeur{} dans chaque groupe, avec une carte',
                    [4] = 'de chaque groupe partageant une {C:attention}couleur en commun'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'Le Z',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où {C:attention}2 groupes{} de 2 cartes partagent',
                    [3] = 'la {C:attention}même couleur{} dans chaque groupe, avec une carte',
                    [4] = 'de chaque groupe partageant une {C:attention}valeur en commun'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'Le J',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où 3 cartes partagent la {C:attention}même valeur',
                    [3] = "et où l'autre carte partage une",
                    [4] = '{C:attention}couleur en commun{} mais',
                    [5] = 'ne partage pas la même valeur'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'Le L',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où 3 cartes partagent la {C:attention}même couleur',
                    [3] = "et où l'autre carte partage une",
                    [4] = '{C:attention}valeur en commun{} mais',
                    [5] = 'ne partage pas la même couleur'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'Le /',
                ['text'] = {
                    [1] = '{C:attention}Lie ensemble{} 4 cartes selectionnées',
                    [2] = 'où toutes les cartes possèdent',
                    [3] = 'une {C:attention}propriété différente{} {C:inactive}(valeur et couleur)'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Luchador',
                ['text'] = {
                    [1] = 'Vendez cette carte pour',
                    [2] = 'obtenir un',
                    [3] = '{C:attention}Badge fracassant'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Carton rouge',
                ['text'] = {
                    [1] = "Ce Joker octroie {C:red}+#1#{} Multi.",
                    [2] = "pour chaque choix passé",
                    [3] = 'dans les {C:attention}Paquets{}',
                    [4] = '{C:inactive}(Actuellement {C:red}+#2#{C:inactive} Multi.)'
                }
            },

            -- Main Jokers

            j_bunc_cassette = {
                ['name'] = 'Cassette',
                ['text'] = {
                    [1] = "À la défausse, retournez ce Joker de l'autre côté",
                    [2] = '{C:attention}côté A:{} les cartes ayant une couleur claire',
                    [3] = "donnent {C:chips}+#1#{} Jetons lorsqu'elles marquent des points",
                    [4] = '{C:attention}côté B:{} les cartes ayant une couleur sombre',
                    [5] = "donnent {C:mult}+#2#{} Multi. lorsqu'elles marquent des points"
                    -- TODO would be good to have a line for the side
                    -- or colorize the active side
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Joker en mosaïque',
                ['text'] = {
                    [1] = 'les {C:attention}Cartes Pierre{} jouées',
                    [2] = 'donnent {C:mult}+#1#{} Multi.',
                    [3] = "lorsqu'elles marquent des points"
                },
                ['unlock'] = {
                    [1] = 'Jouez une main de 5 cartes',
                    [2] = 'contenant uniquement des',
                    [3] = 'cartes {C:attention,E:1}Pierre{}'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Joker en voxels',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. , {X:mult,C:white}-X#2#{} Multi. pour chaque',
                    [2] = '{C:attention}Carte améliorée{} dans votre {C:attention}jeu complet{}',
                    [3] = '{C:inactive}(Actuellement {X:mult,C:white}X#3#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = 'Ayez au moins {C:attention}10',
                    [2] = '{E:1,C:attention}Cartes améliorées{} dans',
                    [3] = 'votre jeu'
                    -- TODO localize number
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Crop circles',
                ['text'] = {
                    [1] = 'La couleur de base {C:clubs}Trèfles{} donne {C:mult}+3{} Multi. ,',
                    [2] = 'Les {C:attention}8{} donnent {C:mult}+2{} Multi. ,',
                    [3] = 'Les {C:attention}Q{} {C:inactive}(reines){}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{} donnent {C:mult}+1{} Multi.'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Crop circles',
                ['text'] = {
                    [1] = 'La couleur de base {C:bunc_fleurons}Fleurons{} donne {C:mult}+4{} Multi. ,',
                    [2] = 'La couleur de base {C:clubs}Trèfles{} donne {C:mult}+3{} Multi. ,',
                    [3] = 'Les {C:attention}8{} donnent {C:mult}+2{} Multi. ,',
                    [4] = 'Les {C:attention}Q{} {C:inactive}(reines){}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{} donnent {C:mult}+1{} Multi.'
                }
            },
            j_bunc_xray = {
                ['name'] = 'Rayon X',
                ['text'] = {
                    [1] = 'Ce Joker gagne {X:mult,C:white}X#1#{} Multi.',
                    [2] = 'par carte tirée face cachée',
                    [3] = '{C:inactive}(Actuellement {X:mult,C:white}X#2#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = 'Complétez le challenge',
                    [2] = '{E:1,C:attention}Vision aux rayons X'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Effroi',
                ['text'] = {
                    [1] = 'Après avoir marqué votre {C:attention}dernière{} {C:blue}main{},',
                    [2] = 'augmente la main de {C:attention}2 niveaux{}',
                    [3] = 'et {C:attention}détruit{} les cartes ayant marqué des points',
                    [4] = '{C:red}Perdez{} tout les {C:attention}niveaux gagnés{} si vous retirez ce Joker'
                },
                ['unlock'] = {
                    [1] = 'Réduisez votre jeu',
                    [2] = "d'au moins {E:1,C:attention}10{} cartes",
                    [3] = 'en une manche'
                    -- TODO localize number
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Joker préhistorique',
                ['text'] = {
                    [1] = 'Les cartes marquantes ayant',
                    [2] = "les mêmes {C:attention}valeur et couleur{} qu'une",
                    [3] = '{C:attention}carte ayant déjà marqué{} cette manche',
                    [4] = 'donnent {C:mult}+#1#{} Multi.'
                },
                ['unlock'] = {
                    [1] = 'Jouez un',
                    [2] = '{E:1,C:attention}Flush Five'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Joker linogravé',
                ['text'] = {
                    [1] = 'Lorsque vous jouez exactement {C:attention}2{} cartes',
                    [2] = 'qui forment une {C:attention}Paire{},',
                    [3] = "convertit la couleur de la carte de {C:attention}gauche{}",
                    [4] = "en celle de la couleur de la carte de {C:attention}droite{}",
                    [5] = '{C:inactive}(Faites glisser les cartes pour les réorganiser)'
                    -- TODO this joker is a bit wordy (YES IT IS)
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'Impression fantôme',
                ['text'] = {
                    [1] = 'Donne les Jetons et le Multi.',
                    [2] = 'du dernier {C:attention}type de main{} joué',
                    [3] = '{C:inactive}(Dernière main: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Usurier',
                ['text'] = {
                    [1] = 'Obtenez {C:money}$#1#',
                    [2] = 'quand acquis...'
                },
                ['unlock'] = {
                    [1] = 'Dépensez au moins {E:1,C:attention}$100',
                    [2] = 'pendant une seule manche'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Usurier',
                ['text'] = {
                    [1] = 'Obtenez {C:money}$#1#{} quand acquis,',
                    [2] = 'fixe le prix de vente à {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Joker de la cave',
                ['text'] = {
                    [1] = 'Quand la {C:attention}Blinde Boss{} est battue,',
                    [2] = 'crée une carte {C:spectral}Spectrale{}',
                    [3] = '{C:inactive}(Selon la place disponible)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Joker berger',
                ['text'] = {
                    [1] = 'Ce Joker gagne {C:chips}+#1#{} Jetons',
                    [2] = 'quand la main jouée contient une {C:attention}Paire',
                    [3] = '{C:inactive}(Actuellement {C:chips}+#2#{C:inactive} Jetons)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Joker chevalier',
                ['text'] = {
                    [1] = 'Lorsque la {C:attention}Blinde{} est sélectionnée, {C:attention}mélange{} tout les Jokers',
                    [2] = 'et ce Joker gagne {C:mult}+#1#{} Multi. ,',
                    [3] = "se {C:red}réinitialise{} lorsqu'un Joker est réorganisé",
                    [4] = '{C:inactive}(Actuellement {C:mult}+#2#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = 'Battez {E:1,C:attention}Gland ambre',
                    [2] = 'sans la désactiver'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Joker Man & Jester Boy carte à collectionner N°54',
                ['text'] = {
                    [1] = 'les {C:attention}Paquets Standards{} contiennent',
                    [2] = 'uniquement des {C:attention}Cartes améliorées{}'
                },
                ['unlock'] = {
                    [1] = 'Ouvrez {E:1,C:attention}50',
                    [2] = 'Paquets'
                    -- TODO localize number
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Chiens jouant au poker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. si chaque valeur',
                    [2] = 'marquante est {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, ou {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Joker crochet du droit',
                ['text'] = {
                    [1] = 'Déclenche à nouveau la carte la plus à droite de',
                    [2] = 'la main jouée une fois par {C:blue}mains{} restantes',
                },
                ['unlock'] = {
                    [1] = 'Déclencher à nouveau une carte',
                    [2] = 'jouée au moins {E:1,C:attention}5 fois{}',
                    -- TODO localize number
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Joker diabolique',
                ['text'] = {
                    [1] = "Double toutes les sources d'argent,",
                    [2] = "{C:green}#1# chance sur #2#{} d'encaisser",
                    [3] = '{C:money}$1{} à la place'
                },
                ['unlock'] = {
                    [1] = 'Complétez le challenge',
                    [2] = '{E:1,C:attention}Quitte ou double'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Carnaval',
                ['text'] = {
                    [1] = 'Après avoir battu la {C:attention}Blinde Boss{},',
                    [2] = '{C:attention}détruit{} un Joker aléatoire pour',
                    [3] = "reculer d'une Mise initiale, la prochaine fois",
                    [4] = 'fonctionne uniquement sur une Mise initiale supérieure'
                    -- TODO needs a line for whether it's active / ante it will be active
                },
                ['unlock'] = {
                    [1] = 'Atteindre la Mise initiale',
                    [2] = 'niveau {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Marteau',
                ['text'] = {
                    [1] = 'Les {C:attention}Cartes Verre{} donnent +{X:mult,C:white}X#1#{} Multi.',
                    [2] = 'mais sont garanties de se briser'
                },
                ['unlock'] = {
                    [1] = 'Jouez une main de 5 cartes',
                    [2] = 'contenant uniquement des',
                    [3] = 'cartes de {C:attention,E:1}Verre{}'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Accroche-porte',
                ['text'] = {
                    [1] = "Les Jokers {C:blue}Communs{} n'apparaissent pas",
                    [2] = "{s:0.8}D'autres raretés apparaissent à la place"
                },
                ['unlock'] = {
                    [1] = 'Gagnez une partie sans',
                    [2] = 'jamais avoir de',
                    [3] = 'Jokers {C:attention}Communs{}' -- Sorry, no E:1! It doesn't work
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Empreintes digitales',
                ['text'] = {
                    [1] = 'Les cartes marquant des points dans la {C:attention}main gagnante{}',
                    [2] = 'gagnent {C:chips}+#1#{} Jetons pour',
                    [3] = 'la prochaine manche uniquement',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zero Shapiro',
                ['text'] = {
                    [1] = 'Ce Joker ajoute {C:attention}#1#X{} aux',
                    [2] = "{C:green,E:1,S:1.1}probabilités{} {C:attention}cette manche{} lorsqu'une",
                    [3] = 'carte avec une valeur {C:attention}nulle{}, {C:attention}égale à zero{}, ou {C:attention}non-numérale{}',
                    [4] = 'marque des points {C:inactive}(K, Q, J, 0, Sans valeur)',
                    [5] = '{C:inactive}(Actuellement {C:attention}X#2#{C:inactive} aux {C:green,E:1,S:1.1}probabilités{C:inactive})'
                    -- TODO not sure how to word non-countable
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = 'Les cartes {C:attention}Affaiblies{} font gagner',
                    [2] = "{C:money}$#1#{} lorsqu'elles marquent"
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Bierdeckel',
                ['text'] = {
                    [1] = 'Les cartes en main gagnent',
                    [2] = '{C:chips}+#1#{} Jetons cette manche',
                    [3] = 'après avoir joué ou défaussé'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = "Plaque d'immatriculation",
                ['text'] = {
                    [1] = '#1#',
                    [2] = 'ont les Jetons et le Multi. de toutes',
                    [3] = 'les {C:attention}mains de poker{} jouée cette partie',
                    [4] = '{s:0.8}La combination change chaque manche'
                },
                ['unlock'] = {
                    [1] = 'Complétez le challenge',
                    [2] = "{E:1,C:attention}Ville du quart d'heure"
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Joker paresseux',
                ['text'] = {
                    [1] = 'Les {C:attention}Cartes Sauvages{} jouées',
                    [2] = 'donnent {C:mult}+#1#{} Multi.',
                    [3] = "lorsqu'elles marquent des points"
                },
                ['unlock'] = {
                    [1] = 'Jouez une main de 5 cartes',
                    [2] = 'contenant uniquement des',
                    [3] = 'cartes {C:attention,E:1}Sauvages{}'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Joker néon',
                ['text'] = {
                    [1] = 'Ce Joker gagne {X:mult,C:white}X#1#{} Multi.',
                    [2] = 'par cartes {C:attention}affaiblies{} qui marquent',
                    [3] = '{C:inactive}(Actuellement {X:mult,C:white}X#2#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = 'Jouez une main de 5 cartes',
                    [2] = 'contenant uniquement des',
                    [3] = 'cartes {C:attention,E:1}Affaiblies{}'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Plan de jeu',
                ['text'] = {
                    [1] = 'Les {C:attention}Jokers{} à côté de ce Joker',
                    [2] = 'sont {C:red}affaiblis{} et',
                    [3] = 'donnent {C:mult}+#1#{} Multi.'
                },
                ['unlock'] = {
                    [1] = 'Battez {E:1,C:attention}Feuille verte',
                    [2] = 'sans la désactiver'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Conquête',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Jetons,',
                    [2] = '{C:red}affaiblit{} un Joker aléatoire',
                    [3] = 'quand la {C:attention}Blinde{} est selectionnée'
                },
                ['unlock'] = {
                    [1] = 'Battez {E:1,C:attention}Cœur écarlate',
                    [2] = 'sans le désactiver'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Hiérarchie des besoins',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi. par',
                    -- TODO do wilds count, or base suit only?
                    [2] = '{C:attention}As-2{} de la même couleur',
                    [3] = 'dans votre {C:attention}jeu complet',
                    [4] = '{C:inactive}(Actuellement {C:mult}+#2#{C:inactive} Multi.)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Joker nain',
                ['text'] = {
                    [1] = 'Les {C:attention}Cartes Pierre{} tenues en main',
                    [2] = 'ont les capacités des',
                    [3] = 'cartes {C:attention}Acier{} et des cartes {C:attention}Or'
                },
                ['unlock'] = {
                    [1] = 'Jouez une main qui',
                    [2] = 'contient des cartes {E:1,C:attention}Pierre{}, {E:1,C:attention}Acier,',
                    [3] = 'et {E:1,C:attention}Or{}'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Aristocrate',
                ['text'] = {
                    [1] = 'Choisissez une carte supplémentaire',
                    [2] = 'dans les {C:attention}Paquets'
                },
                ['unlock'] = {
                    [1] = 'Gagnez une partie sans',
                    [2] = 'jamais ouvrir',
                    [3] = 'de {C:attention,E:1}Paquets'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Métallurgiste',
                ['text'] = {
                    [1] = 'Les {C:attention}Cartes Or{} donnent {C:mult}+#1#{} Multi.',
                    [2] = "lorsqu'elles sont tenues en main"
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Jongleur',
                ['text'] = {
                    [1] = 'Ajoute une édition {C:dark_edition}Brillante{}, {C:dark_edition}Holographique{},',
                    [2] = '{C:dark_edition}Polychrome{}, ou {C:dark_edition}Pailleté{}',
                    [3] = 'à un {C:attention}consommable{}',
                    [4] = 'lorsque la {C:attention}Blinde{} est sélectionnée'
                },
                ['unlock'] = {
                    [1] = 'Utilisez {C:attention,E:1}10{} consommables',
                    [2] = 'ayant une {C:attention,E:1}Edition'
                    -- TODO localize number
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Tête dans les nuages',
                ['text'] = {
                    [1] = "{C:green}#1# chance sur #2#{} d'améliorer",
                    [2] = '{C:attention}Carte Haute{} lorsque vous',
                    [3] = "améliorez n'importe quelle {C:attention}main de poker"
                },
                ['unlock'] = {
                    [1] = 'Gagnez une partie avec',
                    [2] = '{C:attention,E:1}Carte Haute{} comme main',
                    [3] = 'avec le niveau le plus élevé'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Tir à la tête',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. si la main jouée',
                    [2] = 'contient uniquement une seule',
                    [3] = '{C:attention}carte figure{} marquant des points'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Doigt sur la détente',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. ,',
                    [2] = '{C:attention}sélectionner{} une carte a',
                    [3] = '{C:green}#2# chance(s) sur #3#{} de',
                    [4] = 'jouer les cartes sélectionnées'
                },
                ['unlock'] = {
                    [1] = 'Battez {E:1,C:attention}Cloche céruléenne',
                    [2] = 'sans la désactiver'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Marelle',
                ['text'] = {
                    [1] = 'Obtenez {C:red}+#1#{} défausse',
                    [2] = 'si la main jouée',
                    [3] = 'contient une {C:attention}Suite{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Pion',
                ['text'] = {
                    [1] = 'Les cartes avec la valeur',
                    [2] = 'la plus {C:attention}basse{} de votre jeu complet',
                    [3] = "{C:attention}augmentent de valeur{} lorsqu'elles",
                    [4] = "marquent des points"
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Planche de puzzle',
                ['text'] = {
                    [1] = "Lorsqu'une carte {C:tarot}Tarot{} est utilisée,",
                    [2] = "{C:green}#1# chance sur #2#{} d'ajouter",
                    [3] = 'une édition {C:dark_edition}Brillante{}, {C:dark_edition}Holographique{}, ou',
                    [4] = '{C:dark_edition}Polychrome{} à une carte sélectionnée',
                    [5] = 'aléatoire'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Vandalisme',
                ['text'] = {
                    [1] = '{C:green}#1# chance sur #2#{} que',
                    [2] = 'les cartes soient tirées face cachée',
                    [3] = 'Les cartes face cachée donnent',
                    [4] = "{X:mult,C:white}X#3#{} Multi. lorsqu'elles marquent des points"
                },
                ['unlock'] = {
                    [1] = 'Jouez une main de 5 cartes',
                    [2] = 'contenant uniquement des',
                    [3] = 'cartes {C:attention,E:1}Faces cachées{}'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Manifestant',
                ['text'] = {
                    [1] = 'Ajoute {C:attention}#1#X{} la plus grande valeur',
                    [2] = 'défaussée cette manche aux Jetons',
                    [3] = '{C:inactive}(Actuellement {C:chips}+#2#{C:inactive} Jetons)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Gribouilli',
                ['text'] = {
                    [1] = '{C:attention}Copie{} le premier consommable',
                    [2] = 'utilisé cette manche',
                    [3] = '{C:inactive}(Selon la place disponible)'
                },
                ['unlock'] = {
                    [1] = 'Gagnez {C:attention,E:1}10{} parties'
                    -- TODO localize number
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Disproportionnalité',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Running Gag',
                ['text'] = {
                    [1] = 'Crée un "{C:attention}Joker{}"',
                    [2] = '{C:dark_edition}Négatif{} au début',
                    [3] = 'de chaque magasin'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'À Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Jetons et {C:mult}+#2#{} Multi. si',
                    [2] = 'la main jouée contient une {C:attention}Suite{}',
                    [3] = 'avec une {C:attention}carte figure{} marquant des points'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi. si aucune',
                    [2] = '{C:attention}Carte améliorée{}',
                    [3] = 'ne marque de points'
                },
                ['unlock'] = {
                    [1] = 'Gagnez une partie sans jamais',
                    [2] = 'avoir de {C:attention,E:1}Cartes améliorées'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Critique',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Multi. si le score actuel",
                    [2] = 'de la main jouée est',
                    [3] = '{C:attention}moins de 1/#2#{} du',
                    [4] = "score requis de la blinde"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Téléphone',
                ['text'] = {
                    [1] = '{C:attention}Renvoie{} les cartes marquant',
                    [2] = 'des points à la main si après la première main jouée',
                    [3] = "de la manche aucune défausse n'a été utilisée"
                }
            },
            j_bunc_wino = {
                ['name'] = 'Alcoolo',
                ['text'] = {
                    [1] = 'Les cartes jouées avec',
                    [2] = '{C:hearts}Cœur{} et {C:diamonds}Carreau{} comme couleur',
                    [3] = "donnent {C:chips}+#1#{} Jetons lorsqu'elle marquent des points"
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Chasseur de prime',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi. pour',
                    [2] = 'chaque {C:money}$1{} en dessous de {C:money}$0',
                    [3] = '{C:inactive}(Actuellement {C:mult}+#2#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = 'Ayez moins de {E:1,C:attention}$-20',
                    [2] = 'pendant une seule partie'
                    -- TODO localize number
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Piège à souris',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Jetons,',
                    [2] = '{C:green}#2# chance(s) sur #3#{} de',
                    [3] = '{C:attention}perdre{} une main à la place'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'Le Joker',
                ['text'] = {
                    [1] = 'Après avoir joué, chaque carte',
                    [2] = 'marquante sans amélioration a',
                    [3] = "{C:green}#1# chance sur #2#{} d'être détruite",
                },
                ['unlock'] = {
                    [1] = 'Découvrez toutes',
                    [2] = 'les {C:attention}Blindes Boss'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangram',
                ['text'] = {
                    [1] = "Lorsqu'un {C:attention}7{} marque des points,",
                    [2] = '{C:mult}+#1#{} Multi. fois le',
                    [3] = 'nombre de {C:attention}7{} marquant des points'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Domino',
                ['text'] = {
                    [1] = "Lors de l'{C:attention}acquisition{} ou de l'{C:attention}utilisation",
                    [2] = "d'une carte depuis le magasin ou depuis",
                    [3] = 'un Paquet, obtenez {C:attention}2',
                    [4] = 'cartes adjacentes si possible'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Joker zélé',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi. si la main',
                    [2] = 'jouée contient',
                    [3] = 'un {C:attention}Spectre'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Joker sinistre',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Jetons si la main',
                    [2] = 'jouée contient',
                    [3] = 'un {C:attention}Spectre'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Joker envieux',
                ['text'] = {
                    [1] = 'Les cartes jouées avec',
                    [2] = 'une couleur {C:bunc_fleurons}Fleuron{} octroient',
                    [3] = "{C:mult}+#1#{} au Multi. lorsqu'elles marquent des points"
                }
            },
            j_bunc_proud = {
                ['name'] = 'Joker fier',
                ['text'] = {
                    [1] = 'Les cartes jouées avec',
                    [2] = 'une couleur {C:bunc_halberds}Hallebarde{} octroient',
                    [3] = "{C:mult}+#1#{} au Multi. lorsqu'elles marquent des points"
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Vœulliage',
                ['text'] = {
                    [1] = '{C:green}#1# chance sur #2#{} pour',
                    [2] = 'les {C:bunc_fleurons}Fleurons{} joués de',
                    [3] = 'gagner {C:money}${} égaux aux',
                    [4] = "Jetons de la carte jouée"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Unobtanium',
                ['text'] = {
                    [1] = 'Les cartes jouées avec',
                    [2] = '{C:bunc_halberds}Hallebarde{} comme couleur donnent',
                    [3] = '{C:chips}+#1#{} Jetons et {C:mult}+#2#{} Multi.',
                    [4] = "lorsqu'elles marquent des points"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'La dynastie',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. si la main',
                    [2] = 'jouée contient',
                    [3] = 'u, {C:attention}Spectre'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Baguette magique',
                ['text'] = {
                    [1] = 'Ce Joker obtient {X:mult,C:white}X#1#{} Multi.',
                    [2] = 'par mains jouées {C:attention}consecutives{}',
                    [3] = 'contenant un {C:attention}Spectre{}',
                    [4] = '{C:inactive}(Actuellement {X:mult,C:white}X#2#{C:inactive} Multi.)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Carambole',
                ['text'] = {
                    [1] = "{C:green}#1# chance sur #2#{} d'augmenter le niveau de la",
                    [2] = '{C:attention}main de poker{} jouée si elle contient un {C:attention}Spectre',
                    [3] = '{C:green}#1# chance sur #3#{} de détruire ce Joker à la fin de la manche',
                    [4] = 'si une main contenant un {C:attention}Spectre{} a été jouée pendant cette manche'
                    -- TODO this joker is way too long (YES)
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Fondue',
                ['text'] = {
                    [1] = 'Les cartes marquant des points dans la',
                    [2] = '{C:attention}première main{} de la manche sont',
                    [3] = 'converties en {C:bunc_fleurons}Fleurons'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Myopie',
                ['text'] = {
                    [1] = '{C:spades}Piques{} et {C:clubs}Trèfles{}',
                    [2] = 'comptent comme des {C:bunc_halberds}Hallebardes'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Astigmatisme',
                ['text'] = {
                    [1] = '{C:hearts}Cœurs{} et {C:diamonds}Carreaux{}',
                    [2] = 'comptent comme des {C:bunc_fleurons}Fleurons'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Roy G. Biv',
                ['text'] = {
                    [1] = "{C:green}#1# chance sur #2#{} d'ajouter",
                    [2] = 'une édition {C:dark_edition}Polychrome{}',
                    [3] = 'a une carte marquante aléatoire si',
                    [4] = 'la main jouée contient un {C:attention}Spectre'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. par {C:bunco_exotic}Carte éxotique{}',
                    [2] = 'dans votre {C:attention}jeu complet',
                    [3] = '{C:inactive}(Actuellement {X:mult,C:white}X#2#{C:inactive} Multi.)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'Le pâle',
                ['text'] = {
                    [1] = 'Jouer ou Défausser coûtent',
                    [2] = 'tout les deux main et défausse'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = "L'ombrelle",
                ['text'] = {
                    [1] = 'Après avoir joué, retourne toutes',
                    [2] = 'les cartes en main face cachée'
                }
            },
            bl_bunc_tine = {
                ['name'] = "L'arête",
                ['text'] = {
                    [1] = 'Chaque #1# est affaiblit'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'Le pivot',
                ['text'] = {
                    [1] = 'Après avoir joué ou défaussé,',
                    [2] = 'retourne toutes les cartes'
                }
            },
            bl_bunc_miser = {
                ['name'] = "L'avare",
                ['text'] = {
                    [1] = 'Passez le magasin après',
                    [2] = 'avoir battu cette blinde'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'La porte',
                ['text'] = {
                    [1] = 'Les cartes ne peuvent',
                    [2] = 'pas être désélectionnées'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'La flamme',
                ['text'] = {
                    [1] = 'Toutes les cartes améliorées',
                    [2] = 'sont affaiblies'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'Le masque',
                ['text'] = {
                    [1] = '#1# possède les Jetons',
                    [2] = 'et le Multi. de base de #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'Le rempart',
                ['text'] = {
                    [1] = 'Jouer un(e) #1# défausse',
                    [2] = 'toutes les cartes en main'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'La butte',
                ['text'] = {
                    [1] = 'Avoir plus de $5',
                    [2] = 'affaiblit la première main piochée'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'La pierre',
                ['text'] = {
                    [1] = '+1X le score de base pour',
                    [2] = 'chaque $10 tenu'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'Le sable',
                ['text'] = {
                    [1] = '+1X le score de base pour',
                    [2] = 'chaque badge tenu'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'La lame',
                ['text'] = {
                    [1] = 'La première fois que le score dépasse #1#,',
                    [2] = 'le score de la main jouée est égal à 0'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'La griffe',
                ['text'] = {
                    [1] = 'Les cartes défaussées',
                    [2] = 'retournent dans le jeu'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'Le voile',
                ['text'] = {
                    [1] = 'Les cartes sélectionnées sont',
                    [2] = 'retournées face cachée'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'La carcasse',
                ['text'] = {
                    [1] = 'Ne jouez pas de cartes figures'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'Le vent',
                ['text'] = {
                    [1] = 'Le Joker le plus à gauche',
                    [2] = 'est affaibli'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'Le prince',
                ['text'] = {
                    [1] = 'Tout les Jokers sont affaiblis',
                    [2] = "jusqu'à ce que la première main soit jouée"
                }
            },
            bl_bunc_depths = {
                ['name'] = 'Les profondeurs',
                ['text'] = {
                    [1] = 'Après avoir joué, obtenez un badge',
                    [2] = 'Éternel, Périssable, ou Diffus'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'Le gouffre',
                ['text'] = {
                    [1] = 'Après avoir joué, obtenez un badge',
                    [2] = 'Entravé, Reactif, ou Location'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Couronne chartreuse',
                ['text'] = {
                    [1] = 'Les cartes Pique, Cœur, Trèfle, et Carreau',
                    [2] = 'sont affaiblies'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Trident vermillon',
                ['text'] = {
                    [1] = 'Pas de magasins cette Mise initiale'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Tour indigo',
                ['text'] = {
                    [1] = "Les cartes n'ayant pas été jouée durant",
                    [2] = 'cette Mise initiale sont affaiblies'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Dague magenta',
                ['text'] = {
                    [1] = 'Défausser des cartes les joue',
                    [2] = 'et soustrait leur valeur au score'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Bouclier turquoise',
                ['text'] = {
                    [1] = 'Le score en excès cette Mise initiale',
                    [2] = "est ajouté au score requis de cette blinde"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Jeu féérique',
                ['text'] = {
                    [1] = 'Après avoir battu chaque',
                    [2] = '{C:attention}Blinde Boss{}, ajoute #1#',
                    [3] = '{C:bunco_exotic,T:bunc_exotic_cards}#2#{} aléatoire',
                    [4] = 'à votre jeu'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Jeu digital',
                ['text'] = {
                    [1] = 'les cartes {C:bunco_virtual_dark}Polymino{} peuvent',
                    [2] = 'apparaître dans le magasin,',
                    [3] = "commençez avec {C:bunco_virtual_dark,T:c_bunc_the_i}Le I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Badge de boss',
                ['text'] = {
                    [1] = 'Octroie un',
                    [2] = '{C:attention}Paquet Blinde'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Badge double',
                ['text'] = {
                    [1] = 'Octroie une copie du',
                    [2] = 'prochain {C:attention}Badge{} sélectionné',
                    [3] = '{s:0.6,C:attention}Badge double et triple{s:0.8} exclus'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Badge fracassant',
                ['text'] = {
                    [1] = 'Désactive la prochaine',
                    [2] = '{C:attention}Blinde Boss{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = "Badge d'arcade",
                ['text'] = {
                    [1] = 'Octroie un',
                    [2] = '{C:bunco_virtual_dark}Paquet Méga-Virtuel'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Badge triple',
                ['text'] = {
                    [1] = 'Octroie deux copies du',
                    [2] = 'prochain {C:attention}Badge{} sélectionné',
                    [3] = '{s:0.8,C:attention}Badge triple{s:0.8} exclus'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Badge pailleté',
                ['text'] = {
                    [1] = 'Le prochain Joker en édition de base',
                    [2] = 'du magasin sera gratuit et',
                    [3] = 'obtiendra le statut {C:dark_edition}Pailleté'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Badge fluorescent',
                ['text'] = {
                    [1] = 'Le prochain Joker en édition de base',
                    [2] = 'du magasin sera gratuit et',
                    [3] = 'obtiendra le statut {C:dark_edition}Fluorescent'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Badge jetons',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Jetons à la prochaine main'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Badge multi.',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi. à la prochaine main',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Badge megamulti.',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi. à la prochaine main',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Badge ultrajetons',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Jetons à la prochaine main'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Badge filigrane',
                ['text'] = {
                    [1] = 'Le prochain {C:attention}Paquet Standard{} ouvert',
                    [2] = 'ne contiendra que des {C:bunco_exotic}Cartes éxotiques'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Badge éternel',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Éternel{}"
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Badge périssable',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Périssable{}"
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Badge diffus',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Diffus{}"
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Badge entravé',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Entravé{}"
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Badge réactif',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Réactif{}"
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Badge de location',
                ['text'] = {
                    [1] = 'Le prochain Joker',
                    [2] = "obtiendra l'autocollant {C:attention}Location{}"
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Pailleté',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Jetons'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Fluorescent',
                ['text'] = {
                    [1] = 'Ne peut pas être retourné, affaibli',
                    [2] = 'ou forcé à être sélectionné'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Laminage',
                ['text'] = {
                    [1] = 'Les consommables dans',
                    [2] = 'les {C:attention}Paquets{} peuvent',
                    [3] = 'apparaître avec une {C:dark_edition}Édition'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Surcouche',
                ['text'] = {
                    [1] = 'Tout les consommables dans',
                    [2] = 'les {C:attention}Paquets{}',
                    [3] = 'apparaîtront avec une {C:dark_edition}Édition'
                },
                ['unlock'] = {
                    [1] = 'Utilisez {C:attention,E:1}5{} consommables',
                    [2] = 'avec des {C:attention,E:1}Éditions'
                    -- TODO localize number
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Taille-haie',
                ['text'] = {
                    [1] = "Réduit le score de la blinde",
                    [2] = 'de {C:attention}#1#%{} chaque main jouée'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Tronçonneuse',
                ['text'] = {
                    [1] = 'Tout les scores requis',
                    [2] = 'sont réduits de {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Réduisez un score de blinde avec",
                    [2] = 'Taille-haie',
                    [3] = 'un total de {C:attention,E:1}20{} fois'
                    -- TODO localize number
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Boules et gobelets",
                ['text'] = {
                    [1] = '{C:attention}+1{} emplacement de Paquet',
                    [2] = 'disponible dans le magasin'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Bonneteau',
                ['text'] = {
                    [1] = 'Relançez le {C:attention}contenu',
                    [2] = 'des Paquets',
                    [3] = '{C:attention}1{} fois par paquet'
                },
                ['unlock'] = {
                    [1] = 'Ouvrir {E:1,C:attention}25',
                    [2] = 'Paquets'
                    -- TODO localize number
                }
            },
            v_bunc_disguise = {
                ['name'] = 'Déguisement',
                ['text'] = {
                    [1] = 'Les {C:attention}Paquets Blinde{} peuvent',
                    [2] = 'apparaître dans le magasin'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Mascarade',
                ['text'] = {
                    [1] = 'Tout les {C:attention}Paquets Blinde{} dans',
                    [2] = 'le magasin sont gratuits'
                },
                ['unlock'] = {
                    [1] = 'Remplacez {E:1,C:attention}5{}',
                    [2] = 'Blindes avec des Blindes',
                    [3] = 'des Paquets Blinde'
                    -- TODO localize number
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = 'Sac Banane',
                ['text'] = {
                    [1] = '{C:green}#1# chance sur #2#{} de',
                    [2] = 'gagner un {C:attention}Badge double',
                    [3] = "à chaque fois qu'une blinde",
                    [4] = 'est {C:attention}passée'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = "Collecteur de Pin's",
                ['text'] = {
                    [1] = 'Chaque nouveau {C:attention}Badges double',
                    [2] = 'apparaissent comme des {C:attention}Badges triple'
                },
                ['unlock'] = {
                    [1] = 'Passez un total de',
                    [2] = '{E:1,C:attention}30{} blindes'
                    -- TODO localize number
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = "Borne d'arcade",
                ['text'] = {
                    [1] = 'Les {C:bunco_virtual_dark}Paquets Virtuel',
                    [2] = 'apparaissent {C:attention}4X{} plus souvent'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = 'Les cartes {C:bunco_virtual_dark}Polymino{} permettent de',
                    [2] = 'lier {C:attention}une carte de plus{}',
                    [3] = "{s:0.6,C:inactive}La carte supplémentaire peut être de n'importe quelle propriété"
                },
                ['unlock'] = {
                    [1] = 'Créez un total de',
                    [2] = '{E:1,C:attention}10{} groupes liés'
                    -- TODO localize number
                }
            }
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Mise cyan',
                ['text'] = {
                    [1] = 'Les magasins peuvent posséder des Jokers {C:attention}diffus{}',
                    [2] = '{C:inactive,s:0.8}(Détruit un Joker aléatoire quand vendu ou détruit)'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Mise rose',
                ['text'] = {
                    [1] = 'Les magasins peuvent posséder des Jokers {C:attention}entravé{}',
                    [2] = "{C:inactive,s:0.8}(Reste dans son emplacement jusqu'à la fin du tour où il a été vendu)"
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Mise magenta',
                ['text'] = {
                    [1] = 'Les magasins peuvent posséder des Jokers {C:attention}réactif{}',
                    [2] = "{C:inactive,s:0.8}(Affaibli si aucune blinde n'est passée durant cette Mise initiale)"
                }
            }
        }
    }
}