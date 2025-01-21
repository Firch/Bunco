return {
    misc = {
        dictionary = {   -- Brazilian Portuguese translation by PinkMaggit.

            -- Config values

            bunc_colorful_finishers = 'Blinds Coloridos no Final',
            bunc_colorful_finishers_desc = 'Ativa fundos coloridos para os Blinds finais',
            bunc_colorful_finishers_desc_2 = 'e remove o fundo cinza no Modo Infinito',

            bunc_high_quality_shaders = 'Shaders de Alta Qualidade',
            bunc_high_quality_shaders_desc = 'Faz com que alguns dos shaders do jogo base',
            bunc_high_quality_shaders_desc_2 = 'sejam renderizados em alta qualidade (pode causar lag)',

            bunc_fixed_sprites = 'Sprites Ajustados',
            bunc_fixed_sprites_desc = 'Ajusta alguns sprites de forma sutil, removendo',
            bunc_fixed_sprites_desc_2 = 'pixels fora do lugar e melhorando consistência e contraste',

            bunc_gameplay_reworks = 'Revisões de Jogabilidade',
            bunc_gameplay_reworks_desc = 'Revisa algumas mecânicas do jogo base',
            bunc_gameplay_reworks_desc_2 = 'para tornar o jogo mais agradável',

            bunc_fixed_badges = 'Informações Corrigidas',
            bunc_fixed_badges_desc = 'Altera as badges dos consumíveis substituindo textos confusos',
            bunc_fixed_badges_desc_2 = 'por indicações de como obtê-las',

            bunc_jokerlike_consumable_editions = 'Edições no Slot de Consumíveis',
            bunc_jokerlike_consumable_editions_desc = 'Restaura o comportamento padrão dos consumíveis com',
            bunc_jokerlike_consumable_editions_desc_2 = 'edições que agem como Jokers (para outros mods conflitantes)',

            bunc_default_true = 'Ativado por padrão',
            bunc_default_false = 'Desativado por padrão',
            bunc_requires_restart = 'Requer reinício do jogo',

            -- Miscellaneous

            bunc_copied = 'Copiado!',
			bunc_nothing = 'Nada',
			bunc_chips = 'Fichas',
			bunc_loop = 'Loop!',
			bunc_chance = 'Chance',
			bunc_word_and = 'e',
			bunc_debuffed = 'Desvantagem!',
			bunc_pew = 'Pew!',
			bunc_declined = 'Recusado...',
			bunc_accepted = 'Aceito!',
			bunc_ouch = 'AI!',
			bunc_repeat = 'De novo!',
			bunc_thoth_tarot = 'Tarô de Tote',
			bunc_mysterious_tarot = 'Tarô?',
			bunc_mysterious_polymino = 'Polymino?',
			bunc_most_played_rank = '(classe mais jogada)',
			bunc_least_played_hand = '(mão menos jogada)',
			bunc_blade = '(1.5X pontuação de blind)',
			bunc_exceeded_score = 'Limite excedido!',

            -- Consumable types

            k_polymino = 'Polymino',
            b_polymino_cards = 'Cartas de Polymino',

            -- Booster types

            k_bunc_blind_pack = 'Pacote de Blinds',
            k_bunc_virtual_pack = 'Pacote Virtual'
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Florão',
            bunc_Halberds = 'Alabarda'
        },
        suits_plural = {
            bunc_Fleurons = 'Florões',
            bunc_Halberds = 'Alabardas'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Espectro',
            ['bunc_Straight Spectrum'] = 'Sequência Espectral',
            ['bunc_Straight Spectrum (Royal)'] = 'Espectro Real',
            ['bunc_Spectrum House'] = 'Espectro House',
            ['bunc_Spectrum Five'] = 'Espectro Five',
            ['bunc_Deal'] = 'Fechou'
        },
        poker_hand_descriptions = {
			['bunc_Spectrum'] = {
				[1] = '5 cartas com naipes diferentes'
			},
			['bunc_Straight Spectrum'] = {
				[1] = '5 cartas em sequência (classes consecutivas),',
				[2] = 'cada uma com um naipe diferente'
			},
			['bunc_Spectrum House'] = {
				[1] = 'Uma Trinca e um Par com',
				[2] = 'cada carta tendo um naipe diferente'
			},
			['bunc_Spectrum Five'] = {
				[1] = '5 cartas com a mesma classe,',
				[2] = 'cada uma com um naipe diferente'
			},
			['bunc_Deal'] = {
				[1] = '5 classes escolhidas',
				[2] = 'pela Placa de Carro'
			}
		},
        labels = {

            -- Editions

            bunc_glitter = 'Glitter',
            bunc_fluorescent = 'Fluorescente',

            -- Stickers

            bunc_scattering = 'Dispersivo',
            bunc_hindered = 'Travado',
            bunc_reactive = 'Reativo'
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} fichas extra nesta rodada'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Vinculadas{} neste grupo:'}},
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Vinculadas{} no grupo retirado'}},
            bunc_exotic_cards = {
                ['name'] = 'Cartas Exóticas',
                ['text'] = {
                    [1] = 'Cartas com naipe de',
                    [2] = '{C:bunc_fleurons}Florões{} ou {C:bunc_halberds}Alabardas{}'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = 'Laminado',
                ['text'] = {
                    [1] = 'Crie uma {C:attention}Marca de Fichas'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = 'Holográfico',
                ['text'] = {
                    [1] = 'Crie uma {C:attention}Marca de Multi'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = 'Policromático',
                ['text'] = {
                    [1] = 'Crie uma {C:attention}Marca Megamulti'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = 'Glitter',
                ['text'] = {
                    [1] = 'Crie uma {C:attention}Marca Ultrafichas'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Não descoberto',
                ['text'] = {
                    [1] = 'Compre ou use',
                    [2] = 'esta carta em uma',
                    [3] = 'tentativa sem código',
                    [4] = 'para saber o que ela faz'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = 'Pacote de Blinds',
                ['text'] = {
                    [1] = 'Escolha um de até',
                    [2] = '{C:attention}#1# Blinds de Chefe{} para',
                    [3] = 'substituir nesta Aposta'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = 'Pacote Virtual',
                ['text'] = {
                    [1] = 'Compre o baralho inteiro e',
                    [2] = 'escolha {C:attention}#1#{} de até',
                    [3] = '{C:attention}#2#{} cartas de{C:bunco_virtual_dark} Polymino{} para',
                    [4] = 'usar imediatamente'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = 'Pacote Virtual Jumbo',
                ['text'] = {
					[1] = 'Compre o baralho inteiro e',
                    [2] = 'escolha {C:attention}#1#{} de até',
                    [3] = '{C:attention}#2#{} cartas de{C:bunco_virtual_dark} Polymino{} para',
                    [4] = 'usar imediatamente'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = 'Pacote Virtual Mega',
                ['text'] = {
                    [1] = 'Compre o baralho inteiro e',
                    [2] = 'escolha {C:attention}#1#{} de até',
                    [3] = '{C:attention}#2#{} cartas de{C:bunco_virtual_dark} Polymino{} para',
                    [4] = 'usar imediatamente'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Dispersivo',
                ['text'] = {
                    [1] = 'Destrói um Curinga',
                    [2] = 'aleatório quando',
                    [3] = 'vendido ou destruído'
                }
            },
            bunc_hindered = {
                ['name'] = 'Travado',
                ['text'] = {
                    [1] = 'Fica travado no lugar',
                    [2] = 'até o fim da rodada',
                    [3] = 'após ser vendido'
                }
            },
            bunc_reactive = {
                ['name'] = 'Reativo',
                ['text'] = {
                    [1] = 'Recebe desvantagem se nenhum',
                    [2] = 'Blind for pulado nesta Aposta'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Adesivo Ciano',
                ['text'] = {
                    [1] = 'Usou este Curinga',
                    [2] = 'para vencer na dificuldade',
                    [3] = '{C:attention}Aposta Ciana{}'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Adesivo Rosa',
                ['text'] = {
                    [1] = 'Usou este Curinga',
                    [2] = 'para vencer na dificuldade',
                    [3] = '{C:attention}Aposta Rosa{}'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Adesivo Magenta',
                ['text'] = {
                    [1] = 'Usou este Curinga',
                    [2] = 'para vencer na dificuldade',
                    [3] = '{C:attention}Aposta Magenta{}'
                }
            }
        },

        -- Consumables

        Tarot = {
			c_bunc_art = {
                ['name'] = 'A Arte',
                ['text'] = {
                    [1] = 'Aprimora {C:attention}#1#{}',
                    [2] = 'cartas elecionadas para',
                    [3] = '{C:attention}#2#s'
                }
            },
            c_bunc_sky = {
                ['name'] = 'O Céu',
                ['text'] = {
                    [1] = 'Converte até',
                    [2] = '{C:attention}#1#{} cartas selecionadas',
                    [3] = 'para {C:bunc_fleurons}Florões{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = 'O Abismo',
                ['text'] = {
                    [1] = 'Converte até',
                    [2] = '{C:attention}#1#{} cartas selecionadas',
                    [3] = 'para {C:bunc_halberds}Alabardas{}'
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
                    [1] = 'Adiciona {C:dark_edition}Fluorescente{} para',
                    [2] = '{C:attention}#1#{} cartas selecionadas na mão'
                }
            },
            c_bunc_the_8 = {
                ['name'] = 'Forma 8',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} qualquer',
                    [2] = 'número de cartas selecionadas',
                    [3] = 'na mão que estejam desvinculadas',
                    [4] = '{C:inactive,s:0.6}(Seleção ilimitada enquanto a Forma 8 está selecionada)'
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'Forma I',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'que têm a {C:attention}mesma classe ou naipe'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'Forma O',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde 2 cartas têm a {C:attention}mesma propriedade',
                    [3] = '{C:inactive}(classe ou naipe){} e as outras 2 cartas',
                    [4] = 'têm um {C:attention}tipo diferente{} da {C:attention}mesma propriedade'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'Forma T',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde 3 cartas têm a {C:attention}mesma propriedade',
                    [3] = '{C:inactive}(classe ou naipe){} e a outra carta',
                    [4] = '{C:attention}não possui{} a {C:attention}mesma propriedade{}',
                    [5] = 'das outras cartas'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'Forma S',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde {C:attention}2 grupos{} de 2 cartas têm',
                    [3] = 'a {C:attention}mesma classe{} dentro de cada grupo, com uma',
                    [4] = 'carta de cada grupo compartilhando um {C:attention}naipe comum'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'Forma Z',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde {C:attention}2 grupos{} de 2 cartas têm',
                    [3] = 'o {C:attention}mesmo naipe{} dentro de cada grupo, com uma',
                    [4] = 'carta de cada grupo compartilhando uma {C:attention}classe comum'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'Forma J',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde 3 cartas têm a {C:attention}mesma classe',
                    [3] = 'e a outra carta que tem',
                    [4] = 'um {C:attention}naipe em comum{} porém',
                    [5] = 'não tem a mesma classe das outras'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'Forma L',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde 3 cartas têm o {C:attention}mesmo naipe',
                    [3] = 'e a outra carta que tem',
                    [4] = 'uma {C:attention}classe em comum{} porém',
                    [5] = 'não tem o mesmo naipe das outras'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'Forma /',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} 4 cartas selecionadas',
                    [2] = 'onde todas as cartas têm',
                    [3] = '{C:attention}propriedades diferentes{} {C:inactive}(classe e naipe)'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Luchador',
                ['text'] = {
                    [1] = 'Venda esta carta',
                    [2] = 'para criar uma',
                    [3] = '{C:attention}Marca Interruptora'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Red Card',
                ['text'] = {
                    [1] = 'This Joker gains {C:red}+#1#{} Multi',
                    [2] = 'per skipped choice',
                    [3] = 'in {C:attention}Booster Pack{}',
                    [4] = '{C:inactive}(No momento, {C:red}+#2#{C:inactive} Multi)'
                }
            },

            -- Main Jokers

            j_bunc_cassette = {
                ['name'] = 'Cassete',
                ['text'] = {
                    [1] = 'Ao descartar, vire o Curinga para o outro lado',
                    [2] = '{C:attention}Lado A:{} Cartas com naipe claro',
                    [3] = 'dão {C:chips}+#1#{} Fichas quando pontuadas',
                    [4] = '{C:attention}Lado B:{} Cartas com naipe escuro',
                    [5] = 'dão {C:mult}+#2#{} Multi quando pontuadas'
                    -- TODO would be good to have a line for the side
                    -- or colorize the active side
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Curinga Mosaico',
                ['text'] = {
                    [1] = '{C:attention}Cartas de Pedra',
                    [2] = 'dão {C:mult}+#1#{} Multi',
                    [3] = 'quando pontuadas'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão de 5 cartas',
                    [2] = 'que contém apenas',
                    [3] = '{C:attention,E:1}Cartas de Pedra{}'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Curinga Voxelizado',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi, {X:mult,C:white}-X#2#{} Multi por cada',
                    [2] = 'carta {C:attention}Aprimorada{} no seu {C:attention}baralho completo{}',
                    [3] = '{C:inactive}(No momento, {X:mult,C:white}X#3#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = 'Tenha ao menos {C:attention}#1#',
                    [2] = 'cartas {E:1,C:attention}Aprimoradas{} no',
                    [3] = 'seu baralho'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Agroglifos',
                ['text'] = {
                    [1] = 'Cartas de {C:clubs}Paus{} dão {C:mult}+3{} Multi,',
                    [2] = '{C:attention}8s{} dão {C:mult}+2{} Multi,',
                    [3] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} dão {C:mult}+1{} Multi'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Agroglifos',
                ['text'] = {
                    [1] = 'Cartas de {C:bunc_fleurons}Florões{} dão {C:mult}+4{} Multi,',
                    [2] = 'Cartas de {C:clubs}Paus{} dão {C:mult}+3{} Multi,',
                    [3] = '{C:attention}8s{} dão {C:mult}+2{} Multi,',
                    [4] = '{C:attention}Qs{}, {C:attention}10s{}, {C:attention}9s{}, {C:attention}6s{} dão {C:mult}+1{} Multi'
                }
            },
            j_bunc_xray = {
                ['name'] = 'Raio X',
                ['text'] = {
                    [1] = 'Este Curinga ganha {X:mult,C:white}X#1#{} Multi',
                    [2] = 'por carta comprada virada para baixo',
                    [3] = '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = 'Complete o desafio',
                    [2] = '{E:1,C:attention}Visão de Raio X'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Pavor',
                ['text'] = {
                    [1] = 'Após pontuar sua {C:attention}última{} mão,',
                    [2] = 'aprimore-a em {C:attention}#1# níveis{}',
                    [3] = 'e {C:attention}destrua{} as cartas pontuadas',
                    [4] = '{C:inactive,s:0.8}Todos os níveis dados por este Curinga',
                    [5] = '{C:inactive,s:0.8}serão perdidos, caso seja removido'
                },
                ['unlock'] = {
                    [1] = 'Reduza seu baralho',
                    [2] = 'em ao menos {E:1,C:attention}#1#{} cartas',
                    [3] = 'em uma rodada'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Curinga Pré-Histórico',
                ['text'] = {
                    [1] = 'Cartas jogadas que compartilham',
                    [2] = 'da mesma {C:attention}classe e naipe{} de uma',
                    [3] = '{C:attention}carta já pontuada{} nesta rodada',
                    [4] = 'dão {C:mult}+#1#{} Multi'
                },
                ['unlock'] = {
                    [1] = 'Jogue um',
                    [2] = '{E:1,C:attention}Flush Five'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Curinga Linoleogravado',
                ['text'] = {
                    [1] = 'Quando você joga exatamente {C:attention}2{} cartas',
                    [2] = 'que formam um {C:attention}Par{},',
                    [3] = "converta o naipe da carta da {C:attention}esquerda{}",
                    [4] = "para o naipe da carta da {C:attention}direita{}",
                    [5] = '{C:inactive}(Arraste para reorganizar)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'Impressão Fantasma',
                ['text'] = {
                    [1] = 'Dá as Fichas e Multi',
                    [2] = 'da última {C:attention}mão de pôquer{} jogada',
                    [3] = '{C:inactive}(Última mão: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Agiota',
                ['text'] = {
                    [1] = 'Receba {C:money}$#1#',
                    [2] = 'quando adquirido...'
                },
                ['unlock'] = {
                    [1] = 'Gaste ao menos {E:1,C:attention}$100',
                    [2] = 'durante uma única rodada'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Agiota',
                ['text'] = {
                    [1] = 'Receba {C:money}$#1#{} quando adquirido,',
                    [2] = 'mas o preço de venda é {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Curinga do Porão',
                ['text'] = {
                    [1] = 'Quando um {C:attention}Blind de chefe{} é derrotado,',
                    [2] = 'crie uma carta {C:spectral}Espectral{}',
                    [3] = '{C:inactive}(Deve ter espaço)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Curinga Pastor',
                ['text'] = {
                    [1] = 'este Curinga ganha {C:chips}+#1#{} Fichas',
                    [2] = 'quando a mão jogada contém um {C:attention}Par',
                    [3] = '{C:inactive}(No momento, {C:chips}+#2#{C:inactive} Fichas)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Curinga Cavaleiro',
                ['text'] = {
                    [1] = 'Quando o {C:attention}Blind{} é selecionado, {C:attention}embaralhe{} todos os',
                    [2] = 'Curingas e este Curinga ganha {C:mult}+#1#{} Multi,',
                    [3] = '{C:red}reseta{} quando qualquer Curinga é reorganizado',
                    [4] = '{C:inactive}(No momento, {C:mult}+#2#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = 'Derrote a {E:1,C:attention}Semente Dourada',
                    [2] = 'sem desabilitá-la'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Carta Joker Man & Jester Boy Nº 54',
                ['text'] = {
                    [1] = '{C:attention}Pacotes Padrão{} contém',
                    [2] = 'apenas cartas {C:attention}Aprimoradas{}'
                },
                ['unlock'] = {
                    [1] = 'Abra {E:1,C:attention}#1#',
                    [2] = 'Pacotes de Reforço',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Cães Jogando Pôquer',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi se todas as classes',
                    [2] = 'pontuadas são {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, ou {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Gancho de Direita',
                ['text'] = {
                    [1] = 'Reative a carta que pontua mais à direita',
                    [2] = 'uma vez por cada {C:blue}mão{} restante',
                },
                ['unlock'] = {
                    [1] = 'Reative uma carta',
                    [2] = 'jogada ao menos',
                    [3] = '{E:1,C:attention}#1# vezes{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Curinga Diabólico',
                ['text'] = {
                    [1] = 'Dobre todas as fontes de dinheiro,',
                    [2] = '{C:green}#1# de #2#{} chance de receber',
                    [3] = '{C:money}$1{} ao invés do valor esperado'
                },
                ['unlock'] = {
                    [1] = 'Complete o desafio',
                    [2] = '{E:1,C:attention}O Dobro ou Nada'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Carnaval',
                ['text'] = {
                    [1] = 'Após derrotar o {C:attention}Blind de Chefe{},',
                    [2] = '{C:attention}destrua{} um Curinga aleatório para',
                    [3] = 'voltar uma Aposta, na próxima vez',
                    [4] = 'funcionará apenas numa Aposta maior'
                    -- TODO needs a line for whether it's active / ante it will be active
                },
                ['unlock'] = {
                    [1] = 'Chegue na',
                    [2] = 'Aposta {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Marreta',
                ['text'] = {
                    [1] = '{C:attention}Cartas de Vidro{} dão +{X:mult,C:white}X#1#{} Multi',
                    [2] = 'mas quebram com certeza'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão de 5 cartas',
                    [2] = 'que contém apenas',
                    [3] = '{C:attention,E:1}Cartas de Vidro{}'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Cartão de Porta',
                ['text'] = {
                    [1] = 'Curingas {C:blue}Comuns{} não aparecem',
                    [2] = '{s:0.8}Outras raridades aparecem ao invés deles'
                },
                ['unlock'] = {
                    [1] = 'Vença uma tentativa',
                    [2] = 'sem ter possuído',
                    [3] = 'Curingas {C:attention,E:1}Comuns{}'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Impressões Digitais',
                ['text'] = {
                    [1] = 'Cartas pontuadas na {C:attention}mão vencedora{}',
                    [2] = 'ganham {C:chips}+#1#{} Fichas',
                    [3] = 'na próxima rodada apenas',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zé Zero',
                ['text'] = {
                    [1] = 'Este Curinga aumenta em {C:attention}#1#X{} as',
                    [2] = '{C:green,E:1,S:1.1}probabilidades{} {C:attention}nesta rodada{} quando uma',
                    [3] = 'carta com classe {C:attention}nula{}, {C:attention}zero{}, or {C:attention}incontável{}',
                    [4] = 'pontua {C:inactive}(K, Q, J, 0, Sem classe)',
                    [5] = '{C:inactive}(No momento, {C:attention}X#2#{C:inactive} {C:green,E:1,S:1.1}probabilidades{C:inactive})'
                    -- TODO not sure how to word non-countable
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = 'Cartas com {C:attention}Desvantagem{}',
                    [2] = 'dão {C:money}$#1#{} quando pontuadas'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Tapete de Cerveja',
                ['text'] = {
                    [1] = 'Cartas na mão ganham',
                    [2] = '{C:chips}+#1#{} Fichas nesta rodada',
                    [3] = 'após jogar ou descartar'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = 'Placa de Carro',
                ['text'] = {
                    [1] = '#1#',
                    [2] = 'tem as Fichas e Multi de todas as',
                    [3] = '{C:attention}mãos de pôquer{} jogadas nesta tentativa',
                    [4] = '{s:0.8}A combinação muda a cada rodada'
                },
                ['unlock'] = {
                    [1] = 'Complete o desafio',
                    [2] = '{E:1,C:attention}Cidade dos 15 Minutos'
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Curinga Preguiçoso',
                ['text'] = {
                    [1] = '{C:attention}Cartas Naipe Curinga',
                    [2] = 'dão {C:mult}+#1#{} Multi',
                    [3] = 'quando pontuadas'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão de 5 cartas',
                    [2] = 'que contém apenas',
                    [3] = '{C:attention,E:1}Cartas Naipe Curinga{}'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Curinga Neon',
                ['text'] = {
                    [1] = 'Este Curinga Ganha {X:mult,C:white}X#1#{} Multi',
                    [2] = 'por carta com {C:attention}desvantagem{} pontuada',
                    [3] = '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão de 5 cartas',
                    [2] = 'que contém apenas',
                    [3] = '{C:attention,E:1}Cartas com desvantagem{}'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Plano de Jogo',
                ['text'] = {
                    [1] = '{C:attention}Curingas{} adjacentes',
                    [2] = 'sofrem {C:red}desvantagem{} e',
                    [3] = 'dão {C:mult}+#1#{} Multi'
                },
                ['unlock'] = {
                    [1] = 'Derrote a {E:1,C:attention}Folha Verdejante',
                    [2] = 'sem desabilitá-la'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Conquista',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fichas,',
                    [2] = 'um Curinga aleatório sofre {C:red}desvantagem{}',
                    [3] = 'quando o {C:attention}Blind{} é selecionado'
                },
                ['unlock'] = {
                    [1] = 'Derrote o {E:1,C:attention}Coração Rubro',
                    [2] = 'sem desabilitá-lo'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Hierarquia de Necessidades',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi por',
                    -- TODO do wilds count, or base suit only?
                    [2] = '{C:attention}2-Ás{} do mesmo naipe',
                    [3] = 'no seu {C:attention}baralho completo',
                    [4] = '{C:inactive}(No momento, {C:mult}+#2#{C:inactive} Multi)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Curinga Anão',
                ['text'] = {
                    [1] = '{C:attention}Cartas de Pedra{} contidas na mão',
                    [2] = 'têm as habilidades das',
                    [3] = '{C:attention}Cartas de Aço{} e de {C:attention}Ouro'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão que',
                    [2] = 'contém cartas de {E:1,C:attention}Pedra{},',
                    [3] = '{E:1,C:attention}Aço{} e {E:1,C:attention}Ouro{}'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Aristocrata',
                ['text'] = {
                    [1] = 'Escolha uma carta extra',
                    [2] = 'de {C:attention}Pacotes de Reforço'
                },
                ['unlock'] = {
                    [1] = 'Vença uma tentativa sem',
                    [2] = 'abrir nenhum',
                    [3] = '{C:attention,E:1}Pacote de Reforço'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Metalurgista',
                ['text'] = {
                    [1] = '{C:attention}Cartas de Ouro{} dão {C:mult}+#1#{} Multi',
                    [2] = 'enquanto contidas na mão'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Juggalo',
                ['text'] = {
                    [1] = 'Adiciona {C:dark_edition}Laminado{}, {C:dark_edition}Holográfico{},',
                    [2] = '{C:dark_edition}Policromático{}, ou {C:dark_edition}Glitter{}',
                    [3] = 'para um {C:attention}consumível{} aleatório',
                    [4] = 'quando o {C:attention}Blind{} é selecionado'
                },
                ['unlock'] = {
                    [1] = 'Use {C:attention,E:1}#1#{} consumíveis',
                    [2] = 'com {C:attention,E:1}Edições'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Cabeça nas Nuvens',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de aprimorar',
                    [2] = '{C:attention}Carta Alta{} quando você',
                    [3] = 'aprimora qualquer {C:attention}mão de pôquer'
                },
                ['unlock'] = {
                    [1] = 'Vença uma tentativa com',
                    [2] = '{C:attention,E:1}Carta Alta{} sendo',
                    [3] = 'a mão de pôquer de maior nível'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Headshot',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi se a mão jogada',
                    [2] = 'contém apenas uma única',
                    [3] = 'carta de {C:attention}realeza{} pontuada'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Dedo no Gatilho',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi,',
                    [2] = '{C:attention}selecionar{} uma carta tem',
                    [3] = 'uma chance de {C:green}#2# em #3#{} de',
                    [4] = 'jogar as cartas selecionadas'
                },
                ['unlock'] = {
                    [1] = 'Derrote o {E:1,C:attention}Sino Cerúleo',
                    [2] = 'sem desabilitá-lo'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Amarelinha',
                ['text'] = {
                    [1] = 'Ganhe {C:red}+#1#{} descarte',
                    [2] = 'se a mão jogada',
                    [3] = 'contém uma {C:attention}Sequência{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Peão',
                ['text'] = {
                    [1] = 'Cartas com a {C:attention}menor{}',
                    [2] = 'classe do seu baralho completo',
                    [3] = '{C:attention}aumentam a classe{} quando pontuadas'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Tabuleiro Quebra-Cabeça',
                ['text'] = {
                    [1] = 'Quando uma carta de {C:tarot}Tarô{} é usada,',
                    [2] = '{C:green}#1# de #2#{} chance de adicionar',
                    [3] = '{C:dark_edition}Laminado{}, {C:dark_edition}Holográfico{}, ou',
                    [4] = '{C:dark_edition}Policromático{} a uma carta',
                    [5] = 'selecionada aleatória'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Vandalismo',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de cartas',
                    [2] = 'serem compradas viradas pra baixo',
                    [3] = 'Cartas viradas para baixo dão',
                    [4] = '{X:mult,C:white}X#3#{} Multi quando pontuadas'
                },
                ['unlock'] = {
                    [1] = 'Jogue uma mão de 5 cartas',
                    [2] = 'que contém apenas',
                    [3] = 'cartas {C:attention,E:1}Viradas{}'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Protestador',
                ['text'] = {
                    [1] = 'Adiciona {C:attention}#1#X{} o valor da maior classe',
                    [2] = 'descartada essa rodada em Fichas',
                    [3] = '{C:inactive}(No momento, {C:chips}+#2#{C:inactive} Fichas)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Rabisco',
                ['text'] = {
                    [1] = '{C:attention}Copie{} o primeiro consumível',
                    [2] = 'usado nesta rodada',
                    [3] = '{C:inactive}(Deve ter espaço)'
                },
                ['unlock'] = {
                    [1] = 'Vença {C:attention,E:1}#1#{} tentativas',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Desproporcionalidade',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Piada Recorrente',
                ['text'] = {
                    [1] = 'Crie um "{C:attention}Curinga{}"',
                    [2] = '{C:dark_edition}Negativo{} no início',
                    [3] = 'de cada loja'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'Na Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fichas e {C:mult}+#2#{} Multi se',
                    [2] = 'a mão jogada contém uma {C:attention}Sequência{}',
                    [3] = 'com uma carta de {C:attention}realeza{} pontuada'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi se nenhuma',
                    [2] = 'carta {C:attention}Aprimorada{}',
                    [3] = 'é pontuada'
                },
                ['unlock'] = {
                    [1] = 'Vença uma tentativa sem nunca',
                    [2] = 'possuir cartas {C:attention,E:1}Aprimoradas'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Crítico',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Multi se o placar",
                    [2] = 'da mão pontuada atual',
                    [3] = 'for {C:attention}menor que 1/#2#{} do',
                    [4] = "que o Placar total do Blind"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Celular',
                ['text'] = {
                    [1] = '{C:attention}Retorne{} cartas pontuadas para a mão',
                    [2] = 'após a primeira jogada da rodada',
                    [3] = 'se nenhum descarte foi usado'
                }
            },
            j_bunc_wino = {
                ['name'] = 'Wino',
                ['text'] = {
                    [1] = 'Cartas jogadas de',
                    [2] = '{C:hearts}Copas{} e {C:diamonds}Ouros{}',
                    [3] = 'dão {C:chips}+#1#{} Fichas quando pontuadas'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Caçador de Recompensa',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi por',
                    [2] = 'cada {C:money}$1{} abaixo de {C:money}$0',
                    [3] = '{C:inactive}(No momento, {C:mult}+#2#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = 'Tenha menos que {E:1,C:attention}$#1#',
                    [2] = 'durante uma única tentativa'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Ratoeira',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fichas,',
                    [2] = '{C:green}#2# de #3#{} chance de',
                    [3] = '{C:attention}perder{} uma mão em vez disso'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'O Curinga',
                ['text'] = {
                    [1] = 'Depois de jogada, cada carta',
                    [2] = 'pontuada sem um aprimoramento tem',
                    [3] = '{C:green}#1# de #2#{} chance de ser destruída',
                },
                ['unlock'] = {
                    [1] = 'Descubra todos os',
                    [2] = '{C:attention}Blinds de Chefe'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangrama',
                ['text'] = {
                    [1] = 'Quando um {C:attention}7{} é pontuado,',
                    [2] = '{C:mult}+#1#{} Multi vezes o',
                    [3] = 'número de {C:attention}7s{} pontuados'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Dominó',
                ['text'] = {
                    [1] = 'Ao {C:attention}adquirir{} or {C:attention}usar',
                    [2] = 'uma carta da loja ou',
                    [3] = 'Pacote de Reforço, adquira {C:attention}2',
                    [4] = 'cartas adjacentes, se possível'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = 'Pistola de Cola',
                ['text'] = {
                    [1] = 'Venda esta carta para',
                    [2] = '{C:attention}Vincular{} #1# cartas',
                    [3] = 'de Jogo selecionadas'
                }
            },
            j_bunc_taped = {
                ['name'] = 'Curingas Colados',
                ['text'] = {
                    [1] = '{C:attention}Vincula{} todas as',
                    [2] = 'cartas jogadas na primeira',
                    [3] = 'mão pontuada durante o',
                    [4] = '{C:attention}Blind de Chefe{}'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = 'Bola de Elástico',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi por {C:attention}Vínculo{}',
                    [2] = 'criado nesta tentativa',
                    [3] = '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)'
                }
            },
            j_bunc_headache = {
                ['name'] = 'Dor de Cabeça',
                ['text'] = {
                    [1] = 'Crie uma carta de {C:bunco_virtual_dark}Polymino{}',
                    [2] = 'por cada {C:attention}#1#{} cartas de Jogo',
                    [3] = 'destruídas {C:inactive}(Deve ter espaço)',
                    [4] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# cartas destruídas)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = 'Colecionador de Jogos',
                ['text'] = {
                    [1] = 'Ganha {C:chips}+#1#{} Fichas',
                    [2] = 'quando um grupo vinculado',
                    [3] = 'é {C:attention}comprado{} do baralho',
                    [4] = '{C:inactive}(No momento, {C:chips}+#2#{C:inactive} Fichas)'
                }
            },
            j_bunc_jumper = {
                ['name'] = 'Saltador',
                ['text'] = {
                    [1] = 'Ganha {C:chips}+#1#{} Fichas',
                    [2] = 'se a mão jogada',
                    [3] = 'contém um {C:attention}Flush{}',
                    [4] = '{C:inactive}(No momento, {C:chips}+#2#{C:inactive} Fichas)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = 'Stylophone',
                ['text'] = {
                    [1] = 'Cartas dão {C:attention}X#1#{} Multi',
                    [2] = 'da {C:attention}classe{}',
                    [3] = 'quando pontuadas'
                }
            },
			j_bunc_kite_experiment = {
                ['name'] = 'Experimento da Pipa',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de {C:attention}repontuar',
                    [2] = '{C:attention}Cartas de Cobre{} já repontuadas',
                    [3] = 'uma vez adicional'
                }
            },
			j_bunc_robot = {
                ['name'] = 'Robô',
                ['text'] = {
                    [1] = 'Este Curinga ganha {C:mult}+#1#{} Multi',
                    [2] = 'toda vez que uma {C:attention}Carta de Cobre',
                    [3] = 'for repontuada',
                    [4] = '{C:inactive}(No momento, {C:mult}+#2#{C:inactive} Multi)'
                }
            },
			
            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Curinga Zeloso',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi se a mão',
                    [2] = 'jogada contém',
                    [3] = 'um {C:attention}Espectro'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Curinga Sinistro',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fichas se a mão',
                    [2] = 'jogada contém',
                    [3] = 'um {C:attention}Espectro'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Curinga Invejoso',
                ['text'] = {
                    [1] = 'Cartas jogadas com',
                    [2] = 'naipe de {C:bunc_fleurons}Florões{} dão',
                    [3] = '{C:mult}+#1#{} Multi quando pontuadas'
                }
            },
            j_bunc_proud = {
                ['name'] = 'Curinga Orgulhoso',
                ['text'] = {
                    [1] = 'Cartas jogadas com',
                    [2] = 'naipe de {C:bunc_halberds}Alabardas{} dão',
                    [3] = '{C:mult}+#1#{} Multi quando pontuadas'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Desejínio',
                ['text'] = {
                    [1] = 'Chance de {C:green}#1# em #2#{} para',
                    [2] = 'cartas de {C:bunc_fleurons}Florões{}',
                    [3] = 'ganharem {C:money}${} igual às',
                    [4] = "Fichas pontuadas pela carta"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Inobtânio',
                ['text'] = {
                    [1] = 'Cartas jogadas com',
                    [2] = 'naipe de {C:bunc_halberds}Alabardas{} dão',
                    [3] = '{C:chips}+#1#{} Fichas e {C:mult}+#2#{} Multi',
                    [4] = "quando pontuadas"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'A Dinastia',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi se a mão',
                    [2] = 'jogada contém',
                    [3] = 'um {C:attention}Espectro'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Varinha Mágica',
                ['text'] = {
                    [1] = 'Este Curinga ganha {X:mult,C:white}X#1#{} Multi',
                    [2] = 'por mão {C:attention}consecutiva{} jogada',
                    [3] = 'contendo um {C:attention}Espectro{}',
                    [4] = '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Carambola',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de aprimorar a',
                    [2] = '{C:attention}mão de pôquer{} se ela contém um {C:attention}Espectro',
                    [3] = '{C:green}#1# de #3#{} chance de destruir este Curinga ao fim da rodada',
                    [4] = 'se uma mão que contém {C:attention}Espectro{} foi jogada'
                    -- TODO this joker is way too long
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Fondue',
                ['text'] = {
                    [1] = 'Cartas pontuadas na',
                    [2] = '{C:attention}primeira mão{} da rodada são',
                    [3] = 'convertidas para {C:bunc_fleurons}Florões'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Miopia',
                ['text'] = {
                    [1] = '{C:spades}Espadas{} e {C:clubs}Paus{}',
                    [2] = 'contam como {C:bunc_halberds}Alabardas'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Astigmatismo',
                ['text'] = {
                    [1] = '{C:hearts}Copas{} e {C:diamonds}Ouros{}',
                    [2] = 'contam como {C:bunc_fleurons}Florões'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Roy G. Biv',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de adicionar',
                    [2] = '{C:dark_edition}Policromático{} a uma',
                    [3] = 'carta pontuada aleatória se a',
                    [4] = 'mão contém um {C:attention}Espectro'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi por carta {C:bunco_exotic}Exótica{}',
                    [2] = 'no seu {C:attention}baralho completo',
                    [3] = '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'A Palidez',
                ['text'] = {
                    [1] = 'Jogar ou Descartar custa',
                    [2] = 'ambos mão e descarte'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = 'O Guarda-Chuva',
                ['text'] = {
                    [1] = 'Após Jogar, vire todas as',
                    [2] = 'cartas na mão de cabeça para baixo'
                }
            },
            bl_bunc_tine = {
                ['name'] = 'A Ponta',
                ['text'] = {
                    [1] = 'Cada #1# recebe desvantagem'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'O Balanço',
                ['text'] = {
                    [1] = 'Após Jogar ou Descartar,',
                    [2] = 'vire todas as cartas'
                }
            },
            bl_bunc_miser = {
                ['name'] = 'O Avarento',
                ['text'] = {
                    [1] = 'Pule a loja após',
                    [2] = 'derrotar este blind'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'O Portão',
                ['text'] = {
                    [1] = 'Cartas não podem',
                    [2] = 'ser desselecionadas'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'A Chama',
                ['text'] = {
                    [1] = 'Todas as cartas Aprimoradas',
                    [2] = 'recebem desvantagem'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'A Máscara',
                ['text'] = {
                    [1] = '#1# tem as Fichas',
                    [2] = 'e Multi base de #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'O Baluarte',
                ['text'] = {
                    [1] = 'Jogar um #1# descarta',
                    [2] = 'todas as cartas da mão'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'O Inchaço',
                ['text'] = {
                    [1] = 'Ter mais que $5 aplica',
                    [2] = 'desvantagem à primeira mão retirada'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'A Pedra',
                ['text'] = {
                    [1] = '+1X Base por',
                    [2] = 'cada $10 possuído'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'A Areia',
                ['text'] = {
                    [1] = '+1X Base por',
                    [2] = 'cada marca possuída'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'A Lâmina',
                ['text'] = {
                    [1] = 'Primeira vez que a pontuação exceder #1#',
                    [2] = 'faz a puntuação da mão ser 0'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'A Garra',
                ['text'] = {
                    [1] = 'Cartas descartadas',
                    [2] = 'voltam para o baralho'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'O véu',
                ['text'] = {
                    [1] = 'Cartas selecionadas',
                    [2] = 'são viradas de cabeça para baixo'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'O Cadáver',
                ['text'] = {
                    [1] = 'Não deve jogar cartas de realeza'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'O Vento',
                ['text'] = {
                    [1] = 'O Curinga mais à esquerda',
                    [2] = 'recebe desvantagem'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'O Príncipe',
                ['text'] = {
                    [1] = 'Todos os Curingas recebem desvantagem',
                    [2] = 'até a primeira mão ser jogada'
                }
            },
            bl_bunc_depths = {
                ['name'] = 'As Profundezas',
                ['text'] = {
                    [1] = 'Após jogar, ganhe uma Marca',
                    [2] = 'Eterna, Perecível ou Dispersiva'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'O Abismo',
                ['text'] = {
                    [1] = 'Após Jogar, ganhe uma Marca',
                    [2] = 'Travada, Reativa ou de Aluguel'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Coroa Verde-Amarela',
                ['text'] = {
                    [1] = 'Todas as cartas de naipe de Espadas,',
                    [2] = 'Copas, Paus e Ouros recebem desvantagem'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Tridente Carmesim',
                ['text'] = {
                    [1] = 'Sem lojas nesta Aposta'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Torre Índigo',
                ['text'] = {
                    [1] = 'Cartas não jogadas anteriormente',
                    [2] = 'nesta Aposta recebem desvantagem'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Adaga Magenta',
                ['text'] = {
                    [1] = 'Descartar cartas as joga',
                    [2] = 'e subtrai o valor pontuado'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Escudo Turquesa',
                ['text'] = {
                    [1] = 'Pontuação em excesso desta Aposta',
                    [2] = "aumenta a pontuação requeria por este Blind"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Baralho de Fadas',
                ['text'] = {
                    [1] = 'Após derrotar cada',
                    [2] = '{C:attention}Blind de chefe{}, adicione #1#',
                    [3] = '{C:bunco_exotic,T:bunc_exotic_cards}#2#{} aleatórias',
                    [4] = 'ao seu baralho'
                },
                ['unlock'] = {
                    [1] = 'Jogue {E:1,C:attention}5 naipes diferentes',
                    [2] = 'em uma única mão'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Baralho Digital',
                ['text'] = {
                    [1] = 'Cartas de {C:bunco_virtual_dark}Polymino{}',
                    [2] = 'podem aparecer na loja,',
                    [3] = "comece com uma {C:bunco_virtual_dark,T:c_bunc_the_i}Forma I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Marca de Chefe',
                ['text'] = {
                    [1] = 'Dá um',
                    [2] = '{C:attention}Pacote de Blinds'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Marca Dupla',
                ['text'] = {
                    [1] = 'Dá uma cópia da',
                    [2] = 'próxima {C:attention}Marca{} selecionada',
                    [3] = '{s:0.8}Exceto{s:0.6,C:attention}Marcas Duplas e Triplas{}'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Marca Interruptora',
                ['text'] = {
                    [1] = 'Desativa o',
                    [2] = '{C:attention}Blind de Chefe{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = 'Marca de Fliper',
                ['text'] = {
                    [1] = 'Dá um',
                    [2] = '{C:bunco_virtual_dark}Pacote Virtual Mega'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Marca Tripla',
                ['text'] = {
                    [1] = 'Dá duas cópias da',
                    [2] = 'próxima {C:attention}Marca{} selecionada',
                    [3] = '{s:0.8}Exceto {s:0.8,C:attention}Marca Tripla{}'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Marca de Glitter',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja de',
                    [2] = 'edição de base é grátis',
                    [3] = 'e torna-se {C:dark_edition}Glitter'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Marca Fluorescente',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja de',
                    [2] = 'edição de base é grátis',
                    [3] = 'e torna-se {C:dark_edition}Fluorescente'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Marca de Fichas',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Fichas na próxima mão'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Marca de Multi',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Multi na próxima mão',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Marca Megamulti',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Multi na próxima mão',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Marca Ultrafichas',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} na próxima mão'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Marca Filigrana',
                ['text'] = {
                    [1] = 'O próximo {C:attention}Pacote Padrão{} aberto',
                    [2] = 'terá apenas cartas {C:bunco_exotic}Exóticas'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Marca Eterna',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}Eterno{}'
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Marca Perecível',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}Prececível{}'
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Marca Dispersiva',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}Dispersivo{}'
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Marca Travada',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}Travado{}'
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Marca Reativa',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}Reativo{}'
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Marca de Aluguel',
                ['text'] = {
                    [1] = 'O próximo Curinga da loja',
                    [2] = 'receberá um adesivo {C:attention}de Aluguel{}'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Glitter',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Fichas'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Fluorescente',
                ['text'] = {
                    [1] = 'Não pode ser virado, selecionado',
                    [2] = 'forçadamente ou receber desvantagem'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Laminação',
                ['text'] = {
                    [1] = 'Consumíveis nos',
                    [2] = '{C:attention}Pacotes de  reforço{}',
                    [3] = 'podem ter uma {C:dark_edition}Edição'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Super Revestimento',
                ['text'] = {
                    [1] = 'Todos os consumíveis nos',
                    [2] = '{C:attention}Pacotes de Reforço{}',
                    [3] = 'terão uma {C:dark_edition}Edição'
                },
                ['unlock'] = {
                    [1] = 'Use {C:attention,E:1}#1#{} consumíveis',
                    [2] = 'com {C:attention,E:1}Edições',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Corta-Sebes',
                ['text'] = {
                    [1] = "Reduza a pontuação do Blind",
                    [2] = 'em {C:attention}#1#%{} a cada mão jogada'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Motosserra',
                ['text'] = {
                    [1] = 'Todas as pontuações requeridas',
                    [2] = 'são reduzidas em {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Reduza a pontuação do blind",
                    [2] = 'usando Hedge Trimmer',
                    [3] = '{C:attention,E:1}#1#{} vezes, no total',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Copos e Bolas",
                ['text'] = {
                    [1] = '{C:attention}+1{} Pacote de Reforço',
                    [2] = 'disponível em cada loja'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Jogo dos Copos',
                ['text'] = {
                    [1] = 'Atualize o {C:attention}conteúdo',
                    [2] = 'dos Pacotes de Reforço',
                    [3] = '{C:attention}1{} vez por pacote'
                },
                ['unlock'] = {
                    [1] = 'Abra {E:1,C:attention}#1#',
                    [2] = 'Pacotes de Reforço',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = 'Disfarce',
                ['text'] = {
                    [1] = '{C:attention}Pacotes de Blinds{} podem',
                    [2] = 'aparecer na loja'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Dissimulação',
                ['text'] = {
                    [1] = 'Todos os {C:attention}Pacotes de Blinds{}',
                    [2] = 'na loja são grátis'
                },
                ['unlock'] = {
                    [1] = 'Troque {E:1,C:attention}#1#{}',
                    [2] = 'Blinds por Blinds',
                    [3] = 'dos Pacotes de Blinds',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = 'Pochete',
                ['text'] = {
                    [1] = '{C:green}#1# de #2#{} chance de',
                    [2] = 'ganhar uma {C:attention}Marca Dupla',
                    [3] = 'toda vez que um',
                    [4] = 'Blind é {C:attention}pulado'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = 'Colecionador de Broches',
                ['text'] = {
                    [1] = 'Todas as próximas {C:attention}Marcas Duplas',
                    [2] = 'aparecerão como {C:attention}Marcas Triplas'
                },
                ['unlock'] = {
                    [1] = 'Pule um total de ',
                    [2] = '{E:1,C:attention}#1#{} Blinds',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = 'Máquina de Fliper',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}Pacotes Virtuais',
                    [2] = 'aparecem {C:attention}4X{} mais frequentemente'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = 'Cartas de {C:bunco_virtual_dark}Polymino{} podem',
                    [2] = 'vincular {C:attention}mais uma{} carta',
                    [3] = '{s:0.6,C:inactive}A carta extra pode ser de qualquer propriedade'
                },
                ['unlock'] = {
                    [1] = 'Crie um total de',
                    [2] = '{E:1,C:attention}#1#{} grupos vinculados',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
		Enhanced = {
            m_bunc_copper = {
                ['name'] = 'Carta de Cobre',
                ['text'] = {
                    [1] = 'Repontua se jogada',
                    [2] = '{C:attention}adjacente{} a outra',
                    [3] = 'Carta de Cobre pontuada'
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Aposta Ciana',
                ['text'] = {
                    [1] = 'A loja pode ter Curingas {C:attention}Dispersivos{}',
                    [2] = '{C:inactive,s:0.8}(Destrói um Curinga aleatório quando vendido ou destruído)'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Aposta Rosa',
                ['text'] = {
                    [1] = 'A loja pode ter Curingas {C:attention}Travados{}',
                    [2] = '{C:inactive,s:0.8}(Fica travado no lugar até o fim da rodada após ser vendido)'
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Aposta Magenta',
                ['text'] = {
                    [1] = 'A loja pode ter Curingas {C:attention}Reativos{}',
                    [2] = '{C:inactive,s:0.8}(Recebe desvantagem se nenhum Blind for pulado nesta Aposta)'
                }
            }
        }
    }
}