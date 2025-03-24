-- Korean Translated By
-- JayJayDee - https://github.com/JayJayDee
-- Namssy - https://github.com/namssy
return {
    misc = {
        dictionary = {
            -- Config values
            bunc_colorful_finishers = '컬러풀한 마지막 보스 블라인드',
            bunc_colorful_finishers_desc = '마지막 보스 블라인드에서 멋진 배경 색상을 추가했습니다.',
            bunc_colorful_finishers_desc_2 = '그리고 무한 모드에서 회색 배경을 제거했습니다',

            bunc_high_quality_shaders = '고퀄리티 쉐이더',
            bunc_high_quality_shaders_desc = '바닐라 쉐이더들을 더욱 고퀄리티로',
            bunc_high_quality_shaders_desc_2 = '렌더링합니다 (랙이 발생할 수 있습니다)',

            bunc_fixed_sprites = '스프라이트 개선',
            bunc_fixed_sprites_desc = '불필요한 픽셀들을 제거하여',
            bunc_fixed_sprites_desc_2 = '일관성과 가시성을 향상시켰습니다',

            bunc_gameplay_reworks = '게임플레이 리워크',
            bunc_gameplay_reworks_desc = '게임 플레이가 더욱 즐거워 지도록',
            bunc_gameplay_reworks_desc_2 = '바닐라 발라트로의 일부 동작을 재설계했습니다',

            bunc_fixed_badges = '뱃지 시스템 개선',
            bunc_fixed_badges_desc = '소모품의 뱃지를 얻는 방법을',
            bunc_fixed_badges_desc_2 = '덜 혼란스럽게 표기하였습니다.',

            bunc_jokerlike_consumable_editions = '소모품 슬롯의 모드 충돌 개선',
            bunc_jokerlike_consumable_editions_desc = '다른 모드에서 소모품이 조커처럼 동작하는 경우',
            bunc_jokerlike_consumable_editions_desc_2 = '동작을 바닐라로 되돌립니다 (모드 충돌 방지)',

            bunc_default_true = '기본으로 활성화됨',
            bunc_default_false = '기본으로 비활성화됨',
            bunc_requires_restart = '게임 재시작이 필요합니다',

            -- Miscellaneous

            bunc_a_side = 'A 사이드',
            bunc_b_side = 'B 사이드',
            bunc_copied = '복사됨!',
            bunc_nothing = '없습니다',
            bunc_chips = '칩',
            bunc_loop = '반복됨!',
            bunc_chance = '기회',
            bunc_word_and = ',',
            bunc_debuffed = '디버프됨!',
            bunc_pew = '휴!',
            bunc_declined = '거부됨...',
            bunc_accepted = '승인됨!',
            bunc_robbed = '도둑맞음!',
            bunc_ouch = '으악!',
            bunc_inactive = '비활성화됨',
            bunc_repeat = '반복!',
            bunc_thoth_tarot = '토스 타로',
            bunc_thoth_tarots = '토스 타로',
            bunc_mysterious_tarot = '타로?',
            bunc_mysterious_polymino = '폴리미노?',
            bunc_most_played_rank = '(가장 많이 플레이된 핸드)',
            bunc_least_played_hand = '(가장 적게 플레이된 핸드)',
            bunc_blade = '(1.5X 점수)',
            bunc_exceeded_score = '한도 초과!',
            bunc_min_ante = '최소 앤티:',
            bunc_final_blind = '마지막 블라인드',

            -- Consumable types

            k_polymino = '폴리미노',
            b_polymino_cards = '폴리미노 카드',

            -- Booster types

            k_bunc_blind_pack = '블라인드 팩',
            k_bunc_virtual_pack = '버츄얼 팩'
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = '꽃무늬',
            bunc_Halberds = '할버드'
        },
        suits_plural = {
            bunc_Fleurons = '꽃무늬',
            bunc_Halberds = '할버드'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = '스펙트럼',
            ['bunc_Straight Spectrum'] = '스트레이트 스펙트럼',
            ['bunc_Straight Spectrum (Royal)'] = '로열 스트레이트 스펙트럼',
            ['bunc_Spectrum House'] = '스펙트럼 하우스',
            ['bunc_Spectrum Five'] = '스펙트럼 파이브',
            ['bunc_Deal'] = '딜'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '다른 수트를 가진 5장의 카드'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5장의 연속된 랭크를 가진 카드',
                [2] = '각각의 카드는 다른 수트여야 합니다.'
            },
            ['bunc_Spectrum House'] = {
                [1] = '각각 다른 수트의 카드로',
                [2] = '구성된 트리플과 페어'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '같은 랭크를 가진 5장의 카드',
                [2] = '각각의 카드는 다른 수트여야 합니다.'
            },
            ['bunc_Deal'] = {
                [1] = '번호판 조커에 의해',
                [2] = '선택된 5개의 랭크'
            }
        },
        labels = {
            -- Editions
            bunc_glitter = '반짝반짝',
            bunc_fluorescent = '형광',

            -- Stickers
            bunc_scattering = '산산조각',
            bunc_hindered = '방해',
            bunc_reactive = '리액티브'
        },
        collab_palettes = {
            default_Spades = {
                ['3'] = '재조정된 고대비'
            },
            default_Hearts = {
                ['3'] = '재조정된 고대비'
            },
            default_Clubs = {
                ['3'] = '재조정된 고대비'
            },
            default_Diamonds = {
                ['3'] = '재조정된 고대비'
            }
        },
        collabs = {
            bunc_Fleurons = {
                ['1'] = '기본',
                ['2'] = '덕 게임',
                ['3'] = '고통의 리사'
            },
            bunc_Halberds = {
                ['1'] = '기본',
                ['2'] = '피엔드 폴리오',
                ['3'] = '무의미한 리사'
            }
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '이번 라운드에서 {C:chips}+#1#{}개의 칩을 얻습니다.'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}연결됨{} 그룹:'}},
            bunc_linked_group = {
                ['name'] = '연결된 그룹',
                ['text'] = {
                    [1] = '그룹 내 연결된 카드들은',
                    [2] = '같이 드로 되고, 선택되며',
                    [3] = '같이 {C:attention}파괴{}됩니다.'
                }
            },
            bunc_drawn_linked_cards = {['text'] = {[1] = '뽑힌 카드 그룹에서 {C:attention}연결됨{}'}},
            bunc_light_suits = {
                ['name'] = '라이트 수트',
                ['text'] = {
                    [1] = '{C:hearts}하트{} 그리고 {C:diamonds}다이아몬드{} 카드'
                }
            },
            bunc_light_suits_exotic = {
                ['name'] = '라이트 수트(엑조틱)',
                ['text'] = {
                    [1] = '{C:hearts}하트{}, {C:diamonds}다이아몬드,',
                    [2] = '그리고 {C:bunc_fleurons}꽃무늬{} 수트의 카드'
                }
            },
            bunc_dark_suits = {
                ['name'] = '다크 수트',
                ['text'] = {
                    [1] = '{C:spades}스페이드{} 나 {C:clubs}클럽 카드'
                }
            },
            bunc_dark_suits_exotic = {
                ['name'] = '다크 수트(엑조틱)',
                ['text'] = {
                    [1] = '{C:spades}스페이드{}, {C:clubs}클럽',
                    [2] = '그리고 {C:bunc_halberds}할버드{} 수트의 카드'
                }
            },
            bunc_exotic_cards = {
                ['name'] = '엑조틱 카드',
                ['text'] = {
                    [1] = '{C:bunc_fleurons}꽃무늬{}나 ',
                    [2] = '{C:bunc_halberds}할버드{} 수트의 카드'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = '포일',
                ['text'] = {
                    [1] = '{C:attention}칩{} 태그를 만듭니다'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = '홀로그래픽',
                ['text'] = {
                    [1] = '{C:attention}배수{} 태그를 만듭니다'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = '폴리크롬',
                ['text'] = {
                    [1] = '{C:attention}메가배수{} 태그를 만듭니다'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = '반짝반짝',
                ['text'] = {
                    [1] = '{C:attention}울트라칩{} 태그를 만듭니다'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = '발견되지 않음',
                ['text'] = {
                    [1] = '시드를 사용하지 않은 런에서',
                    [2] = '이 카드를 사거나 사용해 보세요',
                    [3] = '무슨 일이 생길까요?'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = '블라인드 팩',
                ['text'] = {
                    [1] = '이번 앤티에서 교체할',
                    [2] = '{C:attention}#1# 보스 블라인드{} 를',
                    [3] = '선택합니다'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = '버츄얼 팩',
                ['text'] = {
                    [1] = '전체 덱에서',
                    [2] = '{C:attention}#1#{}개 이상의 즉시 사용할',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} 폴리미노{} 카드를',
                    [4] = '선택합니다'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = '점보 버츄얼 팩',
                ['text'] = {
                    [1] = '전체 덱에서',
                    [2] = '{C:attention}#1#{}개 이상의 즉시 사용할',
                    [3] = '{C:attention}#2# {C:bunco_virtual_dark}폴리미노{} 카드를',
                    [4] = '선택합니다'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = '메가 버츄얼 팩',
                ['text'] = {
                    [1] = '전체 덱에서',
                    [2] = '{C:attention}#1#{}개 이상의 즉시 사용할',
                    [3] = '{C:attention}#2#{} {C:bunco_virtual_dark}폴리미노{} 카드를',
                    [4] = '선택합니다'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = '산산조각',
                ['text'] = {
                    [1] = '조커가 제거될 때',
                    [2] = '인접한 임의의 조커가',
                    [3] = '파괴됩니다'
                }
            },
            bunc_hindered = {
                ['name'] = '방해',
                ['text'] = {
                    [1] = '판매 된 후',
                    [2] = '라운드가 끝날 때까지',
                    [3] = '원래 자리에 유지 됩니다'
                }
            },
            bunc_reactive = {
                ['name'] = '리액티브',
                ['text'] = {
                    [1] = '이번 앤티에서 블라인드가 스킵되지 않았다면 디버프됩니다'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = '시안 스티커',
                ['text'] = {
                    [1] = '이 조커를',
                    [2] = '{C:attention}시안{} {C:attention}스테이크{}',
                    [3] = '난이도에서 사용했습니다'
                }
            },
            bunc_pink_sticker = {
                ['name'] = '핑크 스티커',
                ['text'] = {
                    [1] = '이 조커를',
                    [2] = '{C:attention}핑크{} {C:attention}스테이크{}',
                    [3] = '난이도에서 사용했습니다'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = '마젠타 스티커',
                ['text'] = {
                    [1] = '이 조커를',
                    [2] = '{C:attention}마젠타{} {C:attention}스테이크{}',
                    [3] = '난이도에서 사용했습니다'
                }
            }
        },

        -- Consumables

        Tarot = {

            -- Reworked Tarots

            c_bunc_wheel_of_fortune = {
                ['name'] = '운명의 수레바퀴',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{} 의 확률로',
                    [2] = '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    [3] = '{C:dark_edition}폴리크롬{}, or {C:dark_edition}반짝반짝{} 에디션을',
                    [4] = '무작위 {C:attention}Joker{}에 추가합니다'
                }
            },

            -- Main Tarots

            c_bunc_adjustment = {
                ['name'] = '조정',
                ['text'] = {
                    [1] = '최대 {C:attention}#1#{}장의',
                    [2] = '선택된 카드를',
                    [3] = '{C:attention}#2#로 강화'
                },
                ['unlock'] = {
                    [1] = '최소 {C:attention}#1#{} 아이템을',
                    [2] = '컬렉션에서 발견하기'
                }
            },
            c_bunc_art = {
                ['name'] = '예술',
                ['text'] = {
                    [1] = 'Enhances up to {C:attention}#1#{}',
                    [2] = 'selected cards to',
                    [3] = '{C:attention}#2#s'
                },
                ['unlock'] = {
                    [1] = '최소 {C:attention}#1#{} 아이템을',
                    [2] = '컬렉션에서 발견하기'
                }
            },
            c_bunc_universe = {
                ['name'] = '우주',
                ['text'] = {
                    [1] = '수트, 랭크, 강화, 에디션을',
                    [2] = '{C:attention}랜덤하게{} 섞습니다',
                    [3] = 'and seal of up to {C:attention}#1#{}',
                    [4] = 'selected cards'
                },
                ['unlock'] = {
                    [1] = '최소 {C:attention}#1#{} 아이템을',
                    [2] = '컬렉션에서 발견하기'
                }
            },
            c_bunc_lust = {
                ['name'] = '색욕',
                ['text'] = {
                    [1] = '현재 핸드에 있는 모든 카드마다',
                    [2] = '{C:money}$#1#{} 를 지급합니다',
                    [3] = '(최대 {C:money}$#2#{C:inactive})',
                    [4] = '{C:inactive}(현재 {C:money}$#3#{C:inactive})'
                },
                ['unlock'] = {
                    [1] = '최소 {C:attention}#1#{} 아이템을',
                    [2] = '컬렉션에서 발견하기'
                }
            },
            c_bunc_sky = {
                ['name'] = '창공',
                ['text'] = {
                    [1] = '최대 {C:attention}#1#{} 장의',
                    [2] = '선택된 카드를',
                    [3] = '{C:bunc_halberds}꽃무늬{} 카드로 바꿉니다'
                }
            },
            c_bunc_abyss = {
                ['name'] = '심연',
                ['text'] = {
                    [1] = '최대 {C:attention}#1#{} 장의',
                    [2] = '선택된 카드를',
                    [3] = '{C:bunc_halberds}할버드{} 카드로 바꿉니다'
                }
            },
        },
        Planet = {
            c_bunc_quaoar = {
                ['name'] = '콰오아'
            },
            c_bunc_haumea = {
                ['name'] = '하우메아'
            },
            c_bunc_sedna = {
                ['name'] = '세드나'
            },
            c_bunc_makemake = {
                ['name'] = '마케마케'
            },
        },
        Spectral = {

            -- Reworked Spectrals

            c_bunc_aura = {
                ['name'] = '오오라',
                ['text'] = {
                    [1] = '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    [2] = '{C:dark_edition}폴리크롬{}, {C:dark_edition}반짝반짝{} 중 하나를',
                    [3] = '핸드에 있는 {C:attention}1{}개의 선택된 카드에 적용합니다'
                }
            },

            -- Main Spectrals

            c_bunc_cleanse = {
                ['name'] = '정화',
                ['text'] = {
                    [1] = '{C:dark_edition}형광{}을',
                    [2] = '핸드에 있는 선택된 카드{C:attention}#1#{}에 적용합니다'
                }
            },
            c_bunc_the_8 = {
                ['name'] = '여덟',
                ['text'] = {
                    [1] = '핸드에 연결되지 않은 카드들을',
                    [2] = '원하는 만큼 {C:attention}연결합니다{}',
                    [3] = '{C:inactive,s:0.6}(8이 선택될 때 까지 무제한으로 선택 가능)'
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'The I',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '각 카드는 {C:attention}랭크나 수트가 같아야 합니다'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'The O',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '이중 두 장은 {C:attention}같은 속성{}{C:inactive}(랭크나 수트){}을',
                    [3] = '공유해야 하고, 다른 두장은 {C:attention}다른 타입{}의',
                    [4] = '{C:attention}같은 속성{}을 공유합니다'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'The T',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '이중 세 장은 {C:attention}같은 속성{}{C:inactive}(랭크나 수트){}을',
                    [3] = '공유해야 하고, 다른 한 장은',
                    [4] = '다른 카드들과 {C:attention}같은 속성{}을',
                    [5] = '{C:attention}공유하면 안 됩니다{}'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'The S',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '{C:attention}2개 그룹{}의 2장씩의 카드가',
                    [3] = '각 그룹 내에서 {C:attention}같은 랭크{}를 공유하며, 각',
                    [4] = '그룹에서 한 장의 카드가 {C:attention}공통 수트{}를 공유합니다'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'The Z',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '{C:attention}2개 그룹{}의 2장씩 카드가',
                    [3] = '각 그룹 내에서 {C:attention}같은 수트{}를 공유하며, 각',
                    [4] = '그룹에서 한 장의 카드가 {C:attention}공통 랭크{}를 공유합니다'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'The J',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '3장의 카드가 {C:attention}같은 랭크{}를 공유하고',
                    [3] = '나머지 1장의 카드는 이중',
                    [4] = '{C:attention}공통 수트{}를 공유하지만',
                    [5] = '같은 랭크는 공유하지 않습니다'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'The L',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '3장의 카드가 {C:attention}같은 수트{}를 공유하고',
                    [3] = '나머지 1장의 카드는 이중',
                    [4] = '{C:attention}공통 랭크{}를 공유하지만',
                    [5] = '같은 수트는 공유하지 않습니다'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'The /',
                ['text'] = {
                    [1] = '4개의 선택된 카드를 {C:attention}연결합니다{}',
                    [2] = '모든 카드가 {C:attention}서로 다른 속성{}{C:inactive}(랭크와 수트){}을',
                    [3] = '가집니다'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = '루차도르',
                ['text'] = {
                    [1] = '이 카드를 팔아서',
                    [2] = '무료 {C:attention}브레이킹 태그{}를 얻습니다'
                }
            },
            j_bunc_red_card = {
                ['name'] = '레드 카드',
                ['text'] = {
                    [1] = '이 조커는 부스터 팩을 건너뛸 때 마다',
                    [2] = '{C:red}+#1#{} 배수를 얻습니다',
                    [3] = '{C:inactive}(현재 {C:red}+#2#{C:inactive} 배수)'
                }
            },

            -- Main Jokers

            j_bunc_cassette_a = {
                ['name'] = '카세트 (A사이드)',
                ['text'] = {
                    [1] = '{C:attention}라이트 수트{}카드는',
                    [2] = '점수를 얻을 때 {C:chips}+#1#{}칩을 얻습니다'
                }
            },
            j_bunc_cassette_b = {
                ['name'] = '카세트 (B사이드)',
                ['text'] = {
                    [1] = '{C:attention}다크 수트{}카드는',
                    [2] = '점수를 얻을 때 {C:mult}+#2#{}배수를 얻습니다'
                }
            },
            j_bunc_cassette_extra = {
                ['text'] = {
                    [1] = '{C:inactive}카드를 버릴 때, 이 조커를 뒤집습니다'
                }
            },
            j_bunc_mosaic = {
                ['name'] = '모자이크 조커',
                ['text'] = {
                    [1] = '{C:attention}스톤 카드{}를 플레이하면',
                    [2] = '{C:mult}+#1#{} 배수를 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}스톤 카드{}만 있는',
                    [2] = '5개의 카드를 플레이'
                }
            },
            j_bunc_voxel = {
                ['name'] = '복셀 조커',
                ['text'] = {
                    [1] = '{C:attention}전체 덱{}의 {C:attention}강화 카드{} 마다',
                    [2] = '{X:mult,C:white}X#1#{} 배수, {X:mult,C:white}-X#2#{} 배수를 얻습니다',
                    [3] = '{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)'
                },
                ['unlock'] = {
                    [1] = '최소한 {C:attention}#1#',
                    [2] = '{E:1,C:attention}강화 카드{}가 덱에 있을 것'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = '크롭 서클',
                ['text'] = {
                    [1] = '기본 수트의 {C:clubs}클럽{}이 {C:mult}+3{} 배수,',
                    [2] = '{C:attention}8{}이 {C:mult}+2{} 배수,',
                    [3] = '{C:attention}Q{}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{}이 {C:mult}+1{} 배수를 제공합니다'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = '크롭 서클(엑조틱)',
                ['text'] = {
                    [1] = '기본 수트의 {C:bunc_fleurons}꽃무늬{} 카드가 {C:mult}+4{} 배수,',
                    [2] = '기본 수트의 {C:clubs}클럽{} {C:mult}+3{} 배수,',
                    [3] = '{C:attention}8{}이 {C:mult}+2{} 배수,',
                    [4] = '{C:attention}Q{}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{}이 {C:mult}+1{} 배수를 제공합니다'
                }
            },
            j_bunc_xray = {
                ['name'] = 'X-ray',
                ['text'] = {
                    [1] = '이 조커는 카드가 뒷면으로 뽑힐 때 마다',
                    [2] = '{X:mult,C:white}X#1#{} 배수를 얻습니다',
                    [3] = '{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}X-ray 비젼{} 챌린지를',
                    [2] = '완료할 것'
                }
            },
            j_bunc_dread = {
                ['name'] = '공포',
                ['text'] = {
                    [1] = '마지막으로 플레이한 포커 핸드가',
                    [2] = '{C:attention}#1# 레벨{}이 올라가며,',
                    [3] = '득점한 카드들이 {C:attention}파괴됩니다{}',
                    [4] = '{C:inactive,s:0.8}이 조커로 한 레벨은',
                    [5] = '{C:inactive,s:0.8}조커의 파괴시 사라집니다'
                },
                ['unlock'] = {
                    [1] = '한 라운드를 플레이하는 중',
                    [2] = '덱에서 최소 {E:1,C:attention}#1#{}카드를',
                    [3] = '제거합니다'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = '선사시대 조커',
                ['text'] = {
                    [1] = '이 라운드에서 이미 플레이하고 득점한',
                    [2] = '카드들의 {C:attention}랭크와 수트{}가',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}플러쉬 파이브{}를',
                    [2] = '플레이 합니다'
                }
            },
            j_bunc_linocut = {
                ['name'] = '라이노컷 조커',
                ['text'] = {
                    [1] = '딱 {C:attention}2{} 카드로 이루어진 {C:attention}페어의 경우',
                    [2] = "{C:attention}왼쪽{} 카드의 수트를",
                    [4] = "{C:attention}오른쪽{} 카드의 수트로 바꿉니다",
                    [5] = '{C:inactive}(드래그하여 재배열)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = '열화 카피',
                ['text'] = {
                    [1] = '마지막으로 플레이한 {C:attention}핸드 타입{}에 대해',
                    [2] = '추가 칩과 배수를 얻습니다',
                    [3] = '{C:inactive}(마지막 포커 핸드: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = '고리대금업자',
                ['text'] = {
                    [1] = '획득 시 {C:money}$#1#을',
                    [2] = '얻습니다 ...'
                },
                ['unlock'] = {
                    [1] = '한 라운드 동안',
                    [2] = '{E:1,C:attention}$100{} 이상 사용하세요}'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = '고리대금업자',
                ['text'] = {
                    [1] = '획득 시 {C:money}$#1#을 얻습니다',
                    [2] = '판매 가격이{C:money}$-100{} 입니다'
                }
            },
            j_bunc_basement = {
                ['name'] = '지하 조커',
                ['text'] = {
                    [1] = '{C:attention}보스 블라인드{} 처치 시,',
                    [2] = '{C:spectral}유령{} 카드를 생성 합니다',
                    [3] = '{C:inactive}(공간이 있어야 함)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = '양치기 조커',
                ['text'] = {
                    [1] = '{C:attention}페어{}가 포함된 핸드를',
                    [2] = '플레이 할 때 {C:chips}+#1#{} 칩을 얻습니다',
                    [3] = '{C:inactive}(현재 {C:chips}+#2# {C:inactive}칩)'
                }
            },
            j_bunc_knight = {
                ['name'] = '조커 기사',
                ['text'] = {
                    [1] = '{C:attention}블라인드{} 선택 시, 모든 조커를 {C:attention}셔플{}하고',
                    [2] = '이 조커는 {C:mult}+#1#{} 배수를 얻습니다,',
                    [3] = '조커가 {C:red}재배열{}되면 초기화됩니다',
                    [4] = '{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}호박색 도토리{}를 비활성화 하지 않고',
                    [2] = '처치하세요'
                }
            },
            j_bunc_jmjb = {
                ['name'] = '조커맨 & 제스터 보이 트레이딩 카드 No. 54',
                ['text'] = {
                    [1] = '{C:attention}스탠다드 팩{}에서',
                    [2] = '{C:attention}강화 카드{}만 등장합니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}#1#개',
                    [2] = '부스터 팩 열기',
                    [3] = '{C:inactive}(현재 #2#개)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = '포커 게임을 하는 개들',
                ['text'] = {
                    [1] = '득점된 랭크가 모두 {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, 또는 {C:attention}5 일 경우',
                    [2] = '{X:mult,C:white}X#1#{} 배수'
                }
            },
            j_bunc_righthook = {
                ['name'] = '라이트훅 조커',
                ['text'] = {
                    [1] = '득점된 가장 오른쪽 카드를',
                    [2] = '남은 {C:blue}핸드{}만큼 다시 발동',
                },
                ['unlock'] = {
                    [1] = '사용한 카드를',
                    [2] = '총 {E:1,C:attention}#1# 회{}이상',
                    [3] = '다시 발동시킵니다'
                }
            },
            j_bunc_fiendish = {
                ['name'] = '사악한 조커',
                ['text'] = {
                    [1] = '모든 수익을 두 배로 만듭니다,',
                    [2] = '대신 {C:green}#1# / #2#{} 확률로',
                    [3] = '{C:money}$1{}만 지급됩니다'
                },
                ['unlock'] = {
                    [1] = '챌린지 {E:1,C:attention}두배 아니면 꽝',
                    [2] = '을 완료하세요'
                }
            },
            j_bunc_carnival = {
                ['name'] = '카니발',
                ['text'] = {
                    [1] = '{C:attention}보스 블라인드{} 처치 후,',
                    [2] = '무작위 조커를 {C:attention}파괴{}하고',
                    [3] = '이전 앤티로 한 단계 되돌아갑니다',
                    [4] = '다음 사용은 가장 앤티에서만 작동 합니다'
                },
                ['unlock'] = {
                    [1] = '앤티 레벨',
                    [2] = '{E:1,C:attention}0{} 도달하세요'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = '슬레지해머',
                ['text'] = {
                    [1] = '{C:attention}글래스 카드{}는 {X:mult,C:white}X#1#{}배수를 부여하지만,',
                    [2] = '반드시 깨집니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}글래스{} 카드만 포함된',
                    [2] = '5장짜리 핸드로 플레이하세요'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = '도어행거',
                ['text'] = {
                    [1] = '{C:blue}일반{} 조커가 등장하지 않으며',
                    [2] = '{s:0.8}대신 다른 희귀도가 등장합니다'
                },
                ['unlock'] = {
                    [1] = '게임 도중 단 한 번도',
                    [2] = '{C:attention,E:1}일반{} 조커를 사용하지 않고',
                    [3] = '런을 승리하세요'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = '지문',
                ['text'] = {
                    [1] = '{C:attention}승리 핸드{}에서',
                    [2] = '득점된 카드들은',
                    [3] = '다음 라운드 종료 시까지',
                    [4] = '{C:chips}+#1#{} 칩을 얻습니다'
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = '제로 샤피로',
                ['text'] = {
                    [1] = '득점된 {C:attention}킹{}, {C:attention}퀀{}, {C:attention}잭{},',
                    [2] = '혹은 {C:attention}랭크 없는 카드들은',
                    [3] = '{C:green}#1# / #2#{}의 확률로',
                    [4] = '{C:attention}D6 태그{}를 생성합니다',
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = '카드가 파괴될 때',
                    [2] = '{C:money}$#1#{}을',
                    [3] = '획득합니다'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = '비어데켈',
                ['text'] = {
                    [1] = '플레이 혹은 버리기 후에,',
                    [2] = '라운드 종료까지 손에 있는',
                    [3] = '카드들이 {C:chips}+#1#{} 칩을 얻습니다'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = '번호판',
                ['text'] = {
                    [1] = '#1#',
                    [2] = '이번 게임에서 플레이된 모든',
                    [3] = '{C:attention}포커 핸드{}의 칩과 배수를 가집니다',
                    [4] = '{s:0.8}조합은 매 라운드마다 변경됩니다'
                },
                ['unlock'] = {
                    [1] = '챌린지 {E:1,C:attention}15분 도시',
                    [2] = '를 완료하세요'
                }
            },
            j_bunc_slothful = {
                ['name'] = '게으른 조커',
                ['text'] = {
                    [1] = '플레이 된 {C:attention}와일드{} 카드가',
                    [2] = '득점시 {C:mult}+#1#{} 배수를 얻습니다'
                },
                ['unlock'] = {
                    [1] = '5장의 {C:attention,E:1}와일드{} 카드로만',
                    [2] = '이루어진 핸드를 플레이합니다'
                }
            },
            j_bunc_neon = {
                ['name'] = '네온 조커',
                ['text'] = {
                    [1] = '강화된 카드가 득점하면',
                    [2] = '{C:dark_edition}꽃무늬{} 에디션을 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}디버프된{} 5 카드로만',
                    [2] = '이루어진 핸드를 플레이합니다'
                }
            },
            j_bunc_gameplan = {
                ['name'] = '전략가',
                ['text'] = {
                    [1] = '이 {C:attention}조커{}의 옆에 있는 조커들은',
                    [2] = '{C:red}디버프{} 되며,',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}신록색 잎사귀{} 보스 블라인드를',
                    [2] = '비활성화 없이 처치합니다'
                }
            },
            j_bunc_conquest = {
                ['name'] = '정복',
                ['text'] = {
                    [1] = '{C:attention}블라인드{}가 선택되면',
                    [2] = '랜덤한 조커를 {C:red}디버프{}하고',
                    [3] = '{C:chips}+#1#{} 칩을 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}진홍색 하트{} 보스 블라인드를',
                    [2] = '비활성화 없이 처치합니다'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = '욕망의 피라미드',
                ['text'] = {
                    [1] = '전체 덱에 같은 수트의',
                    [2] = '{C:attention}2에서 Ace{} 까지의 세트마다',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다',
                    [4] = '{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = '드워프 조커',
                ['text'] = {
                    [1] = '핸드에 있는 {C:attention}스톤 카드{}가',
                    [2] = '{C:attention}스틸 카드{}와 {C:attention}골드 카드{}의',
                    [3] = '능력을 가집니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}스톤 카드{}, {E:1,C:attention}스틸 카드',
                    [2] = '{E:1,C:attention}골드 카드{}가 있는',
                    [3] = '포커 핸드를 플레이합니다'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = '아리스토크랫',
                ['text'] = {
                    [1] = '{C:attention}부스터 팩{}에서',
                    [2] = '여분의 카드를 더 선택합니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention}부스터 팩{}을 열지 않고',
                    [2] = '런을 승리합니다'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = '연금술사',
                ['text'] = {
                    [1] = '{C:attention}골드 카드{}가 핸드에 있을 때',
                    [2] = '{C:mult}+#1#{} 배수를 가집니다'
                }
            },
            j_bunc_juggalo = {
                ['name'] = '저글로',
                ['text'] = {
                    [1] = '{C:attention}블라인드{}가 선택되면',
                    [2] = '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    [3] = '{C:dark_edition}폴리크롬{}, or {C:dark_edition}반짝반짝{} 에디션을',
                    [4] = '임의의 {C:attention}소모품{}에 적용합니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}에디션{}이 적용된',
                    [2] = '{C:attention,E:1}#1#{} 소모품을 사용합니다',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = '몽상가',
                ['text'] = {
                    [1] = '포커 핸드를 업그레이드 할 때',
                    [2] = '{C:green}#2#분의 #1#{} 확률로',
                    [3] = '{C:attention,E:1}하이 카드{}가 업그레이드 됩니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}하이 카드{}가',
                    [2] = '가장 높은 레벨의 포커 핸드인 상태로',
                    [3] = '런을 승리합니다'
                }
            },
            j_bunc_headshot = {
                ['name'] = '헤드샷',
                ['text'] = {
                    [1] = '플레이한 핸드가 하나의',
                    [2] = '페이스 카드만을 가지고 있으면',
                    [3] = '{X:mult,C:white}X#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = '약지',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult,',
                    [2] = '{C:attention}selecting{} a card has',
                    [3] = 'a {C:green}#2# in #3#{} chance to',
                    [4] = 'play selected cards'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}하늘색 종{} 보스 블라인드를',
                    [2] = '비활성화 하지 않고 처치합니다'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = '홉스쿼치',
                ['text'] = {
                    [1] = '플레이한 핸드에',
                    [2] = '{C:attention}스트레이트{}가 있으면',
                    [3] = '{C:red}+#1#{} 버리기를 얻습니다'
                }
            },
            j_bunc_pawn = {
                ['name'] = '폰',
                ['text'] = {
                    [1] = '현재 전체 덱에서 가장 낮은',
                    [2] = '랭크의 카드가 득점 시',
                    [3] = '{C:attention}랭크가 상승{}합니다',
                    [4] = '{C:inactive}(현재 가장 낮은 랭크: #1#)'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = '퍼즐 보드',
                ['text'] = {
                    [1] = '{C:tarot}타로{}카드가 사용되면',
                    [2] = '{C:green}#2#분의 #1#{}확률로',
                    [3] = '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    [4] = '{C:dark_edition}폴리크롬{}, 혹은 {C:dark_edition}반짝반짝{} 에디션을',
                    [5] = '랜덤하게 선택된 카드에 적용합니다'
                }
            },
            j_bunc_vandalism = {
                ['name'] = '반달리즘',
                ['text'] = {
                    [1] = '뒤집혀서 뽑힌 페이스 카드가',
                    [2] = '득점시 {C:green}#2#분의 #1#{}확률로',
                    [3] = '{X:mult,C:white}X#3#{} 배수를 줍니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}뒤집힌{} 카드만 있는',
                    [2] = '포커 핸드를 득점합니다'
                }
            },
            j_bunc_protester = {
                ['name'] = '시위자',
                ['text'] = {
                    [1] = '이 조커는 이번 라운드에서 버려진',
                    [2] = '카드 중 가장 높은 랭크를',
                    [3] = '{C:attention}#1#X{}칩으로 추가합니다',
                    [4] = '{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)'
                }
            },
            j_bunc_doodle = {
                ['name'] = '낙서',
                ['text'] = {
                    [1] = '이번 라운드에서 처음 사용한',
                    [2] = '{C:tarot}타로{}나 {C:planet}행성{} 카드가 복사됩니다',
                    [3] = '{C:inactive}(공간이 있어야 합니다)'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}#1#{}번의 런을 승리하세요',
                    [2] = '{C:inactive}(현재 #2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Disproportionality',
                ['text'] = {
                    [1] = '' -- TODO: TO BE TRANSLATED WHEN IT'S DONE
                }
            },
            j_bunc_running_joke = {
                ['name'] = '달리는 조커',
                ['text'] = {
                    [1] = '상점이 열릴 때 마다',
                    [2] = '{C:dark_edition}네거티브{} {C:attention}조커{}가',
                    [3] = '있습니다'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = '브로드웨이',
                ['text'] = {
                    [1] = '플레이한 핸드에 페이스 카드가 포함된',
                    [2] = '스트레이트가 있으면',
                    [3] = '{C:chips}+#1#{} 칩과{C:mult}+#2#{} 배수를 얻습니다'
                }
            },
            j_bunc_rasta = {
                ['name'] = '라스타',
                ['text'] = {
                    [1] = '플레이한 핸드의 점수 획득에',
                    [2] = '{C:attention}강화된 카드{}가 없으면',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}강화된 카드{}를',
                    [2] = '보유하지 않은 상태로',
                    [3] = '런을 승리합니다'
                }
            },
            j_bunc_critic = {
                ['name'] = '비평가',
                ['text'] = {
                    [1] = '플레이한 핸드의 점수가',
                    [2] = '블라인드의 요구 점수의',
                    [3] = '{C:attention}#2#분의 1{}보다 작다면',
                    [4] = '{X:mult,C:white}X#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_cellphone = {
                ['name'] = '휴대폰',
                ['text'] = {
                    [1] = '라운드의 처음 핸드 플레이에서',
                    [2] = '카드를 버리지 않으면',
                    [3] = '플레이한 카드가 핸드로{C:attention}돌아옵니다{}'
                }
            },
            j_bunc_wino = {
                ['name'] = '홈리스',
                ['text'] = {
                    [1] = '{C:hearts}하트{}와 {C:diamonds}다이아몬드{} 수트',
                    [2] = '로 플레이한 카드는',
                    [3] = '득점시 {C:chips}+#1#{} 칩을 얻습니다'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = '현상금 사냥꾼',
                ['text'] = {
                    [1] = '모든 $의 획득 시 마다',
                    [2] = '{C:money}1${}로 바뀌고 이 조커는',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다',
                    [4] = '{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)'
                },
                ['unlock'] = {
                    [1] = '런에서 {E:1,C:attention}$#1#{}보다',
                    [2] = '적은 돈을 가집니다'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = '쥐덫',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} 칩을 획득하고,',
                    [2] = '{C:green}#3#분의 #2#{} 확률로',
                    [3] = '핸드 하나를 {C:attention}잃습니다{}'
                }
            },
            j_bunc_the_joker = {
                ['name'] = '더 조커',
                ['text'] = {
                    [1] = '핸드를 플레이 하면,',
                    [2] = '플레이한 핸드에서 강화가 없는 카드가',
                    [3] = '{C:green}#2#분의 #1#{}확률로 파괴됩니다',
                },
                ['unlock'] = {
                    [1] = '모든 {C:attention}보스 블라인드{}',
                    [2] = '를 발견합니다'
                }
            },
            j_bunc_tangram = {
                ['name'] = '탱그램',
                ['text'] = {
                    [1] = '{C:attention}7{} 카드가 점수를 획득하면',
                    [2] = '7카드의 갯수만큼',
                    [3] = '{C:mult}+#1#{} 배수를 획득합니다'
                }
            },
            j_bunc_domino = {
                ['name'] = '도미노',
                ['text'] = {
                    [1] = '상점이나 부스터 팩에서',
                    [2] = '카드를 얻으면',
                    [3] = '가능한 경우 {C:attention}2{}개의',
                    [4] = '인접한 카드도 같이 얻습니다'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = '글루 건',
                ['text'] = {
                    [1] = '이 조커를 팔아서',
                    [2] = '최대 #1 장의 카드들을',
                    [3] = '{C:attention}연결된 그룹{}을 만듭니다'
                }
            },
            j_bunc_taped = {
                ['name'] = '테이핑된 조커',
                ['text'] = {
                    [1] = '{C:attention}보스 블라인드{}에서',
                    [2] = '처음으로 득점한 카드들로',
                    [3] = '{C:attention}연결된 그룹{}을 만듭니다'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = '고무줄공',
                ['text'] = {
                    [1] = '이 런에서의 {C:attention}연결된 그룹{}마다',
                    [2] = '{X:mult,C:white}X#1#{} 배수를 얻습니다',
                    [3] = '{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)'
                }
            },
            j_bunc_headache = {
                ['name'] = '두통',
                ['text'] = {
                    [1] = '각각의 {C:attention}#1#{} 카드가',
                    [2] = '파괴 될 때 마다',
                    [3] = '{C:bunco_virtual_dark}아케이드 태그{}를 만듭니다',
                    [4] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# 카드 파괴됨)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = '게임 수집가',
                ['text'] = {
                    [1] = '이 조커는 연결된 그룹이',
                    [2] = '패로 뽑힐 때 마다',
                    [3] = '{C:chips}+#1#{} 추가 칩을 가집니다',
                    [4] = '{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)'
                }
            },
            j_bunc_jumper = {
                ['name'] = '점퍼',
                ['text'] = {
                    [1] = '이 조커는 플레이한 핸드에',
                    [2] = '{C:attention}플러시{}가 포함되면',
                    [3] = '{C:chips}+#1#{}칩을 얻습니다',
                    [4] = '{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = '스타일로폰',
                ['text'] = {
                    [1] = '카드의 점수를 계산할 때',
                    [2] = '+({C:attention}랭크{} x {C:attention}X#1#{}배수)로 계산합니다'
                }
            },
            j_bunc_kite_experiment = {
                ['name'] = '연날리기 실험',
                ['text'] = {
                    [1] = '{C:green}#2# 분의 #1#{} 확률로',
                    [2] = '점수를 재획득한 {C:attention}쿠퍼 카드{}가',
                    [3] = '한번 더 점수를 재획득합니다'
                }
            },
            j_bunc_robot = {
                ['name'] = '로봇',
                ['text'] = {
                    [1] = '이 조커는 {C:attention}쿠퍼 카드{}가',
                    [2] = '점수를 재획득 할 때 마다',
                    [3] = '{C:mult}+#1#{} 배수를 획득합니다',
                    [4] = '{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)'
                }
            },
            j_bunc_hardtack = {
                ['name'] = '건빵',
                ['text'] = {
                    [1] = '{C:attention}크래커 카드{}가',
                    [2] = '버릴 때 더이상',
                    [3] = '파괴되지 않습니다'
                }
            },
            j_bunc_pica = {
                ['name'] = '피카 조커',
                ['text'] = {
                    [1] = '{C:attention}크래커 카드{}를 버리면',
                    [2] = '모든 버린 카드를',
                    [3] = '핸드로 플레이합니다'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = '질투하는 조커',
                ['text'] = {
                    [1] = '플레이한 핸드에',
                    [2] = '{C:attention}스펙트럼{}이 포함되면',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_lurid = {
                ['name'] = '기분나쁜 조커',
                ['text'] = {
                    [1] = '플레이한 핸드에',
                    [2] = '{C:attention}스펙트럼{}이 포함되면',
                    [3] = '{C:chips}+#1#{} 칩을 얻습니다'
                }
            },
            j_bunc_envious = {
                ['name'] = '부러워하는 조커',
                ['text'] = {
                    [1] = '{C:bunc_fleurons}꽃무늬{} 수트로',
                    [2] = '플레이한 카드가 득점시',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_proud = {
                ['name'] = '자랑하는 조커',
                ['text'] = {
                    [1] = '{C:bunc_halberds}할버드{} 수트로',
                    [2] = '플레이한 카드가 득점시',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = '소원의 돌',
                ['text'] = {
                    [1] = '플레이한 {C:bunc_fleurons}꽃무늬{} 수트의 카드가',
                    [2] = '{C:green}#2#분의 #1#{} 확률로',
                    [3] = '카드가 득점한 칩 만큼 {C:money}${} 를 얻습니다'
                }
            },
            j_bunc_unobtanium = {
                ['name'] = '언옵타니윰',
                ['text'] = {
                    [1] = '{C:bunc_halberds}할버드{} 수트로',
                    [2] = '플레이한 카드는 득점시',
                    [3] = '{C:chips}+#1#{}개 칩과 {C:mult}+#2#{} 배수를 얻습니다'
                }
            },
            j_bunc_dynasty = {
                ['name'] = '왕조',
                ['text'] = {
                    [1] = '플레이한 핸드에 {C:attention}스펙트럼{}이',
                    [2] = '포함되어 있다면',
                    [3] = '{X:mult,C:white}X#1#{} 배수를 얻습니다'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = '마술봉',
                ['text'] = {
                    [1] = '이 조커는 {C:attention}연속으로{} 플레이한 핸드에',
                    [2] = '{C:attention}스펙트럼{}이 포함되어 있다면',
                    [3] = '{C:mult}+#1#{} 배수를 얻습니다',
                    [4] = '{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = '카람볼라',
                ['text'] = {
                    [1] = '플레이한 포커 핸드에',
                    [2] = '{C:attention}스펙트럼{}이 있다면',
                    [3] = '{C:green}#2#분의 #1#{} 확률로 해당 카드가',
                    [4] = '라운드의 끝에서 파괴됩니다'
                }
            },
            j_bunc_fondue = {
                ['name'] = '퐁듀',
                ['text'] = {
                    [1] = '라운드의 {C:attention}첫 핸드{}에서',
                    [2] = '득점한 카드들은',
                    [3] = '{C:bunc_fleurons}꽃무늬{} 수트의 카드로 바뀝니다'
                }
            },
            j_bunc_myopia = {
                ['name'] = '근시',
                ['text'] = {
                    [1] = '{C:spades}스페이드{}와 {C:clubs}클럽{}이',
                    [2] = '{C:bunc_halberds}할버드{}',
                    [3] = '수트의 카드 로 계산됩니다'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = '난시',
                ['text'] = {
                    [1] = '{C:hearts}하트{} 와 {C:diamonds}다이아몬드{} 가',
                    [2] = '{C:bunc_fleurons}꽃무늬{}로 계산됩니다'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = '무지개',
                ['text'] = {
                    [1] = '핸드에 {C:attention}스펙트럼{}이 있다면',
                    [2] = '{C:dark_edition}폴리크롬{} 에디션이',
                    [3] = '{C:green}#2#분의 #1#{} 확률로',
                    [4] = '모든 득점한 카드에 추가됩니다'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = '리골레토',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} 배수가',
                    [2] = '{C:attention}전체 덱{}의 {C:bunco_exotic}엑조틱 카드{}',
                    [3] = '갯수만큼 추가됩니다',
                    [4] = '{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = '말뚝',
                ['text'] = {
                    [1] = '카드를 버릴 때 마다',
                    [2] = '$1를 잃습니다'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = '우산',
                ['text'] = {
                    [1] = '핸드를 플레이 하고 나면',
                    [2] = '핸드의 모든 카드가 뒤집힙니다'
                }
            },
            bl_bunc_tine = {
                ['name'] = '갈퀴',
                ['text'] = {
                    [1] = '각 #1#이 디버프됩니다'
                }
            },
            bl_bunc_swing = {
                ['name'] = '스윙',
                ['text'] = {
                    [1] = '카드를 플레이하거나 버리면',
                    [2] = '모든 카드를 뒤집습니다'
                }
            },
            bl_bunc_miser = {
                ['name'] = '구두쇠',
                ['text'] = {
                    [1] = '이 블라인드를 승리하고 나면',
                    [2] = '상점이 열리지 않습니다'
                }
            },
            bl_bunc_gate = {
                ['name'] = '성문',
                ['text'] = {
                    [1] = '카드가',
                    [2] = '선택 해제 될 수 없습니다'
                }
            },
            bl_bunc_flame = {
                ['name'] = '화염',
                ['text'] = {
                    [1] = '모든 강화된 카드는',
                    [2] = '디버프됩니다'
                }
            },
            bl_bunc_mask = {
                ['name'] = '가면',
                ['text'] = {
                    [1] = '#1# 은 기본적으로',
                    [2] = '#2#칩과 배수를 가집니다'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = '성채',
                ['text'] = {
                    [1] = '#1#을 플레이하면',
                    [2] = '핸드의 모든 카드를 버립니다'
                }
            },
            bl_bunc_knoll = {
                ['name'] = '둔덕',
                ['text'] = {
                    [1] = '$5 보다 더 많은 돈을 보유하면',
                    [2] = '첫 번째의 핸드 플레이가 디버프됩니다'
                }
            },
            bl_bunc_stone = {
                ['name'] = '암석',
                ['text'] = {
                    [1] = '10$ 보유마다',
                    [2] = '요구 점수가 +1X 증가합니다'
                }
            },
            bl_bunc_sand = {
                ['name'] = '모래',
                ['text'] = {
                    [1] = '모든 태그 갯수마다',
                    [2] = '요구 점수가 +1X 증가합니다'
                }
            },
            bl_bunc_blade = {
                ['name'] = '칼날',
                ['text'] = {
                    [1] = '처음으로 #1#점을 초과한 경우',
                    [2] = '플레이한 핸드의 점수가 0이 됩니다'
                }
            },
            bl_bunc_claw = {
                ['name'] = '발톱',
                ['text'] = {
                    [1] = '버린 카드들이',
                    [2] = '덱으로 다시 들어갑니다'
                }
            },
            bl_bunc_veil = {
                ['name'] = '베일',
                ['text'] = {
                    [1] = '선택한 카드가',
                    [2] = '뒤집혀서 드러납니다'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = '사체',
                ['text'] = {
                    [1] = '핸드에 반드시',
                    [2] = '페이스 카드가 있어야 합니다'
                }
            },
            bl_bunc_wind = {
                ['name'] = '바람',
                ['text'] = {
                    [1] = '맨 왼쪽에 위치한 조커가',
                    [2] = '디버프됩니다'
                }
            },
            bl_bunc_prince = {
                ['name'] = '왕자',
                ['text'] = {
                    [1] = '첫 번째 핸드가 플레이 될 때 까지',
                    [2] = '모든 조커가 디버프됩니다'
                }
            },
            bl_bunc_depths = {
                ['name'] = '해저',
                ['text'] = {
                    [1] = '플레이 이후',
                    [2] = '이터널, 부패, 산산조각 태그를 얻습니다'
                }
            },
            bl_bunc_chasm = {
                ['name'] = '균열',
                ['text'] = {
                    [1] = '플레이 이후',
                    [2] = '리액티브, 대여, 방해 태그를 얻습니다'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = '샤르트뢰즈 크라운',
                ['text'] = {
                    [1] = '모든 스페이드, 클럽, 다이아몬드, 하트',
                    [2] = '기본 수트 카드들은 디버프됩니다'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = '주홍색 삼지창',
                ['text'] = {
                    [1] = '이번 엔티의 모든 구매마다',
                    [2] = '+1X 요구 점수를 추가합니다'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = '쪽빛 탑',
                ['text'] = {
                    [1] = '이번 앤티에 플레이 되지 않은',
                    [2] = '카드는 디버프됩니다'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = '자홍색 단검',
                ['text'] = {
                    [1] = '카드를 버리는 경우도 플레이됩니다',
                    [2] = '그리고 이 때의 점수를 감점합니다'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = '터키석 방패',
                ['text'] = {
                    [1] = '이번 앤티에서의 초과 점수는',
                    [2] = '이 블라인드의 요구 점수에 합산됩니다'
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = '요정 덱',
                ['text'] = {
                    [1] = '{C:attention}보스 블라인드{} 이후에 #1#',
                    [2] = '랜덤한 {C:bunco_exotic,T:bunc_exotic_cards}#2#',
                    [3] = '을 덱에 추가합니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}5개의 다른 수트{} 를',
                    [2] = '한번의 핸드로 플레이한 경우'
                }
            },
            b_bunc_digital = {
                ['name'] = '디지털 덱',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}폴리미노{} 카드가',
                    [2] = '상점에 나타날 수 있으며',
                    [3] = "{C:bunco_virtual_dark,T:c_bunc_the_i}The I{} 부터 시작합니다"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = '보스 태그',
                ['text'] = {
                    [1] = '무료 {C:attention}블라인드 팩{}을 제공합니다'
                }
            },
            tag_bunc_double = {
                ['name'] = '더블 태그',
                ['text'] = {
                    [1] = '다음에 선택된 {C:attention}태그{}의',
                    [2] = '복사본을 얻습니다',
                    [3] = '{s:0.6,C:attention}더블, 트리플 태그{s:0.8} 는 제외됩니다'
                }
            },
            tag_bunc_d_six = {
                ['name'] = 'D6 태그',
                ['text'] = {
                    [1] = '다음 상점에',
                    [2] = '무료 {C:green}리롤{}을 제공합니다'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = '브레이킹 태그',
                ['text'] = {
                    [1] = '{C:attention}보스 블라인드{}를',
                    [2] = '비활성화 합니다'
                }
            },
            tag_bunc_arcade = {
                ['name'] = '아케이드 태그',
                ['text'] = {
                    [1] = '무료 {C:bunco_virtual_dark}메가 버츄얼 팩{}을 제공합니다'
                }
            },
            tag_bunc_triple = {
                ['name'] = '트리플 태그',
                ['text'] = {
                    [1] = '다음에 선택된 {C:attention}태그{}',
                    [2] = '의 복사본 두 개를 제공합니다',
                    [3] = '{s:0.8,C:attention}트리플 태그{s:0.8}는 제외됩니다'
                }
            },
            tag_bunc_shopping = {
                ['name'] = '쇼핑 태그',
                ['text'] = {
                    [1] = '{C:attention}1{} 개의 무료',
                    [2] = '{C:green}상점{}리롤을 제공합니다'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = '반짝반짝 태그',
                ['text'] = {
                    [1] = '다음 기본 에디션 상점',
                    [2] = '조커가 무료이며',
                    [3] = '{C:dark_edition}반짝반짝{}이 됩니다'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = '형광 태그',
                ['text'] = {
                    [1] = '다음 기본 에디션 상점의 조커가 무료이고',
                    [2] = '{C:dark_edition}형광{} 이 됩니다'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = '칩 태그',
                ['text'] = {
                    [1] = '다음 핸드에서 칩 {C:chips}+#1#{}개'
                }
            },
            tag_bunc_mult = {
                ['name'] = '배수 태그',
                ['text'] = {
                    [1] = '다음 핸드에서 {C:mult}+#1#{}배수',
                }
            },
            tag_bunc_xmult = {
                ['name'] = '메가배수 태그',
                ['text'] = {
                    [1] = '다음 핸드에서 {X:mult,C:white}X#1#{}배수',
                }
            },
            tag_bunc_xchips = {
                ['name'] = '울트라칩 태그',
                ['text'] = {
                    [1] = '다음 핸드에서 칩 {X:chips,C:white}X#1#{}개'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = '금세공 태그',
                ['text'] = {
                    [1] = '다음 {C:attention} 표준 카드 팩{} 이 열리면',
                    [2] = '카드 팩에 {C:bunco_exotic} 엑조틱 카드만 들어 있습니다'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = '이터널 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}이터널{} 스티커를 가집니다'
                }
            },
            tag_bunc_perishable = {
                ['name'] = '부패 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}부패{} 스티커를 가집니다'
                }
            },
            tag_bunc_scattering = {
                ['name'] = '산산조각 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}산산조각{} 스티커를 가집니다'
                }
            },
            tag_bunc_hindered = {
                ['name'] = '방해 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}방해{} 스티커를 가집니다'
                }
            },
            tag_bunc_reactive = {
                ['name'] = '리액티브 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}리액티브{} 스티커를 가집니다'
                }
            },
            tag_bunc_rental = {
                ['name'] = '대여 태그',
                ['text'] = {
                    [1] = '다음에 구매하는 조커가',
                    [2] = '{C:attention}대여{} 스티커를 가집니다'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = '반짝반짝',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} 개의 칩'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = '형광',
                ['text'] = {
                    [1] = '뒤집히거나 디버프당하거나',
                    [2] = '강제로 선택될 수 없습니다'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = '라미네이션',
                ['text'] = {
                    [1] = '{C:attention}부스터 팩의 소모품들이{}',
                    [2] = '{C:dark_edition}에디션으로 나타날 수 있습니다',
                    [3] = ''
                }
            },
            v_bunc_supercoating = {
                ['name'] = '슈퍼코팅',
                ['text'] = {
                    [1] = '{C:attention}부스터 팩의 모든 소모품들이{}',
                    [2] = '{C:dark_edition}에디션으로 나타납니다',
                    [3] = ''
                },
                ['unlock'] = {
                    [1] = '{C:attention,E:1}#1#{}개의 소비 아이템 사용',
                    [2] = '{C:attention,E:1}에디션과 함께',
                    [3] = '{C:inactive}(현재 #2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = '점수 절단기',
                ['text'] = {
                    [1] = '매번 핸드를 플레이 할 때 마다',
                    [2] = '블라인드의 점수를 {C:attention}#1#%{} 씩 감소시킵니다'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = '전기톱',
                ['text'] = {
                    [1] = '모든 블라인드 필요 점수가',
                    [2] = '{C:attention}#1#%{} 만큼 감소합니다'
                },
                ['unlock'] = {
                    [1] = "블라인드의 점수를 점수 절단기로 감소",
                    [2] = '총 {C:attention,E:1}#1#{} 회 달성',
                    [3] = '{C:inactive}(현재 #2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = '컵과 공',
                ['text'] = {
                    [1] = '상점에 {C:attention}+1{}개의',
                    [2] = '부스터 팩 슬롯이 추가됩니다'
                }
            },
            v_bunc_shell_game = {
                ['name'] = '야바위',
                ['text'] = {
                    [1] = '부스터 팩의 {C:attention}카드들{}을 ',
                    [2] = '리롤 합니다',
                    [3] = '팩당 {C:attention}1{}회만 가능합니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}#1#개{}의',
                    [2] = '부스터 팩을 오픈합니다',
                    [3] = '{C:inactive}(현재 #2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = '위장',
                ['text'] = {
                    [1] = '{C:attention}블라인드 팩{}이',
                    [2] = '상점에 나타납니다'
                }
            },
            v_bunc_masquerade = {
                ['name'] = '가면무도회',
                ['text'] = {
                    [1] = '모든 상점의 {C:attention}블라인드 팩{} 이',
                    [2] = '무료가 됩니다'
                },
                ['unlock'] = {
                    [1] = '{E:1,C:attention}#1#{}개의 ',
                    [2] = '블라인드를 블라인드 팩의 블라인드로',
                    [3] = '교체하기',
                    [4] = '{C:inactive}(현재 #2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = '힙색',
                ['text'] = {
                    [1] = '{C:green}#2#분의 #1#{}의 확률로',
                    [2] = '매 블라인드가 {C:attention}스킵{}될 때 마다',
                    [3] = '{C:attention}더블 태그{} 를 얻습니다'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = '핀 수집가',
                ['text'] = {
                    [1] = '모든 새로운 {C:attention}더블 태그{} 가',
                    [2] = '{C:attention}트리플 태그{}로 나타납니다'
                },
                ['unlock'] = {
                    [1] = '총 {E:1,C:attention}#1#{} 번의 블라인드를',
                    [2] = '스킵합니다',
                    [3] = '{C:inactive}(현재 #2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = '오락기',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}버츄얼 팩{} 이',
                    [2] = '{C:attention}4배{} 더 자주 나타납니다'
                }
            },
            v_bunc_polybius = {
                ['name'] = '폴리비우스',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}폴리미노{} 카드가',
                    [2] = '추가로 {C:attention}한 장{}의 카드를 더 가질 수 있습니다',
                    [3] = '{s:0.6,C:inactive}추가되는 카드는 어떠한 카드도 될 수 있습니다'
                },
                ['unlock'] = {
                    [1] = '총 {E:1,C:attention}#1#{} 개의',
                    [2] = '연결된 그룹을 만듭니다',
                    [3] = '{C:inactive}(현재 #2#)'
                }
            }
        },
        Enhanced = {
            m_bunc_copper = {
                ['name'] = '쿠퍼 카드',
                ['text'] = {
                    [1] = '{C:attention}인접한{} 다른 쿠퍼',
                    [2] = '카드가 득점 하면',
                    [3] = '다시 득점합니다'
                },
            },
            m_bunc_cracker = {
                ['name'] = '크래커 카드',
                ['text'] = {
                    [1] = '{C:attention}버리기{} 시 카드가',
                    [2] = '플레이되고 그 후 파괴됩니다',
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = '시안 스테이크',
                ['text'] = {
                    [1] = '상점에 {C:attention}산산조각{} 조커가 있습니다',
                    [2] = '{C:inactive,s:0.8}(제거될 때 무작위 인접 조커를 파괴합니다)',
                    [3] = '{s:0.8}이전 스테이크를 모두 적용합니다'
                }
            },
            stake_bunc_pink = {
                ['name'] = '핑크 스테이크',
                ['text'] = {
                    [1] = '상점에 {C:attention}방해{} 조커가 있습니다',
                    [2] = '{C:inactive,s:0.8}(판매된 후 라운드 종료 시까지 제자리에 남아있습니다)',
                    [3] = '{s:0.8}이전 스테이크를 모두 적용합니다'
                }
            },
            stake_bunc_magenta = {
                ['name'] = '마젠다 스테이크',
                ['text'] = {
                    [1] = '상점에 {C:attention}리액티브{} 조커가 있습니다',
                    [2] = '{C:inactive,s:0.8}(이번 앤트에서 블라인드를 하나도 건너뛰지 않으면 디버프됩니다)',
                    [3] = '{s:0.8}이전 스테이크를 모두 적용합니다'
                }
            }
        }
    }
}