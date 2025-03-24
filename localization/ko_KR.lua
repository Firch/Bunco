-- Korean Translated By: JayJayDee, namssy
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
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Linked{} in drawn group'}},
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
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 2 cards share the {C:attention}same property',
                    [3] = '{C:inactive}(rank or suit){} and the other 2 cards',
                    [4] = 'share {C:attention}different type{} of the {C:attention}same property'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'The T',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same property',
                    [3] = '{C:inactive}(rank or suit){} and the other card that',
                    [4] = '{C:attention}does not share{} the {C:attention}same property{}',
                    [5] = 'with the other cards'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'The S',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where {C:attention}2 groups{} of 2 cards share',
                    [3] = 'the {C:attention}same rank{} within each group, with one',
                    [4] = 'card from each group sharing a {C:attention}common suit'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'The Z',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where {C:attention}2 groups{} of 2 cards share',
                    [3] = 'the {C:attention}same suit{} within each group, with one',
                    [4] = 'card from each group sharing a {C:attention}common rank'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'The J',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same rank',
                    [3] = 'and the other card that shares',
                    [4] = 'a {C:attention}common suit{} while',
                    [5] = 'not sharing the same rank'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'The L',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where 3 cards share the {C:attention}same suit',
                    [3] = 'and the other card that shares',
                    [4] = 'a {C:attention}common rank{} while',
                    [5] = 'not sharing the same suit'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'The /',
                ['text'] = {
                    [1] = '{C:attention}Link together{} 4 selected cards',
                    [2] = 'where all the cards have a',
                    [3] = '{C:attention}different property{} {C:inactive}(rank and suit)'
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
                    [1] = '이 조커는 카드가 뒷면으로 뽑힐 때 마다'
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
            j_bunc_loan_shark_full = {
                ['name'] = 'Loan Shark',
                ['text'] = {
                    [1] = 'Gain {C:money}$#1#{} when acquired,',
                    [2] = 'set sell price to {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Basement Joker',
                ['text'] = {
                    [1] = 'When {C:attention}Boss Blind{} is defeated,',
                    [2] = 'create a {C:spectral}Spectral{} card',
                    [3] = '{C:inactive}(Must have room)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Shepherd Joker',
                ['text'] = {
                    [1] = 'Gains {C:chips}+#1#{} Chips',
                    [2] = 'when played hand',
                    [3] = 'contains a {C:attention}Pair',
                    [4] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },
            j_bunc_knight = {
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
            j_bunc_jmjb = {
                ['name'] = 'Joker Man & Jester Boy Trading Card No. 54',
                ['text'] = {
                    [1] = '{C:attention}Standard Packs{} contain',
                    [2] = 'only {C:attention}Enhanced cards{}'
                },
                ['unlock'] = {
                    [1] = 'Open {E:1,C:attention}#1#',
                    [2] = 'Booster Packs',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Dogs Playing Poker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult if every scored',
                    [2] = 'rank is {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Righthook Joker',
                ['text'] = {
                    [1] = 'Retrigger rightmost scored card',
                    [2] = 'one time per remaining {C:blue}hand{}',
                },
                ['unlock'] = {
                    [1] = 'Retrigger played',
                    [2] = 'card at least',
                    [3] = '{E:1,C:attention}#1# times{}'
                }
            },
            j_bunc_fiendish = {
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
            j_bunc_carnival = {
                ['name'] = 'Carnival',
                ['text'] = {
                    [1] = 'After defeating {C:attention}Boss Blind{},',
                    [2] = '{C:attention}destroy{} a random Joker to',
                    [3] = 'go one Ante back, next time',
                    [4] = 'works only on a greater Ante'
                },
                ['unlock'] = {
                    [1] = 'Reach Ante',
                    [2] = 'level {E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
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
            j_bunc_doorhanger = {
                ['name'] = 'Doorhanger',
                ['text'] = {
                    [1] = '{C:blue}Common{} Jokers do not appear',
                    [2] = '{s:0.8}Different rarities appear instead'
                },
                ['unlock'] = {
                    [1] = 'Win a run without',
                    [2] = 'ever having',
                    [3] = '{C:attention,E:1}Common{} Jokers'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Fingerprints',
                ['text'] = {
                    [1] = 'Scored cards',
                    [2] = 'in {C:attention}winning hand{}',
                    [3] = 'gain {C:chips}+#1#{} Chips until',
                    [4] = 'end of the next round',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zero Shapiro',
                ['text'] = {
                    [1] = 'Scored {C:attention}Ks{}, {C:attention}Qs{}, {C:attention}Js{},',
                    [2] = 'or {C:attention}Rankless cards',
                    [3] = 'have {C:green}#1# in #2#{} chance to',
                    [4] = 'create a {C:attention}D6 Tag',
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Nil Bill',
                ['text'] = {
                    [1] = 'Earn {C:money}$#1#{}',
                    [2] = 'when a playing card',
                    [3] = 'is destroyed'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Bierdeckel',
                ['text'] = {
                    [1] = 'After play or discard,',
                    [2] = 'cards held in hand gain',
                    [3] = '{C:chips}+#1#{} Chips until end of round'
                }
            },
            j_bunc_registration_plate = {
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
            j_bunc_slothful = {
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
            j_bunc_neon = {
                ['name'] = 'Neon Joker',
                ['text'] = {
                    [1] = 'Playing cards gain',
                    [2] = '{C:dark_edition}Fluorescent{} edition',
                    [3] = 'when {C:attention}enhanced'
                },
                ['unlock'] = {
                    [1] = 'Play a 5 card hand',
                    [2] = 'that contains only',
                    [3] = '{C:attention,E:1}Debuffed{} cards'
                }
            },
            j_bunc_gameplan = {
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
            j_bunc_conquest = {
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
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Hierarchy of Needs',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Mult per {C:attention}2 to Ace',
                    [2] = 'sequence of the same suit',
                    [3] = 'in your {C:attention}full deck',
                    [4] = '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
                }
            },
            j_bunc_dwarven = {
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
            j_bunc_aristocrat = {
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
            j_bunc_metallurgist = {
                ['name'] = 'Metallurgist',
                ['text'] = {
                    [1] = '{C:attention}Gold Cards{} give {C:mult}+#1#{} Mult',
                    [2] = 'while held in hand'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Juggalo',
                ['text'] = {
                    [1] = 'Adds {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    [2] = '{C:dark_edition}Polychrome{}, or {C:dark_edition}Glitter{} edition',
                    [3] = 'to a random {C:attention}consumable{}',
                    [4] = 'when {C:attention}Blind{} is selected'
                },
                ['unlock'] = {
                    [1] = 'Use {C:attention,E:1}#1#{} consumables',
                    [2] = 'with {C:attention,E:1}Editions',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_head_in_the_clouds = {
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
            j_bunc_headshot = {
                ['name'] = 'Headshot',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Mult if played hand',
                    [2] = 'contains only a single',
                    [3] = 'scoring {C:attention}face card{}'
                }
            },
            j_bunc_trigger_finger = {
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
            j_bunc_hopscotch = {
                ['name'] = 'Hopscotch',
                ['text'] = {
                    [1] = 'Gain {C:red}+#1#{} discard',
                    [2] = 'if played hand',
                    [3] = 'contains a {C:attention}Straight{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Pawn',
                ['text'] = {
                    [1] = 'Cards of the {C:attention}lowest{}',
                    [2] = 'rank in your full deck',
                    [3] = '{C:attention}increase in rank{} when scored',
                    [4] = '{C:inactive}(Current lowest rank: #1#)'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Puzzle Board',
                ['text'] = {
                    [1] = 'When {C:tarot}Tarot{} card is used,',
                    [2] = '{C:green}#1# in #2#{} chance to add',
                    [3] = '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    [4] = '{C:dark_edition}Polychrome{}, or {C:dark_edition}Glitter{} edition',
                    [5] = 'to a random selected playing card'
                }
            },
            j_bunc_vandalism = {
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
            j_bunc_protester = {
                ['name'] = 'Protester',
                ['text'] = {
                    [1] = 'Adds {C:attention}#1#X{} the highest rank',
                    [2] = 'discarded this round to Chips',
                    [3] = '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Doodle',
                ['text'] = {
                    [1] = '{C:attention}Copy{} first {C:tarot}Tarot{} or {C:planet}Planet{}',
                    [2] = 'card used this round',
                    [3] = '{C:inactive}(Must have room)'
                },
                ['unlock'] = {
                    [1] = 'Win {C:attention,E:1}#1#{} runs',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Disproportionality',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Running Joke',
                ['text'] = {
                    [1] = 'Create a {C:dark_edition}Negative',
                    [2] = '"{C:attention}Joker{}" at the',
                    [3] = 'start of every shop'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'On Broadway',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult if',
                    [2] = 'played hand contains a {C:attention}Straight{}',
                    [3] = 'with a scoring {C:attention}face card'
                }
            },
            j_bunc_rasta = {
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
            j_bunc_critic = {
                ['name'] = 'Critic',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Mult if played hand's",
                    [2] = 'current score is',
                    [3] = '{C:attention}less than 1/#2#{} of',
                    [4] = "blind's required score"
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
                    [2] = '파괴 될 때 마다'
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
                    [1] = '상점에 {C:attention}+1{}개의 부스터 팩 슬롯이 추가됩니다',
                    [2] = ''
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