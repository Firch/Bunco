return {
    misc = {
        dictionary = {

            -- Config values

            bunc_colorful_finishers = 'Bui Finali Colorati',
            bunc_colorful_finishers_desc = 'Attiva uno sfondo colorato contro i bui finali',
            bunc_colorful_finishers_desc_2 = 'e rimuove lo sfondo grigio in Modalità Infinita',

            bunc_high_quality_shaders = 'Shader Alta Qualità',
            bunc_high_quality_shaders_desc = 'Forza alcuni shader a renderizzare',
            bunc_high_quality_shaders_desc_2 = 'a qualità massima (può rallentare il gioco)',

            bunc_fixed_sprites = 'Ripara Texture',
            bunc_fixed_sprites_desc = 'Rimuove piccoli problemi da alcuni sprite,',
            bunc_fixed_sprites_desc_2 = 'come pixel casuali e buchi. Migliora la qualità.',

            bunc_gameplay_reworks = 'Miglioramento Meccaniche',
            bunc_gameplay_reworks_desc = 'Cambia alcune meccaniche originali',
            bunc_gameplay_reworks_desc_2 = 'per rendere il gioco più godibile',

            bunc_fixed_badges = 'Aggiusta Consumabili',
            bunc_fixed_badges_desc = 'Cambia lo sprite nei Consumabili ',
            bunc_fixed_badges_desc_2 = 'per indicare chiaramente il metodo di ottenimento',

            bunc_jokerlike_consumable_editions = 'Edizioni nei Consumabili',
            bunc_jokerlike_consumable_editions_desc = 'Permette ai consumabili con edizione di comportarsi',
            bunc_jokerlike_consumable_editions_desc_2 = 'come Jolly (per risolvere conflitti con alte Mod)',

            bunc_default_true = 'Predefinito: abilitato',
            bunc_default_false = 'Predefinito: disabilitato',
            bunc_requires_restart = 'Richiede un riavvio',

            -- Miscellaneous

            bunc_a_side = 'Lato A',
            bunc_b_side = 'Lato B',
            bunc_copied = 'Copiato!',
            bunc_nothing = 'Niente',
            bunc_chips = 'Fiche',
            bunc_loop = 'Ancora!',
            bunc_chance = 'probabilità',
            bunc_word_and = 'e',
            bunc_debuffed = 'Penalizzato!',
            bunc_pew = 'Pum!',
            bunc_declined = 'Rifiutato...',
            bunc_accepted = 'Accettato!',
            bunc_robbed = 'Rubato!',
            bunc_ouch = 'AHIA!',
            bunc_inactive = 'inattivo',
            bunc_repeat = 'Ripeti!',
            bunc_thoth_tarot = 'Tarocco Thoth',
            bunc_thoth_tarots = 'Tarocchi Thoth',
            bunc_mysterious_tarot = 'Tarocco?',
            bunc_mysterious_polymino = 'Polymino?',
            bunc_most_played_rank = '(valore più giocato)',
            bunc_least_played_hand = '(mano meno giocata)',
            bunc_blade = '(punteggio buio x1.5)',
            bunc_exceeded_score = 'Limite superato!',
            bunc_min_ante = 'Posta minima:',
            bunc_final_blind = 'Ultimo Buio',

            -- Consumable types

            k_polymino = 'Polymino',
            b_polymino_cards = 'Carte Polymino',

            -- Booster types

            k_bunc_blind_pack = 'Busta Buio',
            k_bunc_virtual_pack = 'Busta Virtuale'
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Fregio',
            bunc_Halberds = 'Alabarda'
        },
        suits_plural = {
            bunc_Fleurons = 'Fregi',
            bunc_Halberds = 'Alabarde'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Spettro',
            ['bunc_Straight Spectrum'] = 'Scala Spettrale',
            ['bunc_Straight Spectrum (Royal)'] = 'Spettro Reale',
            ['bunc_Spectrum House'] = 'Full Spettrale',
            ['bunc_Spectrum Five'] = 'Cinque Spettri',
            ['bunc_Deal'] = 'Deal'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '5 carte di seme diverso'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5 carte di fila (valori seguenti),',
                [2] = 'ciascuna di un seme diverso'
            },
            ['bunc_Spectrum House'] = {
                [1] = 'Un Tris e una Coppia in cui',
                [2] = 'ogni carta ha un seme diverso'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '5 carte dello stesso valore,',
                [2] = 'ciascuna di un seme diverso'
            },
            ['bunc_Deal'] = {
                [1] = '5 valori scelti',
                [2] = 'da Registration Plate'
            }
        },
        labels = {

            -- Editions

            bunc_glitter = 'Brillantinata',
            bunc_fluorescent = 'Fluorescente',

            -- Stickers

            bunc_scattering = 'Dispersivo',
            bunc_hindered = 'Intralciato',
            bunc_reactive = 'Reattivo'
        },
        collab_palettes = {
            default_Spades = {
                ['3'] = 'Nuovo Contrasto'
            },
            default_Hearts = {
                ['3'] = 'Nuovo Contrasto'
            },
            default_Clubs = {
                ['3'] = 'Nuovo Contrasto'
            },
            default_Diamonds = {
                ['3'] = 'Nuovo Contrasto'
            }
        },
        collabs = {
            bunc_Fleurons = {
                ['1'] = 'Default',
                ['2'] = 'Duck Game',
                ['3'] = 'LISA: The Painful'
            },
            bunc_Halberds = {
                ['1'] = 'Default',
                ['2'] = 'Fiend Folio',
                ['3'] = 'LISA: The Pointless'
            }
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} fiche bonus questo round'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Collegate{} in questo gruppo:'}},
            bunc_linked_group = {
                ['name'] = 'Collegate',
                ['text'] = {
                    [1] = 'Le carte Collegate',
                    [2] = 'vengono pescate, selezionate',
                    [3] = 'e distrutte {C:attention}insieme'
                }
            },
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Collegate{} nel gruppo pescato'}},
            bunc_light_suits = {
                ['name'] = 'Semi Chiari',
                ['text'] = {
                    [1] = '{C:hearts}Cuori{} e {C:diamonds}Quadri'
                }
            },
            bunc_light_suits_exotic = {
                ['name'] = 'Semi Chiari',
                ['text'] = {
                    [1] = '{C:hearts}Cuori{}, {C:diamonds}Quadri,',
                    [2] = 'e {C:bunc_fleurons}Fregi'
                }
            },
            bunc_dark_suits = {
                ['name'] = 'Semi Scuri',
                ['text'] = {
                    [1] = '{C:spades}Picche{} e {C:clubs}Fiori'
                }
            },
            bunc_dark_suits_exotic = {
                ['name'] = 'Semi Scuri',
                ['text'] = {
                    [1] = '{C:spades}Picche{}, {C:clubs}Fiori,',
                    [2] = 'e {C:bunc_halberds}Alabarde'
                }
            },
            bunc_exotic_cards = {
                ['name'] = 'Carte Esotiche',
                ['text'] = {
                    [1] = 'Carte del seme di',
                    [2] = '{C:bunc_fleurons}Fregi{} o {C:bunc_halberds}Alabarde{}'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = 'Laminata',
                ['text'] = {
                    [1] = 'Crea un {C:attention}Patto Fiche'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = 'Olografica',
                ['text'] = {
                    [1] = 'Crea un {C:attention}Patto Molt'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = 'Policroma',
                ['text'] = {
                    [1] = 'Crea un {C:attention}Patto Megamolt'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = 'Brillantinata',
                ['text'] = {
                    [1] = 'Crea un {C:attention}Patto Ultrafiche'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Non Scoperto',
                ['text'] = {
                    [1] = 'Compra o usa',
                    [2] = 'questa carta in',
                    [3] = 'una run senza seed',
                    [4] = 'per scoprire cosa fa'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = 'Busta Buio',
                ['text'] = {
                    [1] = 'Scegli 1 tra {C:attention}#1#',
                    [2] = '{C:attention}Bui Boss{} con cui rimpiazzare',
                    [3] = 'il {C:attention}Buio Boss{} di questa Posta'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = 'Busta Virtuale',
                ['text'] = {
                    [1] = 'Pesca tutto il mazzo e',
                    [2] = 'scegli da {C:attention}#1#{} a',
                    [3] = '{C:attention}#2#{} carte {C:bunco_virtual_dark}Polymino{}',
                    [4] = 'da usare immediatamente'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = 'Super Busta Virtuale',
                ['text'] = {
                    [1] = 'Pesca tutto il mazzo e',
                    [2] = 'scegli da {C:attention}#1#{} a',
                    [3] = '{C:attention}#2#{} carte {C:bunco_virtual_dark}Polymino{}',
                    [4] = 'da usare immediatamente'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = 'Mega Busta Virtuale',
                ['text'] = {
                    [1] = 'Pesca tutto il mazzo e',
                    [2] = 'scegli da {C:attention}#1#{} a',
                    [3] = '{C:attention}#2#{} carte {C:bunco_virtual_dark}Polymino{}',
                    [4] = 'da usare immediatamente'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Dispersivo',
                ['text'] = {
                    [1] = 'Distrugge un',
                    [2] = 'Jolly adiacente casuale',
                    [3] = 'quando viene rimosso'
                }
            },
            bunc_hindered = {
                ['name'] = 'Intralciato',
                ['text'] = {
                    [1] = 'Rimane al suo posto',
                    [2] = 'fino alla fine del round',
                    [3] = 'dopo essere stato venduto'
                }
            },
            bunc_reactive = {
                ['name'] = 'Reattivo',
                ['text'] = {
                    [1] = 'Ad ogni Posta, penalizzato',
                    [2] = 'finché non salti un Buio'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Adesivo Ciano',
                ['text'] = {
                    [1] = 'Hai usato questo Jolly',
                    [2] = 'per vincere in difficoltà',
                    [3] = '{C:attention}Puntata Ciano{}'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Adesivo Rosa',
                ['text'] = {
                    [1] = 'Hai usato questo Jolly',
                    [2] = 'per vincere in difficoltà',
                    [3] = '{C:attention}Puntata Rosa{}'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Adesivo Magenta',
                ['text'] = {
                    [1] = 'Hai usato questo Jolly',
                    [2] = 'per vincere in difficoltà',
                    [3] = '{C:attention}Puntata Magenta{}'
                }
            }
        },

        -- Consumables

        Tarot = {

            -- Reworked Tarots

            c_bunc_wheel_of_fortune = {
                ['name'] = 'la Ruota della Fortuna',
                ['text'] = {
                    [1] = '{C:green}#1# probabilità su #2#{} di applicare',
                    [2] = 'un\'edizione {C:dark_edition}Laminata{}, {C:dark_edition}Olografica{},',
                    [3] = '{C:dark_edition}Policroma{}, o {C:dark_edition}Brillantinata{}',
                    [4] = 'a un {C:attention}Jolly{} casuale'
                }
            },

            -- Main Tarots

            c_bunc_adjustment = {
                ['name'] = 'Assestamento',
                ['text'] = {
                    [1] = 'Potenzia fino a {C:attention}#1#{}',
                    [2] = 'carte selezionate in',
                    [3] = '{C:attention}#2#'
                },
                ['unlock'] = {
                    [1] = 'Scopri almeno',
                    [2] = '{C:attention}#1#{} elementi della',
                    [3] = 'tua collezione'
                }
            },
            c_bunc_art = {
                ['name'] = 'L\'Arte',
                ['text'] = {
                    [1] = 'Potenzia fino a {C:attention}#1#{}',
                    [2] = 'carte selezionate in',
                    [3] = '{C:attention}#2#'
                },
                ['unlock'] = {
                    [1] = 'Scopri almeno',
                    [2] = '{C:attention}#1#{} elementi della',
                    [3] = 'tua collezione'
                }
            },
            c_bunc_universe = {
                ['name'] = 'L\'Universo',
                ['text'] = {
                    [1] = 'Cambia {C:attention}casualmente{} il seme,',
                    [2] = 'il valore, il potenziamento',
                    [3] = 'l\'edizione e il sigillo di',
                    [4] = 'fino a {C:attention}#1#{} carte selezionate'
                },
                ['unlock'] = {
                    [1] = 'Scopri almeno',
                    [2] = '{C:attention}#1#{} elementi della',
                    [3] = 'tua collezione'
                }
            },
            c_bunc_lust = {
                ['name'] = 'Lussuria',
                ['text'] = {
                    [1] = 'Dà {C:money}$#1#{} per ogni',
                    [2] = 'carta tenuta in mano',
                    [3] = '{C:inactive}(Massimo {C:money}$#2#{C:inactive})',
                    [4] = '{C:inactive}(Attualmente {C:money}$#3#{C:inactive})'
                },
                ['unlock'] = {
                    [1] = 'Scopri almeno',
                    [2] = '{C:attention}#1#{} elementi della',
                    [3] = 'tua collezione'
                }
            },
            c_bunc_sky = {
                ['name'] = 'Il Cielo',
                ['text'] = {
                    [1] = 'Converte fino a',
                    [2] = '{C:attention}#1#{} carte selezionate',
                    [3] = 'in {C:bunc_fleurons}Fregi{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = 'L\'Abisso',
                ['text'] = {
                    [1] = 'Converte fino a',
                    [2] = '{C:attention}#1#{} carte selezionate',
                    [3] = 'in {C:bunc_fleurons}Alabarde{}'
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

            -- Reworked Spectrals

            c_bunc_aura = {
                ['name'] = 'Aura',
                ['text'] = {
                    [1] = 'Applica un effetto {C:dark_edition}Laminato{},',
                    [2] = '{C:dark_edition}Olografico{}, {C:dark_edition}Policromo{} o',
                    [3] = '{C:dark_edition}Brillantinato{} a {C:attention}1{} carta selezionata'
                }
            },

            -- Main Spectrals

            c_bunc_cleanse = {
                ['name'] = 'Purifica',
                ['text'] = {
                    [1] = 'Applica un effetto {C:dark_edition}Fluorescente{} a',
                    [2] = '{C:attention}#1#{} carte selezionate nella mano'
                }
            },
            c_bunc_the_8 = {
                ['name'] = 'L\'8',
                ['text'] = {
                    [1] = '{C:attention}Collega{} un {C:attention}numero',
                    [2] = '{C:attention}qualsiasi{} di carte',
                    [3] = 'non collegate nella tua mano',
                    [4] = '{C:inactive,s:0.6}(Selezione illimitata finché L\'8 resta selezionato)'
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'La I',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'con lo {C:attention}stesso valore o seme'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'La O',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove 2 carte condividono la {C:attention}stessa proprietà',
                    [3] = '{C:inactive}(valore o seme){} e le altre due carte',
                    [4] = 'condividono un {C:attention}tipo diverso{} della {C:attention}stessa proprietà'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'La T',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove 3 carte condividono la {C:attention}stessa proprietà',
                    [3] = '{C:inactive}(valore o seme){} e l\'altra carta',
                    [4] = '{C:attention}non condivide{} la {C:attention}stessa proprietà{}',
                    [5] = 'delle altre carte'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'La S',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove {C:attention}2 gruppi{} di 2 carte condividono',
                    [3] = 'lo {C:attention}stesso valore{} in ogni gruppo, e una',
                    [4] = 'carta in ciascun gruppo condivide lo {C:attention}stesso seme'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'La Z',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove {C:attention}2 gruppi{} di 2 carte condividono',
                    [3] = 'lo {C:attention}stesso seme{} in ogni gruppo, e una',
                    [4] = 'carta in ciascun gruppo condivide lo {C:attention}stesso valore'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'La J',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove 3 carte condividono lo {C:attention}stesso valore',
                    [3] = 'e l\'altra carta condivide il',
                    [4] = '{C:attention}seme{} ma non il valore'
                    
                }
            },
            c_bunc_the_l = {
                ['name'] = 'La L',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove 3 carte condividono lo {C:attention}stesso seme',
                    [3] = 'e l\'altra carta condivide il',
                    [4] = '{C:attention}valore{} ma non il seme'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'Lo /',
                ['text'] = {
                    [1] = '{C:attention}Collega{} 4 carte selezionate',
                    [2] = 'dove tutte le carte hanno una',
                    [3] = '{C:attention}proprietà diversa{} {C:inactive}(valore e seme)'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Luchador',
                ['text'] = {
                    [1] = 'Vendi questa carta',
                    [2] = 'per creare gratuitamente',
                    [3] = 'un {C:attention}Patto Rottura'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Cartellino Rosso',
                ['text'] = {
                    [1] = 'Questo Jolly ottiene {C:red}+#1#{} Molt',
                    [2] = 'per scelta saltata',
                    [3] = 'quando apri {C:attention}Buste{}',
                    [4] = '{C:inactive}(Attualmente {C:red}+#2#{C:inactive} Molt)'
                }
            },

            -- Main Jokers

            j_bunc_cassette_a = {
                ['name'] = 'Cassetta (Lato A)',
                ['text'] = {
                    [1] = 'Le carte di {C:attention}seme chiaro',
                    [2] = 'danno {C:chips}+#1#{} Fiche quando assegnano punti'
                }
            },
            j_bunc_cassette_b = {
                ['name'] = 'Cassetta (Lato B)',
                ['text'] = {
                    [1] = 'Le carte di {C:attention}seme scuro',
                    [2] = 'danno {C:mult}+#2#{} Molt quando assegnano punti'
                }
            },
            j_bunc_cassette_extra = {
                ['text'] = {
                    [1] = '{C:inactive}Se scartata, gira questo Jolly'
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Jolly Mosaico',
                ['text'] = {
                    [1] = 'Le {C:attention}Carte di Pietra{} giocate',
                    [2] = 'danno {C:mult}+#1#{} Molt',
                    [3] = 'quando assegnano punti'
                },
                ['unlock'] = {
                    [1] = 'Gioca una mano di 5 carte',
                    [2] = 'che contiene solo',
                    [3] = 'carte di {C:attention,E:1}Pietra{}'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Jolly Voxel',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt, {X:mult,C:white}-X#2#{} Molt per ogni',
                    [2] = '{C:attention}Carta Potenziata{} nel tuo {C:attention}mazzo completo{}',
                    [3] = '{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} Molt)'
                },
                ['unlock'] = {
                    [1] = 'Have at least {C:attention}#1#',
                    [2] = '{E:1,C:attention}Enhanced{} cards in',
                    [3] = 'your deck'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Cerchi nel Grano',
                ['text'] = {
                    [1] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                    [2] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                    [3] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Cerchi nel Grano',
                ['text'] = {
                    [1] = 'Base suit {C:bunc_fleurons}Fregi{} give {C:mult}+4{} Mult,',
                    [2] = 'Base suit {C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                    [3] = '{C:attention}8s{} give {C:mult}+2{} Mult,',
                    [4] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} give {C:mult}+1{} Mult'
                }
            },
            j_bunc_xray = {
                ['name'] = 'Raggi X',
                ['text'] = {
                    [1] = 'Questo Jolly ottiene {X:mult,C:white}X#1#{} Molt',
                    [2] = 'per ogni carta pescata a faccia in giù',
                    [3] = '{C:inactive}(Attualmente {X:mult,C:white}X#2#{C:inactive} Molt)'
                },
                ['unlock'] = {
                    [1] = 'Complete the {E:1,C:attention}X-ray Vision',
                    [2] = 'challenge'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Terrore',
                ['text'] = {
                    [1] = 'Dopo che la tua {C:attention}ultima{} mano',
                    [2] = 'assegna punti, potenziala di {C:attention}#1# livelli{}',
                    [3] = 'poi {C:attention}distruggi{} quelle carte',
                    [4] = '{C:inactive,s:0.8}Tutti i livelli ottenuti tramite questo Jolly',
                    [5] = '{C:inactive,s:0.8}vengono persi insieme ad esso'
                },
                ['unlock'] = {
                    [1] = 'Riduci la dimensione del tuo mazzo',
                    [2] = 'di almeno {E:1,C:attention}#1#{} carte',
                    [3] = 'in un solo round'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Jolly Preistorico',
                ['text'] = {
                    [1] = 'Le carte giocate che condividono',
                    [2] = 'sia {C:attention}valore{} che {C:attention}seme{} con una carta',
                    [3] = 'che ha {C:attention}assegnato punti{} in questo round',
                    [4] = 'danno {C:mult}+#1#{} Molt'
                },
                ['unlock'] = {
                    [1] = 'Gioca un',
                    [2] = '{E:1,C:attention}Colore Perfetto'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Jolly Linoleum',
                ['text'] = {
                    [1] = 'Quando giochi esattamente {C:attention}2{} carte',
                    [2] = 'che formano una {C:attention}Coppia{},',
                    [3] = "converti il seme della carta {C:attention}a sinistra{}",
                    [4] = "in quello della {C:attention}carta a destra{}",
                    [5] = '{C:inactive}(Trascina per riordinare)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'Stampa Fantasma',
                ['text'] = {
                    [1] = 'Dà Fiche e Molt uguali',
                    [2] = 'all\'ultimo {C:attention}tipo di mano{} giocato',
                    [3] = '{C:inactive}(Ultima mano giocata: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Strozzino',
                ['text'] = {
                    [1] = 'Guadagni {C:money}$#1#',
                    [2] = 'quando lo ottieni...'
                },
                ['unlock'] = {
                    [1] = 'Spendi almeno {E:1,C:attention}$100',
                    [2] = 'in un singolo round'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Strozzino',
                ['text'] = {
                    [1] = 'Guadagni {C:money}$#1#{} quando lo ottieni,',
                    [2] = 'il suo prezzo di vendita è {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Jolly Scantinato',
                ['text'] = {
                    [1] = 'Quando batti il {C:attention}Buio Boss{},',
                    [2] = 'crea una carta {C:spectral}Spettrale{}',
                    [3] = '{C:inactive}(Serve spazio)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Jolly da Pastore',
                ['text'] = {
                    [1] = 'Ottiene {C:chips}+#1#{} Fiche',
                    [2] = 'quando la mano giocata',
                    [3] = 'contiene una {C:attention}Coppia',
                    [4] = '{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} Fiche)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Jolly Cavaliere',
                ['text'] = {
                    [1] = 'Quando selezioni un {C:attention}Buio{}, {C:attention}mischia{} tutti i Jolly',
                    [2] = 'e questo Jolly ottiene {C:mult}+#1#{} Molt, {C:red}torna a zero{}',
                    [3] = 'quando un qualsiasi Jolly viene riordinato',
                    [4] = '{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)'
                },
                ['unlock'] = {
                    [1] = 'Sconfiggi {E:1,C:attention}Ghianda d\'Ambra',
                    [2] = 'senza disattivarla'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Joker Man & Jester Boy Carta Collezionabile N° 54',
                ['text'] = {
                    [1] = 'Le {C:attention}Buste Standard{} contengono',
                    [2] = 'solo {C:attention}Carte Potenziate{}'
                },
                ['unlock'] = {
                    [1] = 'Apri {E:1,C:attention}#1#',
                    [2] = 'Buste',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Cani Pokeristi',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt se soltanto',
                    [2] = '{C:attention}2{}, {C:attention}3{}, {C:attention}4{}, o {C:attention}5{}',
					[3] = 'stanno assegnando punti'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Jolly Gancio Destro',
                ['text'] = {
                    [1] = 'Riattiva la carta che assegna punti più a destra',
                    [2] = 'una volta per {C:blue}mano{} rimanente',
                },
                ['unlock'] = {
                    [1] = 'Riattiva una carte',
                    [2] = 'giocata almeno',
                    [3] = '{E:1,C:attention}#1# volte{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Jolly Diabolico',
                ['text'] = {
                    [1] = 'Raddoppia tutti i guadagni di soldi,',
                    [2] = '{C:green}#1# probabilità su #2#{} di',
                    [3] = 'ricevere {C:money}$1{} altrimenti'
                },
                ['unlock'] = {
                    [1] = 'Completa la sfida',
                    [2] = '{E:1,C:attention}Lascia o Raddoppia'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Carnevale',
                ['text'] = {
                    [1] = 'Dopo che batti il {C:attention}Buio Boss{},',
                    [2] = '{C:attention}distrugge{} un Jolly casuale per',
                    [3] = 'tornare indietro di una Posta, poi',
                    [4] = 'funziona solo con una Posta superiore'
                },
                ['unlock'] = {
                    [1] = 'Raggiungi la Posta',
                    [2] = 'livello {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Maglio',
                ['text'] = {
                    [1] = 'Le {C:attention}Carte di Vetro{} danno {X:mult,C:white}+X#1#{} Molt',
                    [2] = 'ma si rompono sempre'
                },
                ['unlock'] = {
                    [1] = 'Gioca una mano da 5 carte',
                    [2] = 'che contiene solo',
                    [3] = 'carte di {C:attention,E:1}Vetro{}'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Gancio da Porta',
                ['text'] = {
                    [1] = 'I Jolly {C:blue}Comuni{} non appaiono',
                    [2] = '{s:0.8}Vengono sostituiti da Jolly di rarità diversa'
                },
                ['unlock'] = {
                    [1] = 'Vinci una partita',
                    [2] = 'senza aver mai posseduto un',
                    [3] = 'Jolly {C:attention,E:1}Comune{}'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Impronte Digitali',
                ['text'] = {
                    [1] = 'Le carte che hanno assegnato punti',
                    [2] = 'nella scorsa {C:attention}mano vincitrice{}',
                    [3] = 'ottengono {C:chips}+#1#{} Fiche',
                    [4] = 'fino alla fine del prossimo round',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zero Shapiro',
                ['text'] = {
                    [1] = 'I {C:attention}K{}, le {C:attention}Q{}, i {C:attention}J{}, o le carte',
                    [2] = '{C:attention}senza valore{} che assegnano punti',
                    [3] = 'hanno {C:green}#1# probabilità su #2#{} di',
                    [4] = 'creare un {C:attention}Patto D6',
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = 'Guadagni {C:money}$#1#{}',
                    [2] = 'quando una carta da gioco',
                    [3] = 'viene distrutta'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Bierdeckel',
                ['text'] = {
                    [1] = 'Dopo che giochi o scarti,',
                    [2] = 'le carte nella tua mano guadagnano',
                    [3] = '{C:chips}+#1#{} Fiche fino alla fine del round'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = 'Targa',
                ['text'] = {
                    [1] = 'I {C:attention}#1#{}',
                    [2] = 'ottengono le Fiche e il Molt di tutte',
                    [3] = 'le {C:attention}mani di poker{} giocate in questa partita',
                    [4] = '{s:0.8}Le combinazioni cambiano ad ogni round'
                },
                ['unlock'] = {
                    [1] = 'Completa la sfida',
                    [2] = '{E:1,C:attention}Città di 15 Minuti'
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Jolly Pigrone',
                ['text'] = {
                    [1] = 'Le {C:attention}Carte Multiuso',
                    [2] = 'giocate danno {C:mult}+#1#{} Molt',
                    [3] = 'quando assegnano punti'
                },
                ['unlock'] = {
                    [1] = 'Gioca una mano di 5 carte',
                    [2] = 'che contiene solo',
                    [3] = 'carte {C:attention,E:1}Multiuso{}'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Jolly Neon',
                ['text'] = {
                    [1] = 'Le carte da gioco',
                    [2] = 'diventano {C:dark_edition}Fluorescenti{}',
                    [3] = 'quando vengono {C:attention}potenziate'
                },
                ['unlock'] = {
                    [1] = 'Gioca un mano di 5 carte',
                    [2] = 'che contiene solo',
                    [3] = '{C:attention,E:1}Debuffed{} cards'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Piano di Gioco',
                ['text'] = {
                    [1] = 'I {C:attention}Jolly{} adiacenti a questo',
                    [2] = 'vengono {C:red}penalizzati{} e',
                    [3] = 'danno {C:mult}+#1#{} Molt'
                },
                ['unlock'] = {
                    [1] = 'Sconfiggi {E:1,C:attention}Foglia Verde',
                    [2] = 'senza disattivarla'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Conquista',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fiche,',
                    [2] = '{C:red}penalizza{} un Jolly casuale',
                    [3] = 'quando selezioni un {C:attention}Buio{}'
                },
                ['unlock'] = {
                    [1] = 'Sconfiggi {E:1,C:attention}Cuore Cremisi',
                    [2] = 'senza disattivarlo'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Gerarchia delle Necessità',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Molt per ogni diversa sequenza',
                    [2] = 'dal {C:attention}2 all\' Asso{}, dello {C:attention}stesso seme{}',
                    [3] = 'nel tuo {C:attention}mazzo completo',
                    [4] = '{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Jolly Nanico',
                ['text'] = {
                    [1] = 'Le carte di {C:attention}Pietra{} tenute in mano',
                    [2] = 'hanno le abilità combinate delle',
                    [3] = 'carte di {C:attention}Acciaio{} e carte {C:attention}Dorate'
                },
                ['unlock'] = {
                    [1] = 'Gioca una mano che',
                    [2] = 'contiene carte di {E:1,C:attention}Pietra{}, {E:1,C:attention}Acciaio,',
                    [3] = 'e {E:1,C:attention}Dorate{}'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Aristocratico',
                ['text'] = {
                    [1] = 'Scegli una carta in più',
                    [2] = 'dalle {C:attention}Buste'
                },
                ['unlock'] = {
                    [1] = 'Vinci una partita senza',
                    [2] = 'aver mai aperto una',
                    [3] = '{C:attention,E:1}Busta'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Metallurgista',
                ['text'] = {
                    [1] = 'Le {C:attention}carte dorate{} tenute in mano',
                    [2] = 'danno {C:mult}+#1#{} Molt'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Juggalo',
                ['text'] = {
                    [1] = 'Applica un effetto {C:dark_edition}Laminato{}, {C:dark_edition}Olografico{},',
                    [2] = '{C:dark_edition}Policromo{}, o {C:dark_edition}Brillantinato{}',
                    [3] = 'a un {C:attention}consumabile{} casuale',
                    [4] = 'quando selezioni un {C:attention}Buio{}'
                },
                ['unlock'] = {
                    [1] = 'Usa {C:attention,E:1}#1#{} consumabili',
                    [2] = 'dotati di {C:attention,E:1}Edizione',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Testa fra le Nuvole',
                ['text'] = {
                    [1] = '{C:green}#1# probabilità su #2#{} di potenziare',
                    [2] = '{C:attention}Carta Alta{} quando potenzi',
                    [3] = 'una {C:attention}mano di poker{} qualsiasi'
                },
                ['unlock'] = {
                    [1] = 'Vinci una partita in cui',
                    [2] = '{C:attention,E:1}Carta Alta{} è la mano',
                    [3] = 'di livello più alto'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Colpo alla Testa',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt se la mano giocata',
                    [2] = 'contiene soltanto una',
                    [3] = '{C:attention}figura{} che assegna punti'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Grilletto Facile',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt,',
                    [2] = '{C:attention}selezionare{} una carta ha',
                    [3] = '{C:green}#2# probabilità su #3#{} di',
                    [4] = 'giocare tutte le carte selezionate'
                },
                ['unlock'] = {
                    [1] = 'Sconfiggi {E:1,C:attention}Campana Cerulea',
                    [2] = 'senza disattivarla'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Campana',
                ['text'] = {
                    [1] = 'Ottieni {C:red}+#1#{} scarto',
                    [2] = 'se la mano giocata',
                    [3] = 'contiene una {C:attention}Scala{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Pedone',
                ['text'] = {
                    [1] = 'Le carte col valore {C:attention}più basso{}',
                    [2] = 'nel tuo mazzo completo',
                    [3] = '{C:attention}aumentano di valore{} quando assegnano punti',
                    [4] = '{C:inactive}(Valore più basso: #1#)'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Scheda del Puzzle',
                ['text'] = {
                    [1] = 'Quando usi un {C:tarot}Tarocco{},',
                    [2] = '{C:green}#1# probabilità su #2#{} di aggiungere',
                    [3] = 'un effetto {C:dark_edition}Laminato{}, {C:dark_edition}Olografico{},',
                    [4] = '{C:dark_edition}Policromo{}, o {C:dark_edition}Brillantinato{}',
                    [5] = 'a una carta da gioco selezionata casuale'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Vandalismo',
                ['text'] = {
                    [1] = '{C:green}#1# probabilità su #2#{} di pescare',
                    [2] = 'le carte dal mazzo a faccia in giù',
                    [3] = 'Le carte a faccia in giù danno',
                    [4] = '{X:mult,C:white}X#3#{} Molt quando assegnano punti'
                },
                ['unlock'] = {
                    [1] = 'Gioca un mano di 5 carte',
                    [2] = 'che contiene solo',
                    [3] = 'carte {C:attention,E:1}girate{}'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Manifestante',
                ['text'] = {
                    [1] = 'Aggiunge {C:attention}#1#X{} il valore più alto',
                    [2] = 'scartato in questo round alle Fiche',
                    [3] = '{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} Fiche)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Scarabocchio',
                ['text'] = {
                    [1] = 'Crea una {C:attention}Copia{} del primo {C:tarot}Tarocco{} o',
                    [2] = '{C:planet}Pianeta{} usato in questo round',
                    [3] = '{C:inactive}(Serve spazio)'
                },
                ['unlock'] = {
                    [1] = 'Vinci {C:attention,E:1}#1#{} partite',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Sproporzionalità',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Tormentone',
                ['text'] = {
                    [1] = 'Crea un "{C:attention}Jolly{}"',
                    [2] = '{C:dark_edition}Negativo{} quando',
                    [3] = 'entri nel Negozio'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'A Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fiche e {C:mult}+#2#{} Molt se',
                    [2] = 'la mano giocata contiene una {C:attention}Scala{}',
                    [3] = 'con una {C:attention}figura{} che assegna punti'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Molt se nessuna',
                    [2] = '{C:attention}Carta Potenziata{}',
                    [3] = 'assegna punti'
                },
                ['unlock'] = {
                    [1] = 'Vinci una partita senza',
                    [2] = 'aver mai ottenuto {C:attention,E:1}Carte Potenziate'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Critico',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Molt se il punteggio",
                    [2] = 'della mano giocata è',
                    [3] = '{C:attention}meno di 1/#2#{} del',
                    [4] = "punteggio richiesto dal Buio attuale"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Cellulare',
                ['text'] = {
                    [1] = '{C:attention}Ripesca{} in mano le carte che hanno',
                    [2] = 'assegnato punti nella prima giocata',
                    [3] = 'se non hai usato scarti'
                }
            },
            j_bunc_wino = {
                ['name'] = 'Wino',
                ['text'] = {
                    [1] = 'Le carte di {C:hearts}Cuori{} e {C:diamonds}Quadri{}',
                    [2] = 'giocate danno {C:chips}+#1#{} Fiche',
                    [3] = 'quando assegnano punti'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Cacciatore di Taglie',
                ['text'] = {
                    [1] = 'Quando guadagni soldi,',
                    [2] = 'ottieni {C:money}$1{} in meno, e',
                    [3] = 'questo Jolly ottiene {C:mult}+#1#{} Molt',
                    [4] = '{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)'
                },
                ['unlock'] = {
                    [1] = 'Guadagna meno di {E:1,C:attention}$#1#',
                    [2] = 'in una sola partita'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Trappola',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fiche,',
                    [2] = '{C:green}#2# probabilità su #3#{} di',
                    [3] = '{C:attention}perdere{} una mano'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'Il Jolly',
                ['text'] = {
                    [1] = 'Dopo aver giocato, ogni carta non potenziata',
                    [2] = 'che ha assegnato punti ha',
                    [3] = '{C:green}#1# probabilità su #2#{} di essere distrutta',
                },
                ['unlock'] = {
                    [1] = 'Scopri tutti i',
                    [2] = '{C:attention}Bui Boss'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangram',
                ['text'] = {
                    [1] = 'Quando un {C:attention}7{} assegna punti,',
                    [2] = '{C:mult}+#1#{} Molt per ogni',
                    [3] = '{C:attention}7{} che assegna punti'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Domino',
                ['text'] = {
                    [1] = 'Quando {C:attention}ottieni{} o {C:attention}usi',
                    [2] = 'una carta dal negozio o una Busta,',
                    [3] = 'ottieni {C:attention}2{} carte',
                    [4] = 'ad essa adiacenti se possibile'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = 'Colla a Caldo',
                ['text'] = {
                    [1] = 'Vendi questa carta per',
                    [2] = '{C:attention}collegare{} fino a #1#',
                    [3] = 'carte da gioco selezionate'
                }
            },
            j_bunc_taped = {
                ['name'] = 'Jolly Attaccati',
                ['text'] = {
                    [1] = '{C:attention}Collega{} tutte le',
                    [2] = 'carte che assegnano punti nella',
                    [3] = 'prima mano giocata contro un',
                    [4] = '{C:attention}Buio Boss{}'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = 'Palla di Elastici',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt per {C:attention}collegamento{}',
                    [2] = 'creato in questa partita',
                    [3] = '{C:inactive}(Attualmente {X:mult,C:white}X#2#{C:inactive} Molt)'
                }
            },
            j_bunc_headache = {
                ['name'] = 'Emicrania',
                ['text'] = {
                    [1] = 'Crea un {C:bunco_virtual_dark}Patto Arcade',
                    [2] = 'ogni {C:attention}#1#{} carte da gioco distrutte',
                    [3] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# carte distrutte)'
                    
                }
            },
            j_bunc_games_collector = {
                ['name'] = 'Collezionista di Giochi',
                ['text'] = {
                    [1] = 'Ottiene {C:chips}+#1#{} Fiche',
                    [2] = 'quando un gruppo collegato',
                    [3] = 'viene {C:attention}pescato{} in mano',
                    [4] = '{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} Fiche)'
                }
            },
            j_bunc_jumper = {
                ['name'] = 'Saltatore',
                ['text'] = {
                    [1] = 'Ottiene {C:chips}+#1#{} Fiche',
                    [2] = 'se la mano giocata',
                    [3] = 'contiene un {C:attention}Colore{}',
                    [4] = '{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} Fiche)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = 'Stilofono',
                ['text'] = {
                    [1] = 'Le carte danno Molt pari a',
                    [2] = '{X:attention,C:white}X#1#{} del loro {C:attention}valore{}',
                    [3] = 'quando assegnano punti'
                }
            },
            j_bunc_kite_experiment = {
                ['name'] = 'Esperimento dell\'Aquilone',
                ['text'] = {
                    [1] = 'Le {C:attention}Carte di Rame{} {C:attention}ricontate',
                    [2] = 'hanno {C:green}#1# probabilità su #2#{} di',
                    [3] = '{C:attention}ricontare una volta in più'
                }
            },
            j_bunc_robot = {
                ['name'] = 'Robot',
                ['text'] = {
                    [1] = 'Questo Jolly ottiene {C:mult}+#1#{} Molt',
                    [2] = 'ogni volta che una {C:attention}Carta di Rame',
                    [3] = 'viene {C:attention}ricontata',
                    [4] = '{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)'
                }
            },
            j_bunc_hardtack = {
                ['name'] = 'Galletta',
                ['text'] = {
                    [1] = 'Le {C:attention}Carte Cracker{} non',
                    [2] = 'vengono più distrutte',
                    [3] = 'quando scartate'
                }
            },
            j_bunc_pica = {
                ['name'] = 'Jolly Picacista',
                ['text'] = {
                    [1] = 'Quando una {C:attention}Carta Cracker{}',
                    [2] = 'viene scartata, gioca tutte le carte',
                    [3] = 'scartate insieme ad essa'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Jolly Zelante',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Molt se',
                    [2] = 'la mano giocata contiene',
                    [3] = 'uno {C:attention}Spettro'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Jolly Sensazionale',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fiche se',
                    [2] = 'la mano giocata contiene',
                    [3] = 'uno {C:attention}Spettro'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Jolly Invidioso',
                ['text'] = {
                    [1] = 'Le carte di {C:bunc_fleurons}Fregi{}',
                    [2] = 'danno {C:mult}+#1#{} Molt',
                    [3] = 'quando assegnano punti'
                }
            },
            j_bunc_proud = {
                ['name'] = 'Jolly Fiero',
                ['text'] = {
                    [1] = 'Le carte di {C:bunc_halberds}Alabarde{}',
                    [2] = 'danno {C:mult}+#1#{} Molt',
                    [3] = 'quando assegnano punti'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Desiderite',
                ['text'] = {
                    [1] = 'Le carte di {C:bunc_fleurons}Fregi{} hanno',
                    [2] = '{C:green}#1# probabilità su #2#{} di',
                    [3] = 'far guadagnare {C:money}${} uguali al valore',
                    [4] = "in Fiche della carta"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Unobtanium',
                ['text'] = {
                    [1] = 'Le carte di {C:bunc_halberds}Alabarde{}',
                    [2] = 'danno {C:chips}+#1#{} Fiche e {C:mult}+#2#{} Molt',
                    [3] = "quando assegnano punti"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'La Dinastia',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt se',
                    [2] = 'la mano giocata contiene',
                    [3] = 'uno {C:attention}Spettro'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Bacchetta Magica',
                ['text'] = {
                    [1] = 'Questo Jolly ottiene {C:mult}+#1#{} Molt',
                    [2] = 'per ogni mano {C:attention}consecutiva{} giocata',
                    [3] = 'che contiene uno {C:attention}Spettro{}',
                    [4] = '{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Carambola',
                ['text'] = {
                    [1] = 'Alza il livello della {C:attention}mano di poker',
                    [2] = 'giocata se contiene uno {C:attention}Spettro',
                    [3] = '{C:green}#1# probabilità su #2#{} di distruggere',
                    [4] = 'questa carta alla fine del round'
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Fonduta',
                ['text'] = {
                    [1] = 'Le carte che assegnano punti nella',
                    [2] = '{C:attention}prima mano{} del round',
                    [3] = 'vengono convertite in {C:bunc_fleurons}Fregi'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Miopia',
                ['text'] = {
                    [1] = '{C:spades}Picche{} e {C:clubs}Fiori{}',
                    [2] = 'contano come {C:bunc_halberds}Alabarde'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Astigmatismo',
                ['text'] = {
                    [1] = '{C:hearts}Cuori{} e {C:diamonds}Quadri{}',
                    [2] = 'contano come {C:bunc_fleurons}Fregi'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Rag V. Aiv',
                ['text'] = {
                    [1] = '{C:green}#1# probabilità su #2#{} di rendere',
                    [2] = 'tutte le carte che assegnano punti',
                    [3] = '{C:dark_edition}Policrome{} se',
                    [4] = 'la mano contiene uno {C:attention}Spettro'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt per {C:bunco_exotic}Carta Esotica{}',
                    [2] = 'nel tuo {C:attention}mazzo completo',
                    [3] = '{C:inactive}(Attualmente {X:mult,C:white}X#2#{C:inactive} Molt)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'Il Pallido',
                ['text'] = {
                    [1] = 'Perdi $1 per',
                    [2] = 'ogni carta scartata'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = 'L\'Ombrello',
                ['text'] = {
                    [1] = 'Dopo ogni giocata, gira',
                    [2] = 'le carte in mano a faccia in giù'
                }
            },
            bl_bunc_tine = {
                ['name'] = 'Il Dente',
                ['text'] = {
                    [1] = 'Ogni #1# è penalizzato'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'L\'Altalena',
                ['text'] = {
                    [1] = 'Dopo che giochi o scarti,',
                    [2] = 'gira tutte le carte'
                }
            },
            bl_bunc_miser = {
                ['name'] = 'Il Taccagno',
                ['text'] = {
                    [1] = 'Salti il Negozio dopo',
                    [2] = 'aver sconfitto questo Buio'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'Il Portale',
                ['text'] = {
                    [1] = 'Non puoi',
                    [2] = 'deselezionare le carte'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'La Fiamma',
                ['text'] = {
                    [1] = 'Tutte le carte potenziate',
                    [2] = 'sono penalizzate'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'La Maschera',
                ['text'] = {
                    [1] = '#1# ha invece',
                    [2] = 'Fiche e Multi di #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'Il Baluardo',
                ['text'] = {
                    [1] = 'Giocare una #1# scarta',
                    [2] = 'tutte le carte in mano'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'Il Poggio',
                ['text'] = {
                    [1] = 'Avere più di 5$',
                    [2] = 'penalizza la prima mano pescata'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'La Pietra',
                ['text'] = {
                    [1] = 'Punti richiesti +1X Base per',
                    [2] = 'ogni 10$ in tuo possesso'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'La Sabbia',
                ['text'] = {
                    [1] = 'Punti richiesti +1X Base per',
                    [2] = 'ogni patto in tuo possesso'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'La Lama',
                ['text'] = {
                    [1] = 'La prima volta che fai almeno #1# punti',
                    [2] = 'il punteggio della mano diventa 0'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'L\'Artiglio',
                ['text'] = {
                    [1] = 'Le carte scartate',
                    [2] = 'tornano nel mazzo'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'Il Velo',
                ['text'] = {
                    [1] = 'Le carte selezionate vengono',
                    [2] = 'girate a faccia in giù'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'Il Cadavere',
                ['text'] = {
                    [1] = 'La mano deve ',
                    [2] = 'contenere una figura'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'Il Vento',
                ['text'] = {
                    [1] = 'Il Jolly più a sinistra',
                    [2] = 'è penalizzato'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'Il Principe',
                ['text'] = {
                    [1] = 'Tutti i Jolly sono penalizzati',
                    [2] = 'finché non giochi la prima mano'
                }
            },
            bl_bunc_depths = {
                ['name'] = 'Le Profondità',
                ['text'] = {
                    [1] = 'Dopo ogni giocata, ottieni Eterno',
                    [2] = 'Deperibile, o Dispersivo'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'Il Baratro',
                ['text'] = {
                    [1] = 'Dopo ogni giocata, ottieni Intralciato',
                    [2] = 'Reattivo, o Noleggio'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Corona Chartreuse',
                ['text'] = {
                    [1] = 'Tutte le carte di seme base',
                    [2] = 'Cuori, Quadri, Fiori, Picche sono penalizzate'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Tridente Vermiglio',
                ['text'] = {
                    [1] = '+1X punteggio base per ogni',
                    [2] = 'acquisto effettuato in questa Posta'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Torre Indaco',
                ['text'] = {
                    [1] = 'Le carte non già giocate',
                    [2] = 'in questa posta sono penalizzate'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Pugnale Magenta',
                ['text'] = {
                    [1] = 'Le carte scartate vengono giocate',
                    [2] = 'e il loro punteggio viene sottratto'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Scudo Turchese',
                ['text'] = {
                    [1] = 'Il punteggio in eccesso in questa posta',
                    [2] = "viene aggiunto al punteggio richiesto da questo Buio"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Mazzo Fatato',
                ['text'] = {
                    [1] = 'Dopo che batti un',
                    [2] = '{C:attention}Buio Boss{}, aggiungi #1# carte',
                    [3] = '{C:bunco_exotic,T:bunc_exotic_cards}#2#{} casuali',
                    [4] = 'al tuo mazzo'
                },
                ['unlock'] = {
                    [1] = 'Gioca {E:1,C:attention}5 semi diversi',
                    [2] = 'in una sola mano'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Mazzo Digitale',
                ['text'] = {
                    [1] = 'Le carte {C:bunco_virtual_dark}Polymino{} possono',
                    [2] = 'comparire nel Negozio,',
                    [3] = "inizi con {C:bunco_virtual_dark,T:c_bunc_the_i}La I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Patto Boss',
                ['text'] = {
                    [1] = 'Dà gratuitamente una',
                    [2] = '{C:attention}Busta Buio'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Patto Raddoppio',
                ['text'] = {
                    [1] = 'Assegna una copia del',
                    [2] = 'prossimo {C:attention}Patto{} scelto',
                    [3] = '{s:0.8} Esclusi i {s:0.6,C:attention}Patti Raddoppio e Triplico'
                }
            },
            tag_bunc_d_six = {
                ['name'] = 'Patto D6',
                ['text'] = {
                    [1] = 'Assegna un {C:green}Cambio{} gratuito',
                    [2] = 'al prossimo negozio'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Patto Rottura',
                ['text'] = {
                    [1] = 'Disattiva il',
                    [2] = '{C:attention}Buio Boss{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = 'Patto Arcade',
                ['text'] = {
                    [1] = 'Dà gratitamente una',
                    [2] = '{C:bunco_virtual_dark}Mega Busta Virtuale'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Patto Triplico',
                ['text'] = {
                    [1] = 'Assegna due copie del',
                    [2] = 'prossimo {C:attention}Patto{} selezionato',
                    [3] = '{s:0.8} Escluso il {s:0.6,C:attention}Patto Triplico'
                }
            },
            tag_bunc_shopping = {
                ['name'] = 'Shopping Tag',
                ['text'] = {
                    [1] = 'Gives {C:attention}1{} free',
                    [2] = 'shop {C:green}Reroll'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Patto Brillantini',
                ['text'] = {
                    [1] = 'Il prossimo Jolly di Edizione base',
                    [2] = 'nel Negozio è gratuito e',
                    [3] = 'diventa {C:dark_edition}Brillantinato'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Fluorescent Tag',
                ['text'] = {
                    [1] = 'Il prossimo Jolly di Edizione base',
                    [2] = 'nel Negozio è gratuito e',
                    [3] = 'diventa {C:dark_edition}Fluorescente'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Patto Fiche',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fiche prossima mano'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Patto Molt',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Molt prossima mano',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Patto Megamolt',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Molt prossima mano',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Patto Ultrafiche',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Fiche prossima mano'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Patto Filigrana',
                ['text'] = {
                    [1] = 'La prossima {C:attention}Busta Standard{} aperta',
                    [2] = 'conterrà soltanto {C:bunco_exotic}Carte Esotiche'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Patto Eterno',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Eterno{}'
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Patto Deperibile',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Deperibile{}'
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Patto Dispersivo',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Dispersivo{}'
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Patto Intralciato',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Intralciato{}'
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Patto Reattivo',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Reattivo{}'
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Patto Noleggio',
                ['text'] = {
                    [1] = 'Il prossimo Jolly nel Negozio',
                    [2] = 'otterrà l\'adesivo {C:attention}Noleggio{}'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Brillantinata',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Fiche'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Fluorescente',
                ['text'] = {
                    [1] = 'Non può essere girata, penalizzata',
                    [2] = 'o forzata ad essere selezionata'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Laminazione',
                ['text'] = {
                    [1] = 'I consumabili nelle',
                    [2] = '{C:attention}Buste{} possono',
                    [3] = 'essere dotate di {C:dark_edition}Edizione'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Superpatina',
                ['text'] = {
                    [1] = 'Tutti i consumabili nelle',
                    [2] = '{C:attention}Buste{} saranno',
                    [3] = 'dotati di {C:dark_edition}Edizione'
                },
                ['unlock'] = {
                    [1] = 'Usa {C:attention,E:1}#1#{} consumabili',
                    [2] = 'dotati di {C:attention,E:1}Edizione',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Tagliasiepi',
                ['text'] = {
                    [1] = "Riduci il punteggio richiesto dai Bui",
                    [2] = 'del {C:attention}#1#%{} per ogni mano giocata'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Motosega',
                ['text'] = {
                    [1] = 'Riduce tutti i punteggi',
                    [2] = 'richiesti del {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Riduci il punteggio richiesto",
                    [2] = 'da un buio tramite Tagliasiepi',
                    [3] = 'almeno {C:attention,E:1}#1#{} volte',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Tre Bussolotti",
                ['text'] = {
                    [1] = '{C:attention}+1{} slot Busta',
                    [2] = 'disponibile nel negozio'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Truffa',
                ['text'] = {
                    [1] = 'Puoi cambiare {C:attention}il contenuto',
                    [2] = 'delle Buste',
                    [3] = '{C:attention}1{} volta per Busta'
                },
                ['unlock'] = {
                    [1] = 'Apri {E:1,C:attention}#1#',
                    [2] = 'Buste',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = 'Travestimento',
                ['text'] = {
                    [1] = 'Le {C:attention}Buste Buio{} possono',
                    [2] = 'comparire nel Negozio'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Mascherata',
                ['text'] = {
                    [1] = 'Tutte le {C:attention}Buste Buio{}',
                    [2] = 'nel Negozio diventano gratuite'
                },
                ['unlock'] = {
                    [1] = 'Sostituisci {E:1,C:attention}#1#{}',
                    [2] = 'Bui con Bui',
                    [3] = 'dalle Buste Buio',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = 'Marsupio',
                ['text'] = {
                    [1] = '{C:green}#1# probabilità su #2#{} di',
                    [2] = 'ottenere un {C:attention}Patto Raddoppio',
                    [3] = 'ogni volta che un Buio',
                    [4] = 'viene {C:attention}saltato'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = 'Collezione di Spille',
                ['text'] = {
                    [1] = 'Tutti i {C:attention}Patti Raddoppio',
                    [2] = 'futuri diventano {C:attention}Patti Triplico'
                },
                ['unlock'] = {
                    [1] = 'Salta un totale di',
                    [2] = '{E:1,C:attention}#1#{} Bui',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = 'Cabinato',
                ['text'] = {
                    [1] = 'Le {C:bunco_virtual_dark}Buste Virtuali',
                    [2] = 'compaiono {C:attention}4X{} più spesso'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = 'Le carte {C:bunco_virtual_dark}Polymino{} possono',
                    [2] = 'collegare {C:attention}un\'altra{} carta',
                    [3] = '{s:0.6,C:inactive}La carta extra può avere qualsiasi proprietà'
                },
                ['unlock'] = {
                    [1] = 'Crea un totale di',
                    [2] = '{E:1,C:attention}#1#{} gruppi di collegamento',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
        Enhanced = {
            m_bunc_copper = {
                ['name'] = 'Carta di Rame',
                ['text'] = {
                    [1] = 'Viene {C:attention}ricontata{} se giocata',
                    [2] = '{C:attention}adiacente{} a un\'altra',
                    [3] = 'Carta di Rame che assegna punti'
                },
            },
            m_bunc_cracker = {
                ['name'] = 'Carta Cracker',
                ['text'] = {
                    [1] = 'Quando viene {C:attention}scartata{}, questa carta',
                    [2] = 'viene giocata e poi distrutta',
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Puntata Ciano',
                ['text'] = {
                    [1] = 'Il negozio può avere Jolly {C:attention}Dispersivi{}',
                    [2] = '{C:inactive,s:0.8}(Distrugge un Jolly adiacente casuale se rimosso)',
                    [3] = '{s:0.8}Applica tutte le puntate precedenti'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Puntata Rosa',
                ['text'] = {
                    [1] = 'Il negozio può avere Jolly {C:attention}Intralciati{}',
                    [2] = '{C:inactive,s:0.8}(Resta al suo posto fino alla fine del round se venduto)',
                    [3] = '{s:0.8}Applica tutte le puntate precedenti'
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Puntata Magenta',
                ['text'] = {
                    [1] = 'Il negozio può avere Jolly {C:attention}Reattivi{}',
                    [2] = '{C:inactive,s:0.8}(Ogni Posta, penalizzato finché non salti un Buio)',
                    [3] = '{s:0.8}Applica tutte le puntate precedenti'
                }
            }
        }
    }
}