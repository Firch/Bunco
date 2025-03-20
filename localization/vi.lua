return { -- Translation by Shinosan
    misc = {
        dictionary = {

            -- Config values

            bunc_colorful_finishers = 'Colorful Final Blinds',
            bunc_colorful_finishers_desc = 'Enables colorful backgrounds for the final blinds',
            bunc_colorful_finishers_desc_2 = 'and removes gray background in the Endless Mode',

            bunc_high_quality_shaders = 'High Quality Shaders',
            bunc_high_quality_shaders_desc = 'Makes some of the vanilla shaders',
            bunc_high_quality_shaders_desc_2 = 'render in higher quality (might cause lag)',

            bunc_fixed_sprites = 'Fixed Sprites',
            bunc_fixed_sprites_desc = 'Tweaks some sprites in a minor way by removing',
            bunc_fixed_sprites_desc_2 = 'stray pixels, improving consistency and high contrast',

            bunc_gameplay_reworks = 'Gameplay Reworks',
            bunc_gameplay_reworks_desc = 'Reworks some of the vanilla mechanics',
            bunc_gameplay_reworks_desc_2 = 'to make the game more enjoyable',

            bunc_fixed_badges = 'Fixed Badges',
            bunc_fixed_badges_desc = 'Changes the badges on consumables by replacing confusing',
            bunc_fixed_badges_desc_2 = 'flavor text with indication of their way of obtaining',

            bunc_jokerlike_consumable_editions = 'Editions in Consumables Slot',
            bunc_jokerlike_consumable_editions_desc = 'Reverts the vanilla behavior of consumables with',
            bunc_jokerlike_consumable_editions_desc_2 = 'editions acting like Jokers (for other conflicting mods)',

            bunc_default_true = 'Enabled by default',
            bunc_default_false = 'Disabled by default',
            bunc_requires_restart = 'Requires game restart',

            -- Miscellaneous

            bunc_a_side = 'Bên A',
            bunc_b_side = 'Bên B',
            bunc_copied = 'Đã sao chép!',
            bunc_nothing = 'Không có gì',
            bunc_chips = 'Chip',
            bunc_loop = 'Vòng lặp!',
            bunc_chance = 'Cơ Hội',
            bunc_word_and = 'và',
            bunc_debuffed = 'Đã Suy Yếu!',
            bunc_pew = 'Chíu!',
            bunc_declined = 'Bị Từ Chối...',
            bunc_accepted = 'Được Chấp Nhận!',
            bunc_robbed = 'Bị Cướp!',
            bunc_ouch = 'OUCH!',
            bunc_inactive = 'không hoạt động',
            bunc_repeat = 'Lặp lại!',
            bunc_thoth_tarot = 'Thoth Tarot',
            bunc_thoth_tarots = 'Thoth Tarot',
            bunc_mysterious_tarot = 'Tarot?',
            bunc_mysterious_polymino = 'Đa Khối?',
            bunc_most_played_rank = '(bậc cao nhất đã chơi)',
            bunc_least_played_hand = '(tay bài nhiều nhất)',
            bunc_blade = '(1.5X điểm Blind)',
            bunc_exceeded_score = 'Đã vượt quá giới hạn!',
            bunc_min_ante = 'Ante tối thiểu:',
            bunc_final_blind = 'Blind cuối cùng',

            -- Consumable types

            k_polymino = 'Đa Khối',
            b_polymino_cards = 'Lá Đa Khối',

            -- Booster types

            k_bunc_blind_pack = 'Gói Blind',
            k_bunc_virtual_pack = 'Gói Ảo'
        },

        -- Suits

        suits_singular = {
            bunc_Fleurons = 'Hoa',
            bunc_Halberds = 'Rìu'
        },
        suits_plural = {
            bunc_Fleurons = 'Hoa',
            bunc_Halberds = 'Rìu'
        },

        -- Poker hands

        poker_hands = {
            ['bunc_Spectrum'] = 'Phổ',
            ['bunc_Straight Spectrum'] = 'Phổ Sảnh',
            ['bunc_Straight Spectrum (Royal)'] = 'Phổ Sảnh Chúa',
            ['bunc_Spectrum House'] = 'Phổ Cù Lũ',
            ['bunc_Spectrum Five'] = 'Phổ Ngũ Quý',
            ['bunc_Deal'] = 'Thỏa thuận'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = 'Đánh 5 lá khác chất'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = 'Đánh 5 lá khác chất liên tiếp',
                [2] = '(bậc liên tiếp)'
            },
            ['bunc_Spectrum House'] = {
                [1] = 'Đánh 1 cặp đôi ba',
                [2] = 'không cùng chất'
            },
            ['bunc_Spectrum Five'] = {
                [1] = 'Đánh 5 lá cùng bậc,',
                [2] = 'khác chất'
            },
            ['bunc_Deal'] = {
                [1] = '5 bậc được chọn',
                [2] = 'bởi Biển Số Xe'
            }
        },
        labels = {

            -- Editions

            bunc_glitter = 'Long lanh',
            bunc_fluorescent = 'Huỳnh Quang',

            -- Stickers

            bunc_scattering = 'Tán Xạ',
            bunc_hindered = 'Cản Trở',
            bunc_reactive = 'Phản Ứng'
        },
        collab_palettes = {
            default_Spades = {
                ['3'] = 'Tái Tạo Tương Phản'
            },
            default_Hearts = {
                ['3'] = 'Tái Tạo Tương Phản'
            },
            default_Clubs = {
                ['3'] = 'Tái Tạo Tương Phản'
            },
            default_Diamonds = {
                ['3'] = 'Tái Tạo Tương Phản'
            }
        },
        collabs = {
            bunc_Fleurons = {
                ['1'] = 'Mặc Định',
                ['2'] = 'Duck Game',
                ['3'] = 'LISA: The Painful'
            },
            bunc_Halberds = {
                ['1'] = 'Mặc Định',
                ['2'] = 'Fiend Folio',
                ['3'] = 'LISA: The Pointless'
            }
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{} chip thêm tại ván này'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}Đã kết nối{} trong nhóm này:'}},
            bunc_linked_group = {
                ['name'] = 'Ghép nhóm',
                ['text'] = {
                    [1] = 'Các lá đã kết nối cùng nhóm',
                    [2] = 'được rút, được chọn',
                    [3] = 'và bị phá huỷ {C:attention}cùng nhau'
                }
            },
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}Đã kết nối{} trong nhóm chờ'}},
            bunc_light_suits = {
                ['name'] = 'Chất Sáng',
                ['text'] = {
                    [1] = '{C:hearts}Cơ{} và {C:diamonds}Rô'
                }
            },
            bunc_light_suits_exotic = {
                ['name'] = 'Chất Sáng',
                ['text'] = {
                    [1] = '{C:hearts}Cơ{}, {C:diamonds}Rô,',
                    [2] = 'và {C:bunc_fleurons}Hoa'
                }
            },
            bunc_dark_suits = {
                ['name'] = 'Chất Tối',
                ['text'] = {
                    [1] = '{C:spades}Bích{} và {C:clubs}Tép'
                }
            },
            bunc_dark_suits_exotic = {
                ['name'] = 'Dark suits',
                ['text'] = {
                    [1] = '{C:spades}Bích{}, {C:clubs}Tép,',
                    [2] = 'và {C:bunc_halberds}Rìu'
                }
            },
            bunc_exotic_cards = {
                ['name'] = 'Lá Ngoại Lai',
                ['text'] = {
                    [1] = 'Lá với chất',
                    [2] = '{C:bunc_fleurons}Hoa{} hoặc {C:bunc_halberds}Rìu{}'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = 'Tráng Bạc',
                ['text'] = {
                    [1] = 'Tạo một {C:attention}Nhãn Chip'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = 'Lấp Lánh',
                ['text'] = {
                    [1] = 'Tạo một {C:attention}Nhãn +Nhân'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = 'Đa Sắc',
                ['text'] = {
                    [1] = 'Tạo một {C:attention}Nhãn XNhân'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = 'Long Lanh',
                ['text'] = {
                    [1] = 'Tạo một {C:attention}Nhãn XChip'
                }
            },

            -- Undiscovered

            undiscovered_polymino = {
                ['name'] = 'Chưa Khám Phá',
                ['text'] = {
                    [1] = 'Mua hoặc dùng',
                    [2] = 'lá này trong một',
                    [3] = 'trận ngẫu nhiên',
                    [4] = 'để biết tác dụng của nó'
                }
            },

            -- Booster Packs

            p_bunc_blind = {
                ['name'] = 'Gói Blind',
                ['text'] = {
                    [1] = 'Chọn trong số',
                    [2] = '{C:attention}#1# Boss Blind{} này để',
                    [3] = 'thế chỗ trong Ante này'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = 'Gói Ảo',
                ['text'] = {
                    [1] = 'Rút tất cả bộ bài và',
                    [2] = 'chọn {C:attention}#1#{} trên tối đa',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} lá Đa Khối{} để',
                    [4] = 'sử dụng ngay lập tức'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = 'Gói Ảo Lớn',
                ['text'] = {
                    [1] = 'Rút tất cả bộ bài và',
                    [2] = 'chọn {C:attention}#1#{} trên tối đa',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} lá Đa Khối{} để',
                    [4] = 'sử dụng ngay lập tức'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = 'Gói Ảo Đại',
                ['text'] = {
                    [1] = 'Rút tất cả bộ bài và',
                    [2] = 'chọn {C:attention}#1#{} trên tối đa',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark} lá Đa Khối{} để',
                    [4] = 'sử dụng ngay lập tức'
                }
            },

            -- Stickers

            bunc_scattering = {
                ['name'] = 'Tán Xạ',
                ['text'] = {
                    [1] = 'Phá Hủy ngẫu nhiên',
                    [2] = 'Joker liền kề khi',
                    [3] = 'loại bỏ'
                }
            },
            bunc_hindered = {
                ['name'] = 'Cản Trở',
                ['text'] = {
                    [1] = 'Yên tại chỗ ',
                    [2] = 'tới cuối ván',
                    [3] = 'sau khi được bán'
                }
            },
            bunc_reactive = {
                ['name'] = 'Phản Ứng',
                ['text'] = {
                    [1] = 'Suy yếu nếu không Blind nào',
                    [2] = 'được bỏ qua trong ván này'
                }
            },

            -- Stake stickers

            bunc_cyan_sticker = {
                ['name'] = 'Nhãn lục lam',
                ['text'] = {
                    [1] = 'Đã dùng Joker này',
                    [2] = 'để thắng ở độ khó',
                    [3] = '{C:attention}Cược lục lam{}'
                }
            },
            bunc_pink_sticker = {
                ['name'] = 'Nhãn Hường',
                ['text'] = {
                    [1] = 'Đã dùng Joker này',
                    [2] = 'để thắng ở độ khó',
                    [3] = '{C:attention}Cược Hường{}'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = 'Nhãn Đỏ Tươi',
                ['text'] = {
                    [1] = 'Đã dùng Joker này',
                    [2] = 'để thắng ở độ khó',
                    [3] = '{C:attention}Cược Đỏ Tươi '
                }
            }
        },

        -- Consumables

        Tarot = {

            -- Reworked Tarots

            c_bunc_wheel_of_fortune = {
                ['name'] = 'Vòng Quay may mắn',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng thêm',
                    [2] = 'Ấn bản {C:dark_edition}Ánh Kim{}, {C:dark_edition}Lấp Lánh{},',
                    [3] = '{C:dark_edition}Đa Sắc{}, hoặc {C:dark_edition}Long Lanh{}',
                    [4] = 'cho một {C:attention}Joker{} ngẫu nhiên'
                }
            },

            -- Main Tarots

            c_bunc_adjustment = {
                ['name'] = 'Điều chỉnh',
                ['text'] = {
                    [1] = 'Cường hóa cho {C:attention}#1#{}',
                    [2] = 'lá được chọn trở thành',
                    [3] = '{C:attention}#2#'
                },
                ['unlock'] = {
                    [1] = 'Khám phá ít nhất',
                    [2] = '{C:attention}#1#{} vật phẩm trong',
                    [3] = 'bộ sưu tập của bạn'
                }
            },
            c_bunc_art = {
                ['name'] = 'Nghệ thuật',
                ['text'] = {
                    [1] = 'Cường hóa cho {C:attention}#1#{}',
                    [2] = 'lá được chọn trở thành',
                    [3] = '{C:attention}#2#'
                },
                ['unlock'] = {
                    [1] = 'Khám phá ít nhất',
                    [2] = '{C:attention}#1#{} vật phẩm trong',
                    [3] = 'bộ sưu tập của bạn'
                }
            },
            c_bunc_universe = {
                ['name'] = 'Vũ Trụ',
                ['text'] = {
                    [1] = '{C:attention}Ngẫu nhiên{} các chất,',
                    [2] = 'bậc, cường hóa, ấn bản,',
                    [3] = 'và dấu lên tới',
                    [4] = '{C:attention}#1#{} lá được chọn'
                },
                ['unlock'] = {
                    [1] = 'Khám phá ít nhất',
                    [2] = '{C:attention}#1#{} vật phẩm trong',
                    [3] = 'bộ sưu tập của bạn'
                }
            },
            c_bunc_lust = {
                ['name'] = 'Ham Muốn',
                ['text'] = {
                    [1] = 'Cho {C:money}$#1#{} mọi lá bài',
                    [2] = 'đang chơi được cầm trên tay',
                    [3] = '{C:inactive}(Tối đa là {C:money}$#2#{C:inactive})',
                    [4] = '{C:inactive}(Hiện tại là {C:money}$#3#{C:inactive})'
                },
                ['unlock'] = {
                    [1] = 'Khám phá ít nhất',
                    [2] = '{C:attention}#1#{} vật phẩm trong',
                    [3] = 'bộ sưu tập của bạn'
                }
            },
            c_bunc_sky = {
                ['name'] = 'Bầu trời',
                ['text'] = {
                    [1] = 'Chuyển đổi tối đa',
                    [2] = '{C:attention}#1#{} lá được chọn',
                    [3] = 'thành chất {C:bunc_fleurons}Hoa{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = 'Vực Thẳm',
                ['text'] = {
                    [1] = 'Chuyển đổi tối đa',
                    [2] = '{C:attention}#1#{} lá được chọn',
                    [3] = 'thành chất {C:bunc_fleurons}Rìu{}'
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
                ['name'] = 'Hào Quang',
                ['text'] = {
                    [1] = 'Thêm Ấn bản {C:dark_edition}Ánh Kim{}, {C:dark_edition}Lấp Lánh{},',
                    [2] = '{C:dark_edition}Đa Sắc{}, hoặc {C:dark_edition}Long Lanh{}',
                    [3] = 'cho {C:attention}1{} lá được chọn trên tay'
                }
            },

            -- Main Spectrals

            c_bunc_cleanse = {
                ['name'] = 'Tẩy Uế',
                ['text'] = {
                    [1] = 'Áp {C:dark_edition}Huỳnh Quang{} cho',
                    [2] = '{C:attention}#1#{} lá được chọn',
                    [3] = 'đang cầm trên tay'
                }
            },
            c_bunc_the_8 = {
                ['name'] = '8',
                ['text'] = {
                    [1] = '{C:attention}Nối tất cả{} lá',
                    [2] = 'chưa kết nối, được',
                    [3] = 'chọn trên tay',
                    [4] = '{C:inactive,s:0.6}(Khi kích 8, chọn{}',
                    [5] = '{C:inactive,s:0.6}không giới hạn lá)'
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = 'I',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'có {C:attention}cùng chất và bậc'
                }
            },
            c_bunc_the_o = {
                ['name'] = 'O',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi 2 lá {C:attention}cùng thuộc tính',
                    [3] = '{C:inactive}(như chất, bậc){} và 2 lá',
                    [4] = '{C:attention}kiểu khác{} {C:attention}cùng thuộc tính'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'T',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi 3 lá {C:attention}cùng thuộc tính',
                    [3] = '{C:inactive}(như chất, bậc){} và 1 lá',
                    [4] = 'có {C:attention}thuộc tính khác biệt{}',
                    [5] = 'so với các lá còn lại'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'S',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi {C:attention}2 nhóm{} có 2 lá',
                    [3] = '{C:attention}cùng bậc{} mỗi nhóm, với mỗi',
                    [4] = 'nhóm có một lá {C:attention}chất thường'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'Z',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi {C:attention}2 nhóm{} có 2 lá',
                    [3] = '{C:attention}cùng bậc{} mỗi nhóm, với mỗi',
                    [4] = 'nhóm có một lá {C:attention}bậc thường'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'J',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi 3 lá {C:attention}cùng bậc',
                    [3] = 'và một lá {C:attention}chất thường{} khác',
                    [4] = 'nhưng không cùng bậc'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'L',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi 3 lá {C:attention}cùng chất',
                    [3] = 'và một lá {C:attention}bậc thường{} khác',
                    [4] = 'nhưng không cùng chât'
                }
            },
            c_bunc_the_slash = {
                ['name'] = 'Cái /',
                ['text'] = {
                    [1] = '{C:attention}Nối{} 4 lá được chọn',
                    [2] = 'nơi mọi lá có',
                    [3] = '{C:attention}thuộc tính khác nhau{}',
                    [4] = '{C:inactive}(bậc, chất){}'
                }
            }
        },
        Joker = {

            -- Reworked Jokers

            j_bunc_luchador = {
                ['name'] = 'Đô Vật',
                ['text'] = {
                    [1] = 'Bán lá này',
                    [2] = 'để tạo một',
                    [3] = '{C:attention}Nhãn Phá Vỡ'
                }
            },
            j_bunc_red_card = {
                ['name'] = 'Thẻ Đỏ',
                ['text'] = {
                    [1] = 'Lá Joker này {C:red}+#1#{} Nhân',
                    [2] = 'khi bỏ qua một',
                    [3] = '{C:attention}Gói Tăng Cường{}',
                    [4] = '{C:inactive}(Hiện tại là {C:red}+#2#{C:inactive} Nhân)'
                }
            },

            -- Main Jokers

            j_bunc_cassette_a = {
                ['name'] = 'Băng Cát-Xê (Bên A)',
                ['text'] = {
                    [1] = 'Lá có {C:attention}chất sáng màu',
                    [2] = 'Cho {C:chips}+#1#{} Chip khi ghi điểm'
                }
            },
            j_bunc_cassette_b = {
                ['name'] = 'Băng Cát-Xê (Bên B)',
                ['text'] = {
                    [1] = 'Lá có {C:attention}chất tối màu',
                    [2] = 'Cho {C:mult}+#2#{} Nhân khi ghi điểm'
                }
            },
            j_bunc_cassette_extra = {
                ['text'] = {
                    [1] = '{C:inactive}Khi bỏ, lật lá Joker này'
                }
            },
            j_bunc_mosaic = {
                ['name'] = 'Joker Khảm mảnh',
                ['text'] = {
                    [1] = 'Chơi {C:attention}Lá Cẩm thạch',
                    [2] = 'Cho {C:mult}+#1#{} Nhân khi',
                    [3] = 'tính điểm'
                },
                ['unlock'] = {
                    [1] = 'Chơi 1 tay 5 lá',
                    [2] = 'mà chỉ chứa',
                    [3] = 'lá {C:attention,E:1}Cẩm thạch{}'
                }
            },
            j_bunc_voxel = {
                ['name'] = 'Joker Ba Chiều',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân, {X:mult,C:white}-X#2#{} Nhân cho mỗi',
                    [2] = '{C:attention}lá Nâng cấp{} trong {C:attention}bộ bài đầy đủ{}',
                    [3] = '{C:inactive}(Hiện tại là {X:mult,C:white}X#3#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = 'Có ít nhất {C:attention}#1#',
                    [2] = 'lá {E:1,C:attention}Nâng cấp{}',
                    [3] = 'trong bộ bài'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = 'Vòng Tròn Trên Cánh Đồng',
                ['text'] = {
                    [1] = 'Chất {C:clubs}Bích{} mặc định cho {C:mult}+3{} Nhân,',
                    [2] = 'lá {C:attention}8{} cho {C:mult}+2{} Nhân,',
                    [3] = 'lá {C:attention}Q{}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{} cho {C:mult}+1{} Nhân'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = 'Crop Circles',
                ['text'] = {
                    [1] = 'Chất {C:bunc_fleurons}Hoa{} mặc định cho {C:mult}+4{} Nhân,',
                    [2] = 'Chất {C:clubs}Bích{} mặc định cho {C:mult}+3{} Nhân,',
                    [3] = 'lá {C:attention}8{} cho {C:mult}+2{} Nhân,',
                    [4] = 'lá {C:attention}Q{}, {C:attention}10{}, {C:attention}9{}, {C:attention}6{} cho {C:mult}+1{} Nhân'
                }
            },
            j_bunc_xray = {
                ['name'] = 'X-Ray',
                ['text'] = {
                    [1] = 'Lá Joker này {X:mult,C:white}X#1#{} Nhân',
                    [2] = 'mỗi lá úp mặt được rút',
                    [3] = '{C:inactive}(Hiện tại là {X:mult,C:white}X#2#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = 'Hoàn thành thử thách',
                    [2] = ' {E:1,C:attention}X-ray Vision'
                }
            },
            j_bunc_dread = {
                ['name'] = 'Kinh Hãi',
                ['text'] = {
                    [1] = 'Sau tay bài {C:attention}cuối cùng{} được ghi điểm,',
                    [2] = 'Nâng thêm {C:attention}#1# cấp{} và',
                    [3] = '{C:attention}phá hủy{} lá ghi điểm',
                    [4] = '{C:inactive,s:0.8}Tất cả các cấp độ mà Joker này đạt được',
                    [5] = '{C:inactive,s:0.8}đều biến mất khi nó được loại bỏ'
                },
                ['unlock'] = {
                    [1] = 'Giảm lượng lá trong bộ bài',
                    [2] = 'khoảng ít nhất {E:1,C:attention}#1#{} lá',
                    [3] = 'trong một ván'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = 'Joker tiền sử',
                ['text'] = {
                    [1] = 'Các lá đang chơi có cùng',
                    [2] = '{C:attention}bậc và chất{} với một lá',
                    [3] = '{C:attention}đã ghi điểm{} trong ván này',
                    [4] = 'cho {C:mult}+#1#{} Nhân'
                },
                ['unlock'] = {
                    [1] = 'Chơi',
                    [2] = '{E:1,C:attention}Thùng Ngũ Quý'
                }
            },
            j_bunc_linocut = {
                ['name'] = 'Joker In Lino',
                ['text'] = {
                    [1] = 'Khi chơi đúng {C:attention}2{} lá {C:attention}Đôi{}',
                    [2] = "chuyển đổi chất lá {C:attention}bên trái{}",
                    [3] = "thành chất lá {C:attention}bên phải{}",
                    [4] = '{C:inactive}(Kéo để sắp xếp lại)'
                    -- TODO this joker is a bit wordy
                }
            },
            j_bunc_ghost_print = {
                ['name'] = 'In Mờ',
                ['text'] = {
                    [1] = 'Cho Chip và Nhân của',
                    [2] = '{C:attention}tay bài{} đã chơi cuối cùng',
                    [3] = '{C:inactive}(Tay Poker cuối: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = 'Bốc Bát Họ',
                ['text'] = {
                    [1] = 'Cho {C:money}$#1#',
                    [2] = 'khi nhận...'
                },
                ['unlock'] = {
                    [1] = 'Tiêu ít nhất {E:1,C:attention}$100',
                    [2] = 'trong một ván'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = 'Bốc Bát Họ',
                ['text'] = {
                    [1] = 'Cho {C:money}$#1#{} khi nhận,',
                    [2] = 'cho giá bán còn {C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = 'Joker Hầm Trú',
                ['text'] = {
                    [1] = 'Khi {C:attention}Boss Blind{} bị đánh bại,',
                    [2] = 'tạo một lá {C:spectral}Siêu Linh{}',
                    [3] = '{C:inactive}(Cần ô trống)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = 'Joker Chăn Cừu',
                ['text'] = {
                    [1] = 'Joker này {C:chips}+#1#{} Chip',
                    [2] = 'khi tay bài chơi có {C:attention}Đôi',
                    [3] = '{C:inactive}(Hiện tại là {C:chips}+#2#{C:inactive} Chip)'
                }
            },
            j_bunc_knight = {
                ['name'] = 'Joker Hiệp Sĩ',
                ['text'] = {
                    [1] = 'Khi {C:attention}Blind{} được chọn, {C:attention}trộn{} các Joker',
                    [2] = 'và Joker này thêm {C:mult}+#1#{} Nhân,',
                    [3] = '{C:red}tái khởi{} khi một Joker nào đó được xếp lại',
                    [4] = '{C:inactive}(Hiện tại là {C:mult}+#2#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = 'Đánh bại {E:1,C:attention}Amber Acorn',
                    [2] = 'mà không vô hiệu hóa nó'
                }
            },
            j_bunc_jmjb = {
                ['name'] = 'Thẻ bài Joker Man và Jester Boy, Số 54.',
                ['text'] = {
                    [1] = '{C:attention}Gói Tiêu Chuẩn{} chỉ',
                    [2] = 'chứa {C:attention}Lá Nâng Cấp{}'
                },
                ['unlock'] = {
                    [1] = 'Mở {E:1,C:attention}#1#',
                    [2] = 'gói tăng cường',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = 'Cẩu Đánh Poker',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân cho mỗi bậc',
                    [2] = 'được ghi điểm là {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, hoặc {C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = 'Joker Móc Phải',
                ['text'] = {
                    [1] = 'Kích hoạt lá bài được tính điểm bên phải xa nhất',
                    [2] = 'thêm một lần cho mỗi {C:blue}lượt đánh{} còn lại',
                },
                ['unlock'] = {
                    [1] = 'Tái kích hoạt lá',
                    [2] = 'đã chơi ít nhất',
                    [3] = '{E:1,C:attention}#1# lần{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = 'Joker Hung Ác',
                ['text'] = {
                    [1] = 'Gấp đôi lượng tiền mọi nguồn',
                    [2] = '{C:green}#1# trên #2#{} khả năng',
                    [3] = 'chỉ cần trả {C:money}$1{}'
                },
                ['unlock'] = {
                    [1] = 'Hoàn thành thử thách',
                    [2] = '{E:1,C:attention}Gấp đôi hoặc không'
                }
            },
            j_bunc_carnival = {
                ['name'] = 'Lễ Hội',
                ['text'] = {
                    [1] = 'Sau khi đánh bại {C:attention}Boss Blind{},',
                    [2] = '{C:attention}phá hủy{} một Joker bất kì để',
                    [3] = 'trở về một ante, sau đó',
                    [4] = 'chỉ hoạt động ở Ante cao hơn'
                    -- TODO needs a line for whether it's active / ante it will be active
                },
                ['unlock'] = {
                    [1] = 'Quay Ante về',
                    [2] = '{E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = 'Búa Tạ',
                ['text'] = {
                    [1] = '{C:attention}Bài kính{} cho +{X:mult,C:white}X#1#{} Nhân',
                    [2] = 'nhưng luôn vỡ'
                },
                ['unlock'] = {
                    [1] = 'Chơi tay 5 lá',
                    [2] = 'mà chỉ chứa',
                    [3] = 'lá {C:attention,E:1}Kính{}'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = 'Móc cửa',
                ['text'] = {
                    [1] = 'Joker {C:blue}Thường{} không xuất hiện',
                    [2] = '{s:0.8}Thay vào đó, những độ hiếm khác xuất hiện'
                },
                ['unlock'] = {
                    [1] = 'Thắng một trận mà không',
                    [2] = 'cần dùng tới',
                    [3] = 'Joker {C:attention,E:1}Thường{}'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = 'Dấu Vân Tay',
                ['text'] = {
                    [1] = 'Lá ghi điểm trong',
                    [2] = '{C:attention}tay bài thắng{} nhận',
                    [3] = '{C:chips}+#1#{} Chip cho tới khi',
                    [4] = 'kết thúc ván kế',
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = 'Zero Shapiro',
                ['text'] = {
                    [1] = 'Lá {C:attention}K{}, {C:attention}Q{}, {C:attention}J{} hoặc các lá',
                    [2] = '{C:attention}không bậc{} được ghi điểm',
                    [3] = 'có {C:green}#1# trên #2#{} cơ hội để',
                    [4] = 'tạo một {C:attention}Nhãn D6',
                }
            },
            j_bunc_nil_bill = {
                ['name'] = 'Hóa Đơn Trắng',
                ['text'] = {
                    [1] = 'Nhận {C:money}$#1#{}',
                    [2] = 'khi một lá đang chơi',
                    [3] = 'bị ghi điểm'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = 'Giấy Lót Ly',
                ['text'] = {
                    [1] = 'Sau khi chơi hoặc bỏ,',
                    [2] = 'các lá bài trên tay',
                    [3] = '{C:chips}+#1#{} Chip đến cuối ván'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = 'Biển Số Xe',
                ['text'] = {
                    [1] = '#1#',
                    [2] = 'có Chip và Nhân của mọi',
                    [3] = '{C:attention}tay poker{} đã chơi trong vòng đấu này',
                    [4] = '{s:0.8}Kết hợp sẽ thay đổi sau mỗi vòng'
                },
                ['unlock'] = {
                    [1] = 'Hoàn thành thử thách',
                    [2] = '{E:1,C:attention}15 Minute City'
                }
            },
            j_bunc_slothful = {
                ['name'] = 'Joker lười nhác',
                ['text'] = {
                    [1] = 'Chơi các {C:attention}lá Tùy Chất',
                    [2] = 'cho {C:mult}+#1#{} Nhân',
                    [3] = 'khi tính điểm'
                },
                ['unlock'] = {
                    [1] = 'Chơi một tay 5 lá',
                    [2] = 'mà chỉ chứa',
                    [3] = 'lá {C:attention,E:1}Tùy Chất{}'
                }
            },
            j_bunc_neon = {
                ['name'] = 'Neon Joker',
                ['text'] = {
                    [1] = 'Lá Joker này nhận {X:mult,C:white}X#1#{} Nhân',
                    [2] = 'mỗi lá {C:attention}suy yếu{} được tính điểm',
                    [3] = '{C:inactive}(Hiện tại là {X:mult,C:white}X#2#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = 'Chơi một tay bài 5 lá',
                    [2] = 'mà chỉ chứa',
                    [3] = 'lá {C:attention,E:1}Suy yếu{}'
                }
            },
            j_bunc_gameplan = {
                ['name'] = 'Chiến Thuật',
                ['text'] = {
                    [1] = 'Các lá {C:attention}Joker{} bên cạnh Joker này',
                    [2] = 'đều bị {C:red}Suy yếu{} và',
                    [3] = 'cho {C:mult}+#1#{} Nhân'
                },
                ['unlock'] = {
                    [1] = 'Đánh bại {E:1,C:attention}Verdant Leaf',
                    [2] = 'mà không vô hiệu hóa nó'
                }
            },
            j_bunc_conquest = {
                ['name'] = 'Chinh Phục',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chip và',
                    [2] = '{C:red}Suy yếu{} Joker ngẫu nhiên',
                    [3] = 'khi {C:attention}Blind{} được chọn'
                },
                ['unlock'] = {
                    [1] = 'Đánh bại {E:1,C:attention}Crimson Heart',
                    [2] = 'mà không vô hiệu hóa nó'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = 'Bảng phân nhu',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Nhân cho',
                    [2] = 'lá {C:attention}2 tới Át chuỗi cùng chất',
                    [3] = 'trong {C:attention}bộ bài đầy đủ',
                    [4] = '{C:inactive}(Hiện tại là {C:mult}+#2#{C:inactive} Nhân)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = 'Joker Người Lùn',
                ['text'] = {
                    [1] = '{C:attention}Lá Cẩm Thạch{} được cầm trong tay',
                    [2] = 'có khả năng của',
                    [3] = '{C:attention}Lá Thép{} and {C:attention}Lá Vàng'
                },
                ['unlock'] = {
                    [1] = 'Chơi một tay bài',
                    [2] = 'chứa lá {E:1,C:attention}Cẩm thạch{}, {E:1,C:attention}Thép,',
                    [3] = 'và {E:1,C:attention}Vàng{}'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = 'Quý\'s tộc',
                ['text'] = {
                    [1] = 'Chọn thêm một lá ',
                    [2] = 'từ {C:attention}Gói Tăng Cường'
                },
                ['unlock'] = {
                    [1] = 'Chơi một trận đấu',
                    [2] = 'mà không cần mở bất kì',
                    [3] = '{C:attention,E:1}Gói tăng cường nào'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = 'Nhà Luyện Kim',
                ['text'] = {
                    [1] = '{C:attention}Lá Vàng{} cho {C:mult}+#1#{} Nhân',
                    [2] = 'khi cầm trên tay'
                }
            },
            j_bunc_juggalo = {
                ['name'] = 'Người Tung Hứng',
                ['text'] = {
                    [1] = 'Thêm ấn bản {C:dark_edition}Tráng Bạc{}, {C:dark_edition}Lấp Lánh{},',
                    [2] = '{C:dark_edition}Đa Sắc{}, hoặc {C:dark_edition}Long Lanh{}',
                    [3] = 'vào các {C:attention}đồ tiêu thụ{} ngẫu nhiên',
                    [4] = 'khi {C:attention}Blind{} được chọn'
                },
                ['unlock'] = {
                    [1] = 'Dùng {C:attention,E:1}#1#{} vật phẩm tiêu thụ',
                    [2] = 'cùng với {C:attention,E:1}Ẩn bản',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = 'Đầu Trên Mây',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng',
                    [2] = 'để nâng cấp {C:attention}Mậu Thầu{} khi',
                    [3] = 'nâng cấp bất kỳ {C:attention}tay poker nào'
                },
                ['unlock'] = {
                    [1] = 'Thắng một trận với',
                    [2] = '{C:attention,E:1}Mậu Thầu{} là',
                    [3] = 'tay bài cấp cao nhất'
                }
            },
            j_bunc_headshot = {
                ['name'] = 'Headshot',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân nếu lá đã chơi',
                    [2] = 'chỉ chứa đúng một lá',
                    [3] = '{C:attention}Hình{} được ghi điểm'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = 'Tay Cò Súng',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân,',
                    [2] = '{C:attention}chọn{} một lá có',
                    [3] = '{C:green}#2# trên #3#{} cơ hội để',
                    [4] = 'trở thành lá được chọn để chơi'
                },
                ['unlock'] = {
                    [1] = 'Đánh bại {E:1,C:attention}Cerulean Bell',
                    [2] = 'mà không vô hiệu hóa nó'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = 'Nhảy Lò Cò',
                ['text'] = {
                    [1] = 'Nhận {C:red}+#1#{} lượt bỏ',
                    [2] = 'nếu tay bài đã chơi',
                    [3] = 'có chứa một {C:attention}Sảnh{}'
                }
            },
            j_bunc_pawn = {
                ['name'] = 'Quân Tốt',
                ['text'] = {
                    [1] = 'Các lá có bậc {C:attention}thất nhất{}',
                    [2] = 'trong bộ bài đầy đủ của bạn',
                    [3] = '{C:attention}nâng bậc{} khi được ghi điểm',
                    [4] = '{C:inactive}(Bậc thấp nhất là: #1#)'
                    -- TODO "when scored" is only accurate
                    -- if the card's rank changes during scoring
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = 'Bảng Đánh Đố',
                ['text'] = {
                    [1] = 'Khi lá {C:tarot}Tarot{} được dùng,',
                    [2] = '{C:green}#1# trên #2#{} khả năng thêm',
                    [3] = '{C:dark_edition}Tráng Bạc{}, {C:dark_edition}Lấp Lánh{}, hoặc',
                    [4] = '{C:dark_edition}Đa Sắc{} cho ngẫu nhiên',
                    [5] = 'những lá đang chơi'
                }
            },
            j_bunc_vandalism = {
                ['name'] = 'Phá Hoại',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng cho',
                    [2] = 'các lá úp mặt xuống',
                    [3] = 'Các lá úp mặt cho',
                    [4] = '{X:mult,C:white}X#3#{} Nhân khi tính điểm'
                },
                ['unlock'] = {
                    [1] = 'Chơi tay bài 5 lá',
                    [2] = 'chỉ chứa duy nhất',
                    [3] = 'lá {C:attention,E:1}Úp mặt{}'
                }
            },
            j_bunc_protester = {
                ['name'] = 'Phản Động',
                ['text'] = {
                    [1] = 'Cho {C:attention}#1#X{} cho lá bậc cao nhất',
                    [2] = 'được loại bỏ thành Chip',
                    [3] = '{C:inactive}(Hiện tại {C:chips}+#2#{C:inactive} Chip)'
                }
            },
            j_bunc_doodle = {
                ['name'] = 'Nguệch Ngoạc',
                ['text'] = {
                    [1] = '{C:attention}Sao Chép{} lá {C:tarot}Tarot{} đầu tiên hoặc {C:planet}Hành Tinh{}',
                    [2] = 'được sử dụng trong vòng này',
                    [3] = '{C:inactive}(Cần ô trống)'
                },
                ['unlock'] = {
                    [1] = 'Thắng {C:attention,E:1}#1#{} màn',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = 'Sự không cân xứng',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = 'Đùa Vọng',
                ['text'] = {
                    [1] = 'Tạo một "{C:attention}Joker{}"',
                    [2] = '{C:dark_edition}Âm Bản{} trong',
                    [3] = 'khởi đầu mỗi shop'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = 'Trên Sân Khấu',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chip và {C:mult}+#2#{} Nhân nếu',
                    [2] = 'tay bài chơi có chứa {C:attention}Sảnh{}',
                    [3] = 'với lá {C:attention}Hình{} được tính điểm'
                }
            },
            j_bunc_rasta = {
                ['name'] = 'Rasta',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Nhân nếu không',
                    [2] = '{C:attention}Lá Nâng Cấp{}',
                    [3] = 'nào được tính điểm'
                },
                ['unlock'] = {
                    [1] = 'Thắng một trận mà không cần',
                    [2] = 'dùng {C:attention,E:1}Lá tăng cường'
                }
            },
            j_bunc_critic = {
                ['name'] = 'Critic',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{} Nhân nếu điểm hiện tại",
                    [2] = 'của tay bài',
                    [3] = '{C:attention}nhỏ hơn 1/#2#{} của',
                    [4] = "điểm blind yêu cầu"
                }
            },
            j_bunc_cellphone = {
                ['name'] = 'Điện thoại thông minh',
                ['text'] = {
                    [1] = '{C:attention}Lấy lại{} các lá đang chơi về tay',
                    [2] = 'sau lượt đánh đầu tiên',
                    [3] = 'mà không có lượt bỏ nào được sử dụng'
                }
            },
            j_bunc_wino = {
                ['name'] = 'Wino',
                ['text'] = {
                    [1] = 'Các lá đã chơi có chất',
                    [2] = '{C:hearts}Cơ{} và {C:diamonds}Rô{}',
                    [3] = 'cho {C:chips}+#1#{} Chip khi ghi điểm'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = 'Thợ Săn Tiền Thưởng',
                ['text'] = {
                    [1] = 'Mọi nguồn tiền',
                    [2] = 'cho ít {C:money}1${} và Joker này',
                    [3] = 'tăng thêm {C:mult}+#1#{} Nhân mỗi lần',
                    [4] = 'bạn kiếm được tiền',
                    [5] = '{C:inactive}(Hiện tại {C:mult}+#2#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = 'Có ít hơn {E:1,C:attention}$#1#',
                    [2] = 'trong một trận'
                }
            },
            j_bunc_mousetrap = {
                ['name'] = 'Bẫy chuột',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chip,',
                    [2] = '{C:green}#2# trên #3#{} khả năng để',
                    [3] = '{C:attention}mất{} một tay bài'
                }
            },
            j_bunc_the_joker = {
                ['name'] = 'Joker',
                ['text'] = {
                    [1] = 'Sau khi chơi, mỗi lá ghi điểm',
                    [2] = 'mà không có tăng cường có',
                    [3] = '{C:green}#1# tren #2#{} cơ hội bị phá hủy',
                },
                ['unlock'] = {
                    [1] = 'Khám phá mọi',
                    [2] = '{C:attention}Boss Blind'
                }
            },
            j_bunc_tangram = {
                ['name'] = 'Tangram',
                ['text'] = {
                    [1] = 'Khi lá {C:attention}7{} được ghi điểm,',
                    [2] = '{C:mult}+#1#{} Nhân theo số lần',
                    [3] = 'lá {C:attention}7{} đã chơi'
                }
            },
            j_bunc_domino = {
                ['name'] = 'Domino',
                ['text'] = {
                    [1] = 'Khi {C:attention}nhận{} hoặc {C:attention}sử dụng',
                    [2] = 'một lá bài từ gói',
                    [3] = 'Tăng Cường, nhận thêm {C:attention}2',
                    [4] = 'lá bài liền kề nếu có thể'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = 'Súng Bắn Keo',
                ['text'] = {
                    [1] = 'Bán lá này để',
                    [2] = '{C:attention}gắn{} tới #1#',
                    [3] = 'lá bài đang chơi được chọn'
                }
            },
            j_bunc_taped = {
                ['name'] = 'Joker Dán Gộp',
                ['text'] = {
                    [1] = '{C:attention}Liên kết{} tất cả',
                    [2] = 'lá bài đã chơi trong',
                    [3] = 'mội tay bài đã ghi điểm',
                    [4] = 'tại {C:attention}Boss Blind{}'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = 'Cuộn Len',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân mỗi {C:attention}liên kết{}',
                    [2] = 'được tạo trong trận này',
                    [3] = '{C:inactive}(Hiện tại {X:mult,C:white}X#2#{C:inactive} Nhân)'
                }
            },
            j_bunc_headache = {
                ['name'] = 'Đau Đầu',
                ['text'] = {
                    [1] = 'Tạo một {C:bunco_virtual_dark}Nhãn Trò Chơi Điện Tử',
                    [2] = 'cho mỗi {C:attention}#1#{} lá bài được chơi',
                    [3] = 'bị phá hủy',
                    [4] = '{C:inactive}({C:attention}#2#{C:inactive}/#1# lá bài bị phá hủy)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = 'Nhà Sưu Tầm Game ',
                ['text'] = {
                    [1] = 'Nhận {C:chips}+#1#{} Chip',
                    [2] = 'Khi một nhóm kết hợp',
                    [3] = 'được {C:attention}rút{} ra tay',
                    [4] = '{C:inactive}(Hiện tại {C:chips}+#2#{C:inactive} Chip)'
                }
            },
            j_bunc_jumper = {
                ['name'] = 'Người Nhảy',
                ['text'] = {
                    [1] = 'Cho {C:chips}+#1#{} Chip nếu',
                    [2] = 'một tay đã chơi',
                    [3] = 'chứa một {C:attention}Thùng{}',
                    [4] = '{C:inactive}(Hiện tại là {C:chips}+#2#{C:inactive} Chip)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = 'Stylophone',
                ['text'] = {
                    [1] = 'Lá cho {C:attention}X#1#{} Nhân',
                    [2] = 'mỗi {C:attention}bậc{} được ghi',
                    [3] = 'khi tính điểm'
                }
            },
            j_bunc_kite_experiment = {
                ['name'] = 'Thí Diều',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng đê {C:attention}tái ghi điểm',
                    [2] = 'tái ghi điểm {C:attention}Lá Đồng',
                    [3] = 'thêm một lần nữa'
                }
            },
            j_bunc_robot = {
                ['name'] = 'Robot',
                ['text'] = {
                    [1] = 'Lá Joker cho {C:mult}+#1#{} Nhân',
                    [2] = 'mỗi lần một {C:attention}Lá Đồng',
                    [3] = 'được tái tính điểm',
                    [4] = '{C:inactive}(Hiện tại {C:mult}+#2#{C:inactive} Nhân)'
                }
            },
            j_bunc_hardtack = {
                ['name'] = 'Bánh Quy Khô',
                ['text'] = {
                    [1] = '{C:attention}Lá Bánh Quy{} không',
                    [2] = 'còn bị phá hủy',
                    [3] = 'khi bị bỏ'
                }
            },
            j_bunc_pica = {
                ['name'] = 'Joker Gặm Nhấm',
                ['text'] = {
                    [1] = 'Khi một {C:attention}lá Bánh Quy{}',
                    [2] = 'bị loại bỏ, chơi',
                    [3] = 'mọi lá bị bỏ'
                }
            },

            -- Exotic Jokers

            j_bunc_zealous = {
                ['name'] = 'Joker Nhiệt Tình',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Nhân khi chơi',
                    [2] = 'tay bài có chứa',
                    [3] = 'một {C:attention}Phổ'
                }
            },
            j_bunc_lurid = {
                ['name'] = 'Joker khủng khiếp',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chip khi chơi',
                    [2] = 'tay bài có chứa',
                    [3] = 'một {C:attention}Phổ'
                }
            },
            j_bunc_envious = {
                ['name'] = 'Joker ghen tị',
                ['text'] = {
                    [1] = 'Lá bài đã chơi',
                    [2] = 'có chất {C:bunc_fleurons}Hoa{} ghi',
                    [3] = '{C:mult}+#1#{} Nhân khi tính điểm'
                }
            },
            j_bunc_proud = {
                ['name'] = 'Joker kiêu hãnh',
                ['text'] = {
                    [1] = 'Lá bài đã chơi',
                    [2] = 'có chất {C:bunc_halberds}Rìu{} ghi',
                    [3] = '{C:mult}+#1#{} Nhân khi tính điểm'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = 'Hợp Kim',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng cho',
                    [2] = 'những lá {C:bunc_fleurons}Hoa{} được chơi',
                    [3] = 'nhận {C:money}${} bằng với số Chip',
                    [4] = "mà là lá bài ghi được"
                }
            },
            j_bunc_unobtanium = {
                ['name'] = 'Unobtanium',
                ['text'] = {
                    [1] = 'Các lá đã chơi có',
                    [2] = 'chất {C:bunc_halberds}Rìu{} cho',
                    [3] = '{C:chips}+#1#{} Chip và {C:mult}+#2#{} Nhân',
                    [4] = "khi tính điểm"
                }
            },
            j_bunc_dynasty = {
                ['name'] = 'Chuẩn Phổ',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Điểm nhân khi',
                    [2] = 'tay bài chơi có chứa',
                    [3] = 'một {C:attention}Phổ'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = 'Đũa Phép Thuật',
                ['text'] = {
                    [1] = 'Lá Joker này {X:mult,C:white}X#1#{} Nhân',
                    [2] = 'mỗi tay bài chơi {C:attention}liên tiếp{}',
                    [3] = 'có chứa {C:attention}Phổ{}',
                    [4] = '{C:inactive}(Hiện tại là {X:mult,C:white}X#2#{C:inactive} Nhân)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = 'Sao Mọng',
                ['text'] = {
                    [1] = 'Nâng tay poker đã chơi',
                    [2] = 'nếu nó chứa {C:attention}Phổ',
                    [3] = '{C:green}#1# trên #2#{} khả năng lá bài',
                    [4] = 'bị phá hủy trong ván'
                }
            },
            j_bunc_fondue = {
                ['name'] = 'Nước Xốt',
                ['text'] = {
                    [1] = 'Các lá ghi điểm trong',
                    [2] = '{C:attention}tay đầu{} ván chơi',
                    [3] = 'chuyển thành chất {C:bunc_fleurons}Hoa'
                }
            },
            j_bunc_myopia = {
                ['name'] = 'Cận Thị',
                ['text'] = {
                    [1] = '{C:spades}Bích{} và {C:clubs}Chuồn{}',
                    [2] = 'tính như {C:bunc_halberds}Rìu'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = 'Loạn Thị',
                ['text'] = {
                    [1] = '{C:hearts}Cơ{} và {C:diamonds}Rô{}',
                    [2] = 'tính như {C:bunc_fleurons}Hoa'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = 'Roy G. Biv',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng thêm',
                    [2] = 'ấn bản {C:dark_edition}Đa Sắc{} cho',
                    [3] = 'lá bài ngẫu nhiên được tính điểm',
                    [4] = 'nếu trên tay có {C:attention}Phổ'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = 'Rigoletto',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân mỗi lá {C:bunco_exotic}Ngoại lai{}',
                    [2] = 'trong {C:attention}bộ bài{} của bạn',
                    [3] = '{C:inactive}(Hiện tại có: {X:mult,C:white}X#2#{C:inactive} Nhân)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = 'The Paling',
                ['text'] = {
                    [1] = 'Mất $1 mỗi',
                    [2] = 'lá bị bỏ'
                }
            },
            bl_bunc_umbrella = {
                ['name'] = 'The Umbrella',
                ['text'] = {
                    [1] = 'Sau khi chơi, lật mọi',
                    [2] = 'lá bài úp xuống'
                }
            },
            bl_bunc_tine = {
                ['name'] = 'The Tine',
                ['text'] = {
                    [1] = 'Mỗi #1# bị suy yếu'
                }
            },
            bl_bunc_swing = {
                ['name'] = 'The Swing',
                ['text'] = {
                    [1] = 'Sau khi chơi hoặc bỏ,',
                    [2] = 'lật mọi lá bài'
                }
            },
            bl_bunc_miser = {
                ['name'] = 'The Miser',
                ['text'] = {
                    [1] = 'Skip qua shop sau khi',
                    [2] = 'đánh bại blind này'
                }
            },
            bl_bunc_gate = {
                ['name'] = 'The Gate',
                ['text'] = {
                    [1] = 'Các lá bài',
                    [2] = 'không chọn lại được'
                }
            },
            bl_bunc_flame = {
                ['name'] = 'The Flame',
                ['text'] = {
                    [1] = 'Mọi lá nâng cấp',
                    [2] = 'đều bị suy yếu'
                }
            },
            bl_bunc_mask = {
                ['name'] = 'The Mask',
                ['text'] = {
                    [1] = '#1# sẽ có lượng',
                    [2] = 'Chip và Nhân của #2#'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = 'The Bulwark',
                ['text'] = {
                    [1] = 'Chơi #1# loại bỏ',
                    [2] = 'toàn bộ bài trong tay'
                }
            },
            bl_bunc_knoll = {
                ['name'] = 'The Knoll',
                ['text'] = {
                    [1] = 'Có trên $5',
                    [2] = 'suy yếu lượt đánh đầu'
                }
            },
            bl_bunc_stone = {
                ['name'] = 'The Stone',
                ['text'] = {
                    [1] = '+1X điểm Mặc định cho',
                    [2] = 'mọi $10 hiện có'
                }
            },
            bl_bunc_sand = {
                ['name'] = 'The Sand',
                ['text'] = {
                    [1] = '+1X điểm Mặc định cho',
                    [2] = 'mọi nhãn hiện có'
                }
            },
            bl_bunc_blade = {
                ['name'] = 'The Blade',
                ['text'] = {
                    [1] = 'Lần đầu vượt #1# điểm',
                    [2] = 'tay bài chơi quay về 0 điểm'
                }
            },
            bl_bunc_claw = {
                ['name'] = 'The Claw',
                ['text'] = {
                    [1] = 'Hủy lá',
                    [2] = 'sẽ quay lại bộ bìa'
                }
            },
            bl_bunc_veil = {
                ['name'] = 'The Veil',
                ['text'] = {
                    [1] = 'Các lá được chọn',
                    [2] = 'sẽ úp mặt'
                }
            },
            bl_bunc_cadaver = {
                ['name'] = 'The Cadaver',
                ['text'] = {
                    [1] = 'Tay bài phải có',
                    [2] = 'một lá hình'
                }
            },
            bl_bunc_wind = {
                ['name'] = 'The Wind',
                ['text'] = {
                    [1] = 'Joker bên phải nhất',
                    [2] = 'bị Suy Yếu'
                }
            },
            bl_bunc_prince = {
                ['name'] = 'The Prince',
                ['text'] = {
                    [1] = 'Mọi lá Joker đều bị suy yếu',
                    [2] = 'cho tới khi đánh lượt đầu'
                }
            },
            bl_bunc_depths = {
                ['name'] = 'The Depths',
                ['text'] = {
                    [1] = 'Sau khi chơi, nhận nhãn Vĩnh cửu',
                    [2] = 'Dễ hỏng, hoặc tán xạ'
                }
            },
            bl_bunc_chasm = {
                ['name'] = 'The Chasm',
                ['text'] = {
                    [1] = 'Sau khi chơi, gain Cản trở,',
                    [2] = 'Phản ứng, hoặc cho thuê'
                }
            },

            -- Final

            bl_bunc_final_crown = {
                ['name'] = 'Chartreuse Crown',
                ['text'] = {
                    [1] = 'Mọi chất cơ, rô, tép, bích',
                    [2] = 'các lá bài chất mặc định sẽ bị suy yếu'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = 'Vermilion Trident',
                ['text'] = {
                    [1] = '+1X điểm Mặc Định cho',
                    [2] = 'cho mỗi lượt bán trong Ante này'
                }
            },
            bl_bunc_final_tower = {
                ['name'] = 'Indigo Tower',
                ['text'] = {
                    [1] = 'Các lá chưa chơi',
                    [2] = 'trong Ante này sẽ bị suy yếu'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = 'Magenta Dagger',
                ['text'] = {
                    [1] = 'Bỏ bài bài dỗi tự chơi',
                    [2] = 'chơi xong phủi đít đi về, trừ số điểm đã ghi'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = 'Turquoise Shield',
                ['text'] = {
                    [1] = 'Điểm vượt quá yêu cầu trong ante này',
                    [2] = "sẽ được cộng hết vào Blind này"
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = 'Bộ bài Cổ Tích',
                ['text'] = {
                    [1] = 'Sau khi đánh bại mỗi',
                    [2] = '{C:attention}Boss Blind{}, thêm',
                    [3] = 'ngẫu nhiên #1# {C:bunco_exotic,T:bunc_exotic_cards}#2#',
                    [4] = 'vào bộ bài'
                },
                ['unlock'] = {
                    [1] = 'Chơi {E:1,C:attention}5 lá khác chất',
                    [2] = 'trong một tay bài'
                }
            },
            b_bunc_digital = {
                ['name'] = 'Bộ bài Kĩ Thuật Số',
                ['text'] = {
                    [1] = 'lá {C:bunco_virtual_dark}Đa Khối{} có thể',
                    [2] = 'xuất hiện trong cửa hàng,',
                    [3] = "bắt đầu với lá {C:bunco_virtual_dark,T:c_bunc_the_i}I{}"
                }
            }
        },
        Tag = {

            -- Reworked

            tag_bunc_boss = {
                ['name'] = 'Nhãn Boss',
                ['text'] = {
                    [1] = 'Cho miễn phí một',
                    [2] = '{C:attention}Gói Blind'
                }
            },
            tag_bunc_double = {
                ['name'] = 'Nhãn Kép',
                ['text'] = {
                    [1] = 'Cho một bản sao',
                    [2] = '{C:attention}Nhãn{} kế tiếp',
                    [3] = '{s:0.6,C:attention}Nhãn kép và ba{s:0.8} được loại trừ'
                }
            },
            tag_bunc_d_six = {
                ['name'] = 'Nhãn D6',
                ['text'] = {
                    [1] = 'Cho miễn phí {C:green}Quay lại',
                    [2] = 'vào shop kế'
                }
            },

            -- Main Tags

            tag_bunc_breaking = {
                ['name'] = 'Nhãn Phá Vỡ',
                ['text'] = {
                    [1] = 'Vô hiệu một',
                    [2] = '{C:attention}Boss Blind{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = 'Nhãn Trò Chơi Điện Tử',
                ['text'] = {
                    [1] = 'Cho miễn phí một',
                    [2] = '{C:bunco_virtual_dark}Gói Ảo Đại'
                }
            },
            tag_bunc_triple = {
                ['name'] = 'Nhãn Gấp ba',
                ['text'] = {
                    [1] = 'Cho 2 bản sao',
                    [2] = '{C:attention}Nhãn{} kế',
                    [3] = '{s:0.8,C:attention}Nhãn gấp ba{s:0.8} được loại trừ'
                }
            },
            tag_bunc_shopping = {
                ['name'] = 'Nhãn Mua hàng',
                ['text'] = {
                    [1] = 'Cho miễn phí {C:attention}1{}',
                    [2] = 'shop {C:green}Reroll'
                }
            },

            -- Edition tags

            tag_bunc_glitter = {
                ['name'] = 'Nhãn Long Lanh',
                ['text'] = {
                    [1] = 'Shop Ấn bản tiếp theo ',
                    [2] = 'Joker sẽ miễn phí và',
                    [3] = 'trở thành {C:dark_edition}Long Lanh'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = 'Nhãn Huỳnh Quang',
                ['text'] = {
                    [1] = 'Shop Ấn bản tiếp theo',
                    [2] = 'Joker sẽ miễn phí và',
                    [3] = 'trở thành {C:dark_edition}Huỳnh Quang'
                }
            },

            -- Consumable edition tags

            tag_bunc_chips = {
                ['name'] = 'Nhãn +Chip',
                ['text'] = {
                    [1] = '{C:chips}+#1#{} Chip tay kế'
                }
            },
            tag_bunc_mult = {
                ['name'] = 'Nhãn +Nhân',
                ['text'] = {
                    [1] = '{C:mult}+#1#{} Nhân tay kế',
                }
            },
            tag_bunc_xmult = {
                ['name'] = 'Nhãn XNhân',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{} Nhân tay kế',
                }
            },
            tag_bunc_xchips = {
                ['name'] = 'Nhãn XChip',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Chip tay kế'
                }
            },

            -- Exotic tags

            tag_bunc_filigree = {
                ['name'] = 'Nhãn Trang Sức',
                ['text'] = {
                    [1] = '{C:attention}Gói tiêu chuẩn{} kế được mở',
                    [2] = 'chỉ có {C:bunco_exotic}lá Ngoại Lai'
                }
            },

            -- Anti-tags

            tag_bunc_eternal = {
                ['name'] = 'Nhãn Vĩnh cửu',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Vĩnh Cửu{}'
                }
            },
            tag_bunc_perishable = {
                ['name'] = 'Nhãn Dễ Hỏng',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Dễ Hỏng{}'
                }
            },
            tag_bunc_scattering = {
                ['name'] = 'Nhãn Tán Xạ',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Tán Xạ{}'
                }
            },
            tag_bunc_hindered = {
                ['name'] = 'Nhãn Cản Trở',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Cản Trở{}'
                }
            },
            tag_bunc_reactive = {
                ['name'] = 'Nhãn Phản Ứng',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Phản Ứng{}'
                }
            },
            tag_bunc_rental = {
                ['name'] = 'Nhãn Cho Thuê',
                ['text'] = {
                    [1] = 'Cửa hàng kế Joker',
                    [2] = 'sẽ nhận một nhãn {C:attention}Cho Thuê{}'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = 'Long Lanh',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{} Chip'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = 'Huỳnh Quang',
                ['text'] = {
                    [1] = 'không thể lật, suy yếu',
                    [2] = 'hoặc bị buộc phải chọn'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = 'Ép lớp',
                ['text'] = {
                    [1] = 'Các lá tiêu dùng trong',
                    [2] = '{C:attention}Gói Tăng Cường{} có thể',
                    [3] = 'xuất hiện {C:dark_edition}Ấn bản'
                }
            },
            v_bunc_supercoating = {
                ['name'] = 'Sơn siêu phủ',
                ['text'] = {
                    [1] = 'Các lá tiêu dùng trong',
                    [2] = '{C:attention}Gói Tăng Cường{} có thể',
                    [3] = 'xuất hiện {C:dark_edition}Ấn bản'
                },
                ['unlock'] = {
                    [1] = 'Dùng {C:attention,E:1}#1#{} lá tiêu dùng',
                    [2] = 'với {C:attention,E:1}Ẩn bản',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = 'Kéo tỉa rào',
                ['text'] = {
                    [1] = "Giảm điểm Blind",
                    [2] = 'mỗi {C:attention}#1#%{} mỗi ván chơi'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = 'Cưa máy',
                ['text'] = {
                    [1] = 'Mọi điểm yêu cầu',
                    [2] = 'đều giảm bởi {C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = "Giảm điểm Blind bởi",
                    [2] = 'kéo tỉa rào',
                    [3] = 'tổng cộng {C:attention,E:1}#1#{} lần',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = "Cốc và bóng",
                ['text'] = {
                    [1] = '{C:attention}+1{} ô Gói tăng cường',
                    [2] = 'trong shop'
                }
            },
            v_bunc_shell_game = {
                ['name'] = 'Trò chơi vỏ',
                ['text'] = {
                    [1] = 'Roll lại {C:attention}mặt hàng',
                    [2] = 'cho các gói tăng cường',
                    [3] = '{C:attention}1{} lần mỗi gói'
                },
                ['unlock'] = {
                    [1] = 'Mở {E:1,C:attention}#1#',
                    [2] = 'Gói tăng cường',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = 'Ngụy Trang',
                ['text'] = {
                    [1] = '{C:attention}Gói Blind{} có thể',
                    [2] = 'xuất hiện trong shop'
                }
            },
            v_bunc_masquerade = {
                ['name'] = 'Lễ Hóa Trang',
                ['text'] = {
                    [1] = 'Mọi {C:attention}Gói Blind{} trong',
                    [2] = 'shop đều miễn phí'
                },
                ['unlock'] = {
                    [1] = 'Thế chỗ {E:1,C:attention}#1#{}',
                    [2] = 'Blind với Blind',
                    [3] = 'trong gói Blind',
                    [4] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = 'Gói Fanny',
                ['text'] = {
                    [1] = '{C:green}#1# trên #2#{} khả năng cho',
                    [2] = 'tạo một {C:attention}Nhãn Kép',
                    [3] = 'cho mỗi Blind',
                    [4] = 'bị {C:attention}loại'
                }
            },
            v_bunc_pin_collector = {
                ['name'] = 'Người sưu tầm Ghim',
                ['text'] = {
                    [1] = 'Mọi {C:attention}Nhãn Kép{} mới',
                    [2] = 'sẽ xuất hiện như {C:attention}Nhãn Gấp Ba'
                },
                ['unlock'] = {
                    [1] = 'Loại tổng cộng',
                    [2] = '{E:1,C:attention}#1#{} blind',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = 'Máy Chơi Thùng',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}Gói ẢO',
                    [2] = 'xuất hiện thường xuyên hơn {C:attention}4X{} lần'
                }
            },
            v_bunc_polybius = {
                ['name'] = 'Polybius',
                ['text'] = {
                    [1] = 'Lá {C:bunco_virtual_dark}Đa Khối{} được phép',
                    [2] = 'kết nối {C:attention}thêm một{} lá nữa',
                    [3] = '{s:0.6,C:inactive}Lá thêm có thể có bất kì thuộc tính nào'
                },
                ['unlock'] = {
                    [1] = 'Tạo tổng cộng',
                    [2] = '{E:1,C:attention}#1#{} nhóm kết nối',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
        Enhanced = {
            m_bunc_copper = {
                ['name'] = 'Lá Đồng',
                ['text'] = {
                    [1] = 'Tái tính điểm khi được chơi',
                    [2] = '{C:attention}liền kề{} với',
                    [3] = 'lá Đồng được tính điểm khác'
                },
            },
            m_bunc_cracker = {
                ['name'] = 'Lá Bánh Quy',
                ['text'] = {
                    [1] = '{C:attention}Tại lượt bỏ{} lá bài',
                    [2] = 'được chơi và bị phá hủy',
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = 'Cược lục lam',
                ['text'] = {
                    [1] = 'Shop có thể có Joker {C:attention}Tán Xạ{}',
                    [2] = '{C:inactive,s:0.8}(Tiêu diệt Joker liền kề ngẫu nhiên khi bị loại bỏ)',
                    [3] = '{s:0.8}Áp dụng toàn bộ Cược trước'
                }
            },
            stake_bunc_pink = {
                ['name'] = 'Cược Hồng',
                ['text'] = {
                    [1] = 'Shop có thể có Joker {C:attention}Cản Trở{}',
                    [2] = '{C:inactive,s:0.8}(Giữ nguyên vị trí cho đến hết vòng sau khi được bán)',
                    [3] = '{s:0.8}Áp dụng toàn bộ Cược trước'
                }
            },
            stake_bunc_magenta = {
                ['name'] = 'Cược Đỏ Tươi',
                ['text'] = {
                    [1] = 'Shop có thể có Joker {C:attention}Phản Ứng{}',
                    [2] = '{C:inactive,s:0.8}(Bị suy yếu nếu không có một Blind nào được loại bỏ trong ante)',
                    [3] = '{s:0.8}Áp dụng toàn bộ Cược trước'
                }
            }
        }
    }
}