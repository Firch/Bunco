return { -- Translation by VisJoker
    misc = {
        dictionary = {

            -- 配置值

            bunc_colorful_finishers = '多彩最终盲注',
            bunc_colorful_finishers_desc = '为最终盲注启用多彩背景',
            bunc_colorful_finishers_desc_2 = '并移除无尽模式中的灰色背景',

            bunc_high_quality_shaders = '高质量着色器',
            bunc_high_quality_shaders_desc = '使部分原版着色器',
            bunc_high_quality_shaders_desc_2 = '以更高质量渲染（可能会导致卡顿）',

            bunc_fixed_sprites = '修复精灵图',
            bunc_fixed_sprites_desc = '通过移除',
            bunc_fixed_sprites_desc_2 = '杂散像素、提高一致性和高对比度，对部分精灵图进行微调',

            bunc_gameplay_reworks = '游戏玩法重制',
            bunc_gameplay_reworks_desc = '重制部分原版机制',
            bunc_gameplay_reworks_desc_2 = '使游戏更具乐趣',

            bunc_fixed_badges = '修复徽章',
            bunc_fixed_badges_desc = '通过替换令人困惑的',
            bunc_fixed_badges_desc_2 = '风味文本，将消耗品上的徽章替换为获取方式的提示',

            bunc_jokerlike_consumable_editions = '消耗品槽位中的版本',
            bunc_jokerlike_consumable_editions_desc = '恢复具有版本的消耗品像小丑牌一样的原版行为',
            bunc_jokerlike_consumable_editions_desc_2 = '(用于其他冲突的模组)',

            bunc_default_true = '默认启用',
            bunc_default_false = '默认禁用',
            bunc_requires_restart = '需要重启游戏',

            -- 杂项

            bunc_a_side = 'A面',
            bunc_b_side = 'B面',
            bunc_copied = '已复制！',
            bunc_nothing = '无',
            bunc_chips = '筹码',
            bunc_loop = '循环！',
            bunc_chance = '概率',
            bunc_word_and = '和',
            bunc_debuffed = '已减益！',
            bunc_pew = '咻！',
            bunc_declined = '已拒绝...',
            bunc_accepted = '已接受！',
            bunc_robbed = '已被抢劫！',
            bunc_ouch = '哎哟！',
            bunc_inactive = '未激活',
            bunc_repeat = '重复！',
            bunc_thoth_tarot = '透特塔罗牌',
            bunc_thoth_tarots = '透特塔罗牌组',
            bunc_mysterious_tarot = '塔罗牌？',
            bunc_mysterious_polymino = '多连方块？',
            bunc_most_played_rank = '(最常玩的牌级)',
            bunc_least_played_hand = '(最少玩的手牌)',
            bunc_blade = '(盲注得分1.5倍)',
            bunc_exceeded_score = '超过限制！',
            bunc_min_ante = '最小底注：',
            bunc_final_blind = '最终盲注',

            -- 消耗品类型

            k_polymino = '多连方块',
            b_polymino_cards = '多连方块卡牌',

            -- 卡包类型

            k_bunc_blind_pack = '盲注卡包',
            k_bunc_virtual_pack = '虚拟卡包'
        },

        -- 花色

        suits_singular = {
            bunc_Fleurons = '花饰',
            bunc_Halberds = '戟'
        },
        suits_plural = {
            bunc_Fleurons = '花饰',
            bunc_Halberds = '戟'
        },

        -- 扑克牌型

        poker_hands = {
            ['bunc_Spectrum'] = '光谱',
            ['bunc_Straight Spectrum'] = '顺子光谱',
            ['bunc_Straight Spectrum (Royal)'] = '皇家光谱',
            ['bunc_Spectrum House'] = '光谱葫芦',
            ['bunc_Spectrum Five'] = '光谱五同',
            ['bunc_Deal'] = '交易'
        },
        poker_hand_descriptions = {
            ['bunc_Spectrum'] = {
                [1] = '5张不同花色的牌'
            },
            ['bunc_Straight Spectrum'] = {
                [1] = '5张连续牌级的牌',
                [2] = '且每张牌花色不同'
            },
            ['bunc_Spectrum House'] = {
                [1] = '一组三条和一组对子',
                [2] = '且每张牌花色不同'
            },
            ['bunc_Spectrum Five'] = {
                [1] = '5张相同牌级的牌',
                [2] = '且每张牌花色不同'
            },
            ['bunc_Deal'] = {
                [1] = '选择5个牌级',
                [2] = '通过车牌选择'
            }
        },
        labels = {

            -- 版本

            bunc_glitter = '闪光',
            bunc_fluorescent = '荧光',

            -- 贴纸

            bunc_scattering = '散射',
            bunc_hindered = '受阻',
            bunc_reactive = '反应性'
        },
        collab_palettes = {
            default_Spades = {
                ['3'] = '重铸对比度'
            },
            default_Hearts = {
                ['3'] = '重铸对比度'
            },
            default_Clubs = {
                ['3'] = '重铸对比度'
            },
            default_Diamonds = {
                ['3'] = '重铸对比度'
            }
        },
        collabs = {
            bunc_Fleurons = {
                ['1'] = '默认',
                ['2'] = '鸭子游戏',
                ['3'] = '痛苦的丽莎'
            },
            bunc_Halberds = {
                ['1'] = '默认',
                ['2'] = '恶魔图鉴',
                ['3'] = '无意义的丽莎'
            }
        }
    },
    descriptions = {
        Other = {
            bunc_temporary_extra_chips = {['text'] = {[1] = '{C:chips}+#1#{}额外筹码，本轮有效'}},
            bunc_linked_cards = {['text'] = {[1] = '{C:attention}已链接{}，此组中：'}},
            bunc_linked_group = {
                ['name'] = '链接组',
                ['text'] = {
                    [1] = '链接组中的卡牌',
                    [2] = '将被一起抽取、选择',
                    [3] = '并一起销毁 {C:attention}'
                }
            },
            bunc_drawn_linked_cards = {['text'] = {[1] = '{C:attention}已链接{}，抽取组中'}},
            bunc_light_suits = {
                ['name'] = '浅色花色',
                ['text'] = {
                    [1] = '{C:hearts}红桃{}和{C:diamonds}方块'
                }
            },
            bunc_light_suits_exotic = {
                ['name'] = '浅色花色',
                ['text'] = {
                    [1] = '{C:hearts}红桃{}、{C:diamonds}方块,',
                    [2] = '和{C:bunc_fleurons}花饰'
                }
            },
            bunc_dark_suits = {
                ['name'] = '深色花色',
                ['text'] = {
                    [1] = '{C:spades}黑桃{}和{C:clubs}梅花'
                }
            },
            bunc_dark_suits_exotic = {
                ['name'] = '深色花色',
                ['text'] = {
                    [1] = '{C:spades}黑桃{}、{C:clubs}梅花,',
                    [2] = '和{C:bunc_halberds}戟'
                }
            },
            bunc_exotic_cards = {
                ['name'] = '特殊卡牌',
                ['text'] = {
                    [1] = '具有',
                    [2] = '{C:bunc_fleurons}花饰{}或{C:bunc_halberds}戟{}花色的卡牌'
                }
            },
            bunc_consumable_edition_foil = {
                ['name'] = '箔片',
                ['text'] = {
                    [1] = '创建一个{C:attention}筹码标签'
                }
            },
            bunc_consumable_edition_holo = {
                ['name'] = '全息',
                ['text'] = {
                    [1] = '创建一个{C:attention}倍数标签'
                }
            },
            bunc_consumable_edition_polychrome = {
                ['name'] = '多色',
                ['text'] = {
                    [1] = '创建一个{C:attention}巨倍标签'
                }
            },
            bunc_consumable_edition_bunc_glitter = {
                ['name'] = '闪光',
                ['text'] = {
                    [1] = '创建一个{C:attention}超筹码标签'
                }
            },

            -- 未发现

            undiscovered_polymino = {
                ['name'] = '未发现',
                ['text'] = {
                    [1] = '购买或使用',
                    [2] = '此卡牌在',
                    [3] = '无种子游戏中，以',
                    [4] = '了解其用途'
                }
            },

            -- 卡包

            p_bunc_blind = {
                ['name'] = '盲注卡包',
                ['text'] = {
                    [1] = '从最多',
                    [2] = '{C:attention}#1#个首领盲注{}中选择一个',
                    [3] = '替换此底注'
                }
            },
            p_bunc_virtual_normal = {
                ['name'] = '虚拟卡包',
                ['text'] = {
                    [1] = '抽完整副牌，然后',
                    [2] = '从最多',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark}多连方块{}卡牌中选择{C:attention}#1#{}张',
                    [4] = '立即使用'
                }
            },
            p_bunc_virtual_jumbo = {
                ['name'] = '巨型虚拟卡包',
                ['text'] = {
                    [1] = '抽完整副牌，然后',
                    [2] = '从最多',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark}多连方块{}卡牌中选择{C:attention}#1#{}张',
                    [4] = '立即使用'
                }
            },
            p_bunc_virtual_mega = {
                ['name'] = '超级虚拟卡包',
                ['text'] = {
                    [1] = '抽完整副牌，然后',
                    [2] = '从最多',
                    [3] = '{C:attention}#2#{C:bunco_virtual_dark}多连方块{}卡牌中选择{C:attention}#1#{}张',
                    [4] = '立即使用'
                }
            },

            -- 贴纸

            bunc_scattering = {
                ['name'] = '散射',
                ['text'] = {
                    [1] = '移除时，销毁随机',
                    [2] = '相邻的小丑牌',
                    [3] = ''
                }
            },
            bunc_hindered = {
                ['name'] = '受阻',
                ['text'] = {
                    [1] = '出售后，停留原位直至',
                    [2] = '回合结束',
                    [3] = ''
                }
            },
            bunc_reactive = {
                ['name'] = '反应性',
                ['text'] = {
                    [1] = '若此底注未跳过任何盲注，则减益',
                    [2] = '',
                    [3] = ''
                }
            },

            -- 赌注贴纸

            bunc_cyan_sticker = {
                ['name'] = '青色贴纸',
                ['text'] = {
                    [1] = '使用此小丑牌',
                    [2] = '在{C:attention}青色',
                    [3] = '{C:attention}赌注{}难度下获胜'
                }
            },
            bunc_pink_sticker = {
                ['name'] = '粉色贴纸',
                ['text'] = {
                    [1] = '使用此小丑牌',
                    [2] = '在{C:attention}粉色',
                    [3] = '{C:attention}赌注{}难度下获胜'
                }
            },
            bunc_magenta_sticker = {
                ['name'] = '品红色贴纸',
                ['text'] = {
                    [1] = '使用此小丑牌',
                    [2] = '在{C:attention}品红色',
                    [3] = '{C:attention}赌注{}难度下获胜'
                }
            }
        },

        -- 消耗品

        Tarot = {

            -- 重制的塔罗牌

            c_bunc_wheel_of_fortune = {
                ['name'] = '命运之轮',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率为',
                    [2] = '随机{C:attention}小丑牌添加',
                    [3] = '{C:dark_edition}箔片{}、{C:dark_edition}全息{}、',
                    [4] = '{C:dark_edition}多色{}或{C:dark_edition}闪光{}版本'
                }
            },

            -- 主要塔罗牌

            c_bunc_adjustment = {
                ['name'] = '调整',
                ['text'] = {
                    [1] = '最多增强{C:attention}#1#{}张',
                    [2] = '所选卡牌至',
                    [3] = '{C:attention}#2#级'
                },
                ['unlock'] = {
                    [1] = '从你的收藏中发现至少',
                    [2] = '{C:attention}#1#{}个物品',
                    [3] = ''
                }
            },
            c_bunc_art = {
                ['name'] = '艺术',
                ['text'] = {
                    [1] = '最多增强{C:attention}#1#{}张',
                    [2] = '所选卡牌至',
                    [3] = '{C:attention}#2#级'
                },
                ['unlock'] = {
                    [1] = '从你的收藏中发现至少',
                    [2] = '{C:attention}#1#{}个物品',
                    [3] = ''
                }
            },
            c_bunc_universe = {
                ['name'] = '宇宙',
                ['text'] = {
                    [1] = '{C:attention}随机化{}最多{C:attention}#1#{}张',
                    [2] = '所选卡牌的花色、',
                    [3] = '牌级、增强、版本',
                    [4] = '和封印'
                },
                ['unlock'] = {
                    [1] = '从你的收藏中发现至少',
                    [2] = '{C:attention}#1#{}个物品',
                    [3] = ''
                }
            },
            c_bunc_lust = {
                ['name'] = '色欲',
                ['text'] = {
                    [1] = '每张手中的扑克牌',
                    [2] = '获得{C:money}$#1#{}',
                    [3] = '{C:inactive}(最多{C:money}$#2#{C:inactive})',
                    [4] = '{C:inactive}(当前{C:money}$#3#{C:inactive})'
                },
                ['unlock'] = {
                    [1] = '从你的收藏中发现至少',
                    [2] = '{C:attention}#1#{}个物品',
                    [3] = ''
                }
            },
            c_bunc_sky = {
                ['name'] = '天空',
                ['text'] = {
                    [1] = '最多将',
                    [2] = '{C:attention}#1#{}张所选卡牌',
                    [3] = '转换为{C:bunc_fleurons}花饰{}'
                }
            },
            c_bunc_abyss = {
                ['name'] = '深渊',
                ['text'] = {
                    [1] = '最多将',
                    [2] = '{C:attention}#1#{}张所选卡牌',
                    [3] = '转换为{C:bunc_halberds}戟{}'
                }
            },
        },
        Planet = {
            c_bunc_quaoar = {
                ['name'] = '夸欧尔'
            },
            c_bunc_haumea = {
                ['name'] = '妊神星'
            },
            c_bunc_sedna = {
                ['name'] = '塞德娜'
            },
            c_bunc_makemake = {
                ['name'] = '鸟神星'
            },
        },
        Spectral = {

            -- 重制的灵能牌

            c_bunc_aura = {
                ['name'] = '光环',
                ['text'] = {
                    [1] = '为手中{C:attention}1{}张所选卡牌添加',
                    [2] = '{C:dark_edition}箔片{}、{C:dark_edition}全息{}、',
                    [3] = '{C:dark_edition}多色{}或{C:dark_edition}闪光{}版本'
                }
            },

            -- 主要灵能牌

            c_bunc_cleanse = {
                ['name'] = '净化',
                ['text'] = {
                    [1] = '为手中{C:attention}#1#{}张所选卡牌添加',
                    [2] = '{C:dark_edition}荧光{}版本'
                }
            },
            c_bunc_the_8 = {
                ['name'] = '数字8',
                ['text'] = {
                    [1] = '{C:attention}将任意数量的',
                    [2] = '所选未链接卡牌链接在一起',
                    [3] = '手中的卡牌',
                    [4] = '{C:inactive,s:0.6}(选择数字8时可无限选择)'
                }
            }
        },
        Polymino = {
            c_bunc_the_i = {
                ['name'] = '直线型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '这些卡牌具有{C:attention}相同的牌级或花色'
                }
            },
            c_bunc_the_o = {
                ['name'] = '方块型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中2张卡牌具有{C:attention}相同的属性',
                    [3] = '{C:inactive}(牌级或花色){}，另外2张卡牌',
                    [4] = '具有{C:attention}不同类型的相同属性'
                }
            },
            c_bunc_the_t = {
                ['name'] = 'T型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中3张卡牌具有{C:attention}相同的属性',
                    [3] = '{C:inactive}(牌级或花色){}，另外1张卡牌',
                    [4] = '{C:attention}不具有{}相同的属性',
                    [5] = '与其他卡牌不同'
                }
            },
            c_bunc_the_s = {
                ['name'] = 'S型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中{C:attention}2组{}各2张卡牌',
                    [3] = '在每组内具有{C:attention}相同的牌级'
                }
            },
            c_bunc_the_z = {
                ['name'] = 'Z型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中{C:attention}2组{}各2张卡牌',
                    [3] = '在每组内具有{C:attention}相同的花色'
                }
            },
            c_bunc_the_j = {
                ['name'] = 'J型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中3张卡牌具有{C:attention}相同的牌级',
                    [3] = '另外1张卡牌具有',
                    [4] = '{C:attention}相同的花色{}，但',
                    [5] = '不具有相同的牌级'
                }
            },
            c_bunc_the_l = {
                ['name'] = 'L型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '其中3张卡牌具有{C:attention}相同的花色',
                    [3] = '另外1张卡牌具有',
                    [4] = '{C:attention}相同的牌级{}，但',
                    [5] = '不具有相同的花色'
                }
            },
            c_bunc_the_slash = {
                ['name'] = '斜杠型',
                ['text'] = {
                    [1] = '{C:attention}将4张所选卡牌链接在一起',
                    [2] = '所有卡牌具有',
                    [3] = '{C:attention}不同的属性{} {C:inactive}(牌级和花色)'
                }
            }
        },
        Joker = {

            -- 重制的小丑牌

            j_bunc_luchador = {
                ['name'] = '摔角手',
                ['text'] = {
                    [1] = '出售此卡牌以',
                    [2] = '创建一个免费的',
                    [3] = '{C:attention}破坏标签'
                }
            },
            j_bunc_red_card = {
                ['name'] = '红牌',
                ['text'] = {
                    [1] = '此小丑牌每跳过一次',
                    [2] = '{C:attention}卡包{}中的选择',
                    [3] = '获得{C:red}+#1#{}倍数',
                    [4] = '{C:inactive}(当前{C:red}+#2#{C:inactive}倍数)'
                }
            },

            -- 主要小丑牌

            j_bunc_cassette_a = {
                ['name'] = '磁带（A面）',
                ['text'] = {
                    [1] = '具有{C:attention}浅色花色的卡牌',
                    [2] = '得分时获得{C:chips}+#1#{}筹码'
                }
            },
            j_bunc_cassette_b = {
                ['name'] = '磁带（B面）',
                ['text'] = {
                    [1] = '具有{C:attention}深色花色的卡牌',
                    [2] = '得分时获得{C:mult}+#2#{}倍数'
                }
            },
            j_bunc_cassette_extra = {
                ['text'] = {
                    [1] = '{C:inactive}弃牌时，翻转此小丑牌'
                }
            },
            j_bunc_mosaic = {
                ['name'] = '马赛克小丑牌',
                ['text'] = {
                    [1] = '打出的{C:attention}石头卡牌',
                    [2] = '得分时获得{C:mult}+#1#{}倍数',
                    [3] = ''
                },
                ['unlock'] = {
                    [1] = '打出一手仅包含',
                    [2] = '{C:attention,E:1}石头{}卡牌的5张手牌'
                }
            },
            j_bunc_voxel = {
                ['name'] = '体素小丑牌',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，{X:mult,C:white}-X#2#{}倍数，每有一张',
                    [2] = '{C:attention}增强卡牌{}在你的{C:attention}完整牌组中',
                    [3] = '{C:inactive}(当前{X:mult,C:white}X#3#{C:inactive}倍数)'
                },
                ['unlock'] = {
                    [1] = '牌组中至少有{C:attention}#1#',
                    [2] = '{E:1,C:attention}增强{}卡牌'
                }
            },
            j_bunc_crop_circles = {
                ['name'] = '麦田怪圈',
                ['text'] = {
                    [1] = '基础花色{C:clubs}梅花{}获得{C:mult}+3{}倍数，',
                    [2] = '{C:attention}8点{}获得{C:mult}+2{}倍数，',
                    [3] = '{C:attention}Q点{}、{C:attention}10点{}、{C:attention}9点{}、{C:attention}6点{}获得{C:mult}+1{}倍数'
                }
            },
            j_bunc_crop_circles_exotic = {
                ['name'] = '麦田怪圈',
                ['text'] = {
                    [1] = '基础花色{C:bunc_fleurons}花饰{}获得{C:mult}+4{}倍数，',
                    [2] = '基础花色{C:clubs}梅花{}获得{C:mult}+3{}倍数，',
                    [3] = '{C:attention}8点{}获得{C:mult}+2{}倍数，',
                    [4] = '{C:attention}Q点{}、{C:attention}10点{}、{C:attention}9点{}、{C:attention}6点{}获得{C:mult}+1{}倍数'
                }
            },
            j_bunc_xray = {
                ['name'] = 'X光',
                ['text'] = {
                    [1] = '此小丑牌每抽一张面朝下的牌',
                    [2] = '获得{X:mult,C:white}X#1#{}倍数',
                    [3] = '{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍数)'
                },
                ['unlock'] = {
                    [1] = '完成{E:1,C:attention}X光透视',
                    [2] = '挑战'
                }
            },
            j_bunc_dread = {
                ['name'] = '恐惧',
                ['text'] = {
                    [1] = '打出你{C:attention}最后一手牌后，',
                    [2] = '将其升级{C:attention}#1#级{}',
                    [3] = '并{C:attention}销毁{}已得分的卡牌',
                    [4] = '{C:inactive,s:0.8}此小丑牌获得的所有等级',
                    [5] = '{C:inactive,s:0.8}在移除时丢失'
                },
                ['unlock'] = {
                    [1] = '在一轮中',
                    [2] = '将你的牌组减少至少{E:1,C:attention}#1#{}张卡牌'
                }
            },
            j_bunc_prehistoric = {
                ['name'] = '史前小丑牌',
                ['text'] = {
                    [1] = '打出的与本轮已得分卡牌',
                    [2] = '具有相同{C:attention}牌级和花色{}的卡牌',
                    [3] = '获得{C:mult}+#1#{}倍数'
                },
                ['unlock'] = {
                    [1] = '打出一手',
                    [2] = '{E:1,C:attention}同花顺五'
                }
            },
            j_bunc_linocut = {
                ['name'] = '木刻小丑牌',
                ['text'] = {
                    [1] = '当你打出恰好{C:attention}2{}张牌',
                    [2] = '形成一个{C:attention}对子{}时，',
                    [3] = '将{C:attention}左边{}卡牌的花色',
                    [4] = '转换为{C:attention}右边{}卡牌的花色',
                    [5] = '{C:inactive}(拖动以重新排列)'
                    -- TODO 这个小丑牌的描述有点冗长
                }
            },
            j_bunc_ghost_print = {
                ['name'] = '幽灵印记',
                ['text'] = {
                    [1] = '获得上一手牌型的筹码和倍数',
                    [2] = '{C:inactive}(上一手扑克牌型: #1#)'
                }
            },
            j_bunc_loan_shark = {
                ['name'] = '放债人',
                ['text'] = {
                    [1] = '获得{C:money}$#1#',
                    [2] = '当获得此牌时...'
                },
                ['unlock'] = {
                    [1] = '在一轮中',
                    [2] = '至少花费{E:1,C:attention}$100'
                }
            },
            j_bunc_loan_shark_full = {
                ['name'] = '放债人',
                ['text'] = {
                    [1] = '获得{C:money}$#1#{}当获得此牌时，',
                    [2] = '将出售价格设为{C:money}$-100'
                }
            },
            j_bunc_basement = {
                ['name'] = '地下室小丑牌',
                ['text'] = {
                    [1] = '当{C:attention}首领盲注{}被击败时，',
                    [2] = '创建一个{C:spectral}灵能{}卡牌',
                    [3] = '{C:inactive}(必须有空间)'
                }
            },
            j_bunc_shepherd = {
                ['name'] = '牧羊人小丑牌',
                ['text'] = {
                    [1] = '当打出的手牌',
                    [2] = '包含一个{C:attention}对子时，获得{C:chips}+#1#{}筹码',
                    [3] = '{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)'
                }
            },
            j_bunc_knight = {
                ['name'] = '小丑骑士',
                ['text'] = {
                    [1] = '当{C:attention}盲注{}被选中时，{C:attention}洗牌所有小丑牌',
                    [2] = '并且此小丑牌获得{C:mult}+#1#{}倍数，',
                    [3] = '{C:red}重置{}当任何小丑牌被重新排列时',
                    [4] = '{C:inactive}(当前{C:mult}+#2#{C:inactive}倍数)'
                },
                ['unlock'] = {
                    [1] = '击败{E:1,C:attention}琥珀橡果',
                    [2] = '不禁用它'
                }
            },
            j_bunc_jmjb = {
                ['name'] = '小丑人与小丑男孩交易卡54号',
                ['text'] = {
                    [1] = '{C:attention}标准卡包{}仅包含',
                    [2] = '{C:attention}增强卡牌{}'
                },
                ['unlock'] = {
                    [1] = '打开{E:1,C:attention}#1#',
                    [2] = '卡包',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_dogs_playing_poker = {
                ['name'] = '狗狗玩扑克',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，如果每一个得分的',
                    [2] = '牌级是{C:attention}2{}、{C:attention}3{}、{C:attention}4{}或{C:attention}5'
                }
            },
            j_bunc_righthook = {
                ['name'] = '右勾拳小丑牌',
                ['text'] = {
                    [1] = '每剩下一手{C:blue}牌，重新触发最右边已得分的卡牌一次',
                    [2] = ''
                },
                ['unlock'] = {
                    [1] = '至少重新触发打出的卡牌',
                    [2] = '{E:1,C:attention}#1#次{}'
                }
            },
            j_bunc_fiendish = {
                ['name'] = '恶魔小丑牌',
                ['text'] = {
                    [1] = '所有金钱来源翻倍，',
                    [2] = '{C:green}#1# / #2#{}的概率支付',
                    [3] = '{C:money}$1{}代替'
                },
                ['unlock'] = {
                    [1] = '完成{E:1,C:attention}双倍或一无所有',
                    [2] = '挑战'
                }
            },
            j_bunc_carnival = {
                ['name'] = '狂欢节',
                ['text'] = {
                    [1] = '击败{C:attention}首领盲注{}后，',
                    [2] = '{C:attention}销毁{}一张随机小丑牌以',
                    [3] = '回到上一个底注，下次',
                    [4] = '仅在更高的底注时生效'
                },
                ['unlock'] = {
                    [1] = '达到底注',
                    [2] = '等级{E:1,C:attention}0'
                }
            },
            j_bunc_sledgehammer = {
                ['name'] = '大锤',
                ['text'] = {
                    [1] = '{C:attention}玻璃卡牌{}获得+{X:mult,C:white}X#1#{}倍数',
                    [2] = '但保证会破碎'
                },
                ['unlock'] = {
                    [1] = '打出一手仅包含',
                    [2] = '{C:attention,E:1}玻璃{}卡牌的5张手牌'
                }
            },
            j_bunc_doorhanger = {
                ['name'] = '门挂小丑牌',
                ['text'] = {
                    [1] = '{C:blue}普通{}小丑牌不会出现',
                    [2] = '{s:0.8}不同稀有度的卡牌会出现'
                },
                ['unlock'] = {
                    [1] = '在一局游戏中获胜',
                    [2] = '从未拥有过',
                    [3] = '{C:attention,E:1}普通{}小丑牌'
                }
            },
            j_bunc_fingerprints = {
                ['name'] = '指纹',
                ['text'] = {
                    [1] = '得分的卡牌',
                    [2] = '在{C:attention}获胜手牌中',
                    [3] = '直到下一轮结束获得{C:chips}+#1#{}筹码'
                }
            },
            j_bunc_zero_shapiro = {
                ['name'] = '零·夏皮罗',
                ['text'] = {
                    [1] = '得分的{C:attention}K点{}、{C:attention}Q点{}、{C:attention}J点{}、',
                    [2] = '或{C:attention}无等级卡牌',
                    [3] = '{C:green}#1# / #2#{}的概率',
                    [4] = '创建一个{C:attention}D6标签'
                }
            },
            j_bunc_nil_bill = {
                ['name'] = '零·比尔',
                ['text'] = {
                    [1] = '当一张扑克牌被销毁时，获得{C:money}$#1#{}'
                }
            },
            j_bunc_bierdeckel = {
                ['name'] = '比尔代克尔',
                ['text'] = {
                    [1] = '打出或弃牌后，手中的卡牌',
                    [2] = '直到回合结束获得{C:chips}+#1#{}筹码'
                }
            },
            j_bunc_registration_plate = {
                ['name'] = '车牌',
                ['text'] = {
                    [1] = '#1#',
                    [2] = '拥有本局游戏中所有打出的',
                    [3] = '{C:attention}扑克牌型{}的筹码和倍数',
                    [4] = '{s:0.8}组合每轮变化'
                },
                ['unlock'] = {
                    [1] = '完成{E:1,C:attention}15分钟城市',
                    [2] = '挑战'
                }
            },
            j_bunc_slothful = {
                ['name'] = '懒惰小丑牌',
                ['text'] = {
                    [1] = '打出的{C:attention}万能卡牌',
                    [2] = '得分时获得{C:mult}+#1#{}倍数'
                },
                ['unlock'] = {
                    [1] = '打出一手仅包含',
                    [2] = '{C:attention,E:1}万能{}卡牌的5张手牌'
                }
            },
            j_bunc_neon = {
                ['name'] = '霓虹灯小丑牌',
                ['text'] = {
                    [1] = '扑克牌在{C:attention}增强时获得',
                    [2] = '{C:dark_edition}荧光{}版本'
                },
                ['unlock'] = {
                    [1] = '打出一手仅包含',
                    [2] = '{C:attention,E:1}减益{}卡牌的5张手牌'
                }
            },
            j_bunc_gameplan = {
                ['name'] = '游戏计划',
                ['text'] = {
                    [1] = '此小丑牌旁边的{C:attention}小丑牌',
                    [2] = '{C:red}减益{}并',
                    [3] = '获得{C:mult}+#1#{}倍数'
                },
                ['unlock'] = {
                    [1] = '击败{E:1,C:attention}翠绿之叶',
                    [2] = '不禁用它'
                }
            },
            j_bunc_conquest = {
                ['name'] = '征服',
                ['text'] = {
                    [1] = '{C:chips}+#1#{}筹码，',
                    [2] = '{C:red}减益{}一张随机小丑牌',
                    [3] = '当{C:attention}盲注{}被选中时'
                },
                ['unlock'] = {
                    [1] = '击败{E:1,C:attention}深红之心',
                    [2] = '不禁用它'
                }
            },
            j_bunc_hierarchy_of_needs = {
                ['name'] = '需求层次',
                ['text'] = {
                    [1] = '{C:mult}+#1#{}倍数，每有一组',
                    [2] = '相同花色的2到A的连续牌组',
                    [3] = '在你的{C:attention}完整牌组中',
                    [4] = '{C:inactive}(当前{C:mult}+#2#{C:inactive}倍数)'
                }
            },
            j_bunc_dwarven = {
                ['name'] = '矮人小丑牌',
                ['text'] = {
                    [1] = '手中的{C:attention}石头卡牌',
                    [2] = '具有',
                    [3] = '{C:attention}钢铁{}和{C:attention}黄金卡牌的能力'
                },
                ['unlock'] = {
                    [1] = '打出一手包含',
                    [2] = '{E:1,C:attention}石头{}、{E:1,C:attention}钢铁,',
                    [3] = '和{E:1,C:attention}黄金{}卡牌的手牌'
                }
            },
            j_bunc_aristocrat = {
                ['name'] = '贵族',
                ['text'] = {
                    [1] = '从{C:attention}卡包{}中额外选择一张卡牌'
                },
                ['unlock'] = {
                    [1] = '在一局游戏中获胜',
                    [2] = '从未打开过',
                    [3] = '{C:attention,E:1}卡包'
                }
            },
            j_bunc_metallurgist = {
                ['name'] = '冶金学家',
                ['text'] = {
                    [1] = '手中的{C:attention}黄金卡牌',
                    [2] = '获得{C:mult}+#1#{}倍数'
                }
            },
            j_bunc_juggalo = {
                ['name'] = '丑角',
                ['text'] = {
                    [1] = '当{C:attention}盲注{}被选中时，为一张随机',
                    [2] = '{C:attention}消耗品添加',
                    [3] = '{C:dark_edition}箔片{}、{C:dark_edition}全息{}、',
                    [4] = '{C:dark_edition}多色{}或{C:dark_edition}闪光{}版本'
                },
                ['unlock'] = {
                    [1] = '使用{C:attention,E:1}#1#{}个具有',
                    [2] = '{C:attention,E:1}版本的消耗品',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_head_in_the_clouds = {
                ['name'] = '心不在焉',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率升级',
                    [2] = '{C:attention}高牌{}当你',
                    [3] = '升级任何{C:attention}扑克牌型时'
                },
                ['unlock'] = {
                    [1] = '在一局游戏中获胜，',
                    [2] = '{C:attention,E:1}高牌{}是',
                    [3] = '等级最高的扑克牌型'
                }
            },
            j_bunc_headshot = {
                ['name'] = '爆头',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，如果打出的手牌',
                    [2] = '仅包含一张',
                    [3] = '得分的{C:attention}花牌{}'
                }
            },
            j_bunc_trigger_finger = {
                ['name'] = '扳机手指',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，',
                    [2] = '{C:attention}选择{}一张卡牌有',
                    [3] = '{C:green}#2# / #3#{}的概率',
                    [4] = '打出所选卡牌'
                },
                ['unlock'] = {
                    [1] = '击败{E:1,C:attention}天蓝色铃铛',
                    [2] = '不禁用它'
                }
            },
            j_bunc_hopscotch = {
                ['name'] = '跳房子',
                ['text'] = {
                    [1] = '如果打出的手牌',
                    [2] = '包含一个{C:attention}顺子，则获得{C:red}+#1#{}弃牌机会',
                    [3] = ''
                }
            },
            j_bunc_pawn = {
                ['name'] = '卒',
                ['text'] = {
                    [1] = '你完整牌组中{C:attention}最低等级的卡牌',
                    [2] = '得分时{C:attention}等级提升{}',
                    [3] = '{C:inactive}(当前最低等级: #1#)'
                    -- TODO "得分时"仅在卡牌等级在得分时改变时准确
                }
            },
            j_bunc_puzzle_board = {
                ['name'] = '拼图板',
                ['text'] = {
                    [1] = '当使用{C:tarot}塔罗牌{}时，',
                    [2] = '{C:green}#1# / #2#{}的概率为',
                    [3] = '一张随机所选的扑克牌添加',
                    [4] = '{C:dark_edition}箔片{}、{C:dark_edition}全息{}、',
                    [5] = '{C:dark_edition}多色{}或{C:dark_edition}闪光{}版本'
                }
            },
            j_bunc_vandalism = {
                ['name'] = '破坏',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率使卡牌面朝下抽取',
                    [2] = '面朝下的卡牌得分时获得',
                    [3] = '{X:mult,C:white}X#3#{}倍数'
                },
                ['unlock'] = {
                    [1] = '打出一手仅包含',
                    [2] = '{C:attention,E:1}翻面{}卡牌的5张手牌'
                }
            },
            j_bunc_protester = {
                ['name'] = '抗议者',
                ['text'] = {
                    [1] = '添加{C:attention}#1#X{}本轮弃牌的最高等级',
                    [2] = '到筹码中',
                    [3] = '{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)'
                }
            },
            j_bunc_doodle = {
                ['name'] = '涂鸦',
                ['text'] = {
                    [1] = '{C:attention}复制{}本轮使用的第一张{C:tarot}塔罗牌{}或{C:planet}行星牌{}',
                    [2] = '{C:inactive}(必须有空间)'
                },
                ['unlock'] = {
                    [1] = '赢得{C:attention,E:1}#1#{}局游戏',
                    [2] = '{C:inactive}(#2#)'
                }
            },
            j_bunc_disproportionality = {
                ['name'] = '不成比例',
                ['text'] = {
                    [1] = ''
                }
            },
            j_bunc_running_joke = {
                ['name'] = '连续笑话',
                ['text'] = {
                    [1] = '在每个商店开始时创建一个{C:dark_edition}负面',
                    [2] = '"{C:attention}小丑牌{}"'
                }
            },
            j_bunc_on_broadway = {
                ['name'] = '百老汇',
                ['text'] = {
                    [1] = '{C:chips}+#1#{}筹码和{C:mult}+#2#{}倍数，如果',
                    [2] = '打出的手牌包含一个{C:attention}顺子，且有一张得分的{C:attention}花牌'
                }
            },
            j_bunc_rasta = {
                ['name'] = '拉斯塔',
                ['text'] = {
                    [1] = '{C:mult}+#1#{}倍数，如果没有',
                    [2] = '{C:attention}增强卡牌{}得分'
                },
                ['unlock'] = {
                    [1] = '在一局游戏中获胜，从未拥有过',
                    [2] = '{C:attention,E:1}增强卡牌'
                }
            },
            j_bunc_critic = {
                ['name'] = '评论家',
                ['text'] = {
                    [1] = "{X:mult,C:white}X#1#{}倍数，如果打出的手牌的",
                    [2] = '当前得分是',
                    [3] = '{C:attention}小于盲注所需得分的1/#2#{}'
                }
            },
            j_bunc_cellphone = {
                ['name'] = '手机',
                ['text'] = {
                    [1] = '{C:attention}将得分的卡牌返回手中',
                    [2] = '在本轮第一次出牌后，如果没有使用弃牌'
                }
            },
            j_bunc_wino = {
                ['name'] = '酒鬼',
                ['text'] = {
                    [1] = '打出的具有',
                    [2] = '{C:hearts}红桃{}和{C:diamonds}方块{}花色的卡牌',
                    [3] = '得分时获得{C:chips}+#1#{}筹码'
                }
            },
            j_bunc_bounty_hunter = {
                ['name'] = '赏金猎人',
                ['text'] = {
                    [1] = '所有金钱来源减少{C:money}1${}，并且此小丑牌',
                    [2] = '每次你获得金钱时获得{C:mult}+#1#{}倍数',
                    [3] = '{C:inactive}(当前{C:mult}+#2#{C:inactive}倍数)'
                },
                ['unlock'] = {
                    [1] = '在一局游戏中拥有少于{E:1,C:attention}$#1#',
                    [2] = ''
                }
            },
            j_bunc_mousetrap = {
                ['name'] = '捕鼠器',
                ['text'] = {
                    [1] = '{C:chips}+#1#{}筹码，',
                    [2] = '{C:green}#2# / #3#{}的概率',
                    [3] = '{C:attention}失去{}一手牌'
                }
            },
            j_bunc_the_joker = {
                ['name'] = '小丑',
                ['text'] = {
                    [1] = '出牌后，每张未增强的得分卡牌',
                    [2] = '{C:green}#1# / #2#{}的概率被销毁',
                    [3] = ''
                },
                ['unlock'] = {
                    [1] = '发现每一个',
                    [2] = '{C:attention}首领盲注'
                }
            },
            j_bunc_tangram = {
                ['name'] = '七巧板',
                ['text'] = {
                    [1] = '当一张{C:attention}7点{}得分时，',
                    [2] = '{C:mult}+#1#{}倍数乘以',
                    [3] = '得分的{C:attention}7点{}的数量'
                }
            },
            j_bunc_domino = {
                ['name'] = '多米诺',
                ['text'] = {
                    [1] = '当{C:attention}获得{}或{C:attention}使用',
                    [2] = '商店或卡包中的一张卡牌时，若可能，获得{C:attention}2张相邻的卡牌'
                }
            },
            j_bunc_glue_gun = {
                ['name'] = '胶枪',
                ['text'] = {
                    [1] = '出售此卡牌以',
                    [2] = '{C:attention}将最多#1#张',
                    [3] = '所选扑克牌链接在一起'
                }
            },
            j_bunc_taped = {
                ['name'] = '胶带小丑牌',
                ['text'] = {
                    [1] = '{C:attention}将所有',
                    [2] = '在{C:attention}首领盲注{}时第一手得分的卡牌链接在一起'
                }
            },
            j_bunc_rubber_band_ball = {
                ['name'] = '橡皮筋球',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，每创建一个',
                    [2] = '{C:attention}链接{}，本局游戏中',
                    [3] = '{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍数)'
                }
            },
            j_bunc_headache = {
                ['name'] = '头痛',
                ['text'] = {
                    [1] = '每销毁{C:attention}#1#{}张扑克牌，创建一个{C:bunco_virtual_dark}街机标签',
                    [2] = '{C:inactive}({C:attention}#2#{C:inactive}/#1#张扑克牌已销毁)'
                }
            },
            j_bunc_games_collector = {
                ['name'] = '游戏收藏家',
                ['text'] = {
                    [1] = '当一个链接组',
                    [2] = '{C:attention}被抽到手中时，获得{C:chips}+#1#{}筹码',
                    [3] = '{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)'
                }
            },
            j_bunc_jumper = {
                ['name'] = '跳跃者',
                ['text'] = {
                    [1] = '如果打出的手牌',
                    [2] = '包含一个{C:attention}同花顺，则获得{C:chips}+#1#{}筹码',
                    [3] = '{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)'
                }
            },
            j_bunc_stylophone = {
                ['name'] = '电针琴',
                ['text'] = {
                    [1] = '卡牌得分时获得{C:attention}X#1#{}倍数',
                    [2] = '的{C:attention}牌级{}',
                    [3] = ''
                }
            },
            j_bunc_kite_experiment = {
                ['name'] = '风筝实验',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率{C:attention}重新得分',
                    [2] = '重新得分的{C:attention}铜卡',
                    [3] = '额外得分一次'
                }
            },
            j_bunc_robot = {
                ['name'] = '机器人',
                ['text'] = {
                    [1] = '此小丑牌每有一张{C:attention}铜卡',
                    [2] = '重新得分，获得{C:mult}+#1#{}倍数',
                    [3] = '{C:inactive}(当前{C:mult}+#2#{C:inactive}倍数)'
                }
            },
            j_bunc_hardtack = {
                ['name'] = '硬饼干',
                ['text'] = {
                    [1] = '{C:attention}饼干卡{}不再',
                    [2] = '在弃牌时被销毁'
                }
            },
            j_bunc_pica = {
                ['name'] = '异食癖小丑牌',
                ['text'] = {
                    [1] = '当一张{C:attention}饼干卡{}被弃牌时，打出所有弃牌'
                }
            },

            -- 特殊小丑牌

            j_bunc_zealous = {
                ['name'] = '狂热小丑牌',
                ['text'] = {
                    [1] = '{C:mult}+#1#{}倍数，如果打出的手牌',
                    [2] = '包含一个',
                    [3] = '{C:attention}光谱'
                }
            },
            j_bunc_lurid = {
                ['name'] = '艳丽小丑牌',
                ['text'] = {
                    [1] = '{C:chips}+#1#{}筹码，如果打出的手牌',
                    [2] = '包含一个',
                    [3] = '{C:attention}光谱'
                }
            },
            j_bunc_envious = {
                ['name'] = '嫉妒小丑牌',
                ['text'] = {
                    [1] = '打出的具有',
                    [2] = '{C:bunc_fleurons}花饰{}花色的卡牌，得分时获得{C:mult}+#1#{}倍数'
                }
            },
            j_bunc_proud = {
                ['name'] = '骄傲小丑牌',
                ['text'] = {
                    [1] = '打出的具有',
                    [2] = '{C:bunc_halberds}戟{}花色的卡牌，得分时获得{C:mult}+#1#{}倍数'
                }
            },
            j_bunc_wishalloy = {
                ['name'] = '许愿合金',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率使打出的',
                    [2] = '{C:bunc_fleurons}花饰{}卡牌获得',
                    [3] = '等同于卡牌得分筹码的{C:money}${}'
                }
            },
            j_bunc_unobtanium = {
                ['name'] = '幻石',
                ['text'] = {
                    [1] = '打出的具有',
                    [2] = '{C:bunc_halberds}戟{}花色的卡牌，得分时获得',
                    [3] = '{C:chips}+#1#{}筹码和{C:mult}+#2#{}倍数'
                }
            },
            j_bunc_dynasty = {
                ['name'] = '王朝',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，如果打出的手牌',
                    [2] = '包含一个',
                    [3] = '{C:attention}光谱'
                }
            },
            j_bunc_magic_wand = {
                ['name'] = '魔杖',
                ['text'] = {
                    [1] = '此小丑牌每连续打出一手',
                    [2] = '包含{C:attention}光谱{}的手牌，获得{C:mult}+#1#{}倍数',
                    [3] = '{C:inactive}(当前{C:mult}+#2#{C:inactive}倍数)'
                }
            },
            j_bunc_starfruit = {
                ['name'] = '杨桃',
                ['text'] = {
                    [1] = '如果打出的扑克牌型包含一个{C:attention}光谱，则升级该牌型',
                    [2] = '{C:green}#1# / #2#{}的概率此卡牌在回合结束时被销毁'
                }
            },
            j_bunc_fondue = {
                ['name'] = '火锅',
                ['text'] = {
                    [1] = '回合第一手牌中的得分卡牌',
                    [2] = '转换为{C:bunc_fleurons}花饰'
                }
            },
            j_bunc_myopia = {
                ['name'] = '近视',
                ['text'] = {
                    [1] = '{C:spades}黑桃{}和{C:clubs}梅花{}',
                    [2] = '视为{C:bunc_halberds}戟'
                }
            },
            j_bunc_astigmatism = {
                ['name'] = '散光',
                ['text'] = {
                    [1] = '{C:hearts}红桃{}和{C:diamonds}方块{}',
                    [2] = '视为{C:bunc_fleurons}花饰'
                }
            },
            j_bunc_roygbiv = {
                ['name'] = '彩虹',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率为所有得分卡牌添加',
                    [2] = '{C:dark_edition}多色{}版本，如果手牌包含一个',
                    [3] = '{C:attention}光谱'
                }
            },
            j_bunc_rigoletto = {
                ['name'] = '弄臣',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，每有一张',
                    [2] = '{C:bunco_exotic}特殊卡牌{}在你的',
                    [3] = '{C:attention}完整牌组中，{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍数)'
                },
                ['unlock'] = {
                    [1] = '{E:1,s:1.3}?????'
                }
            },
        },
        Blind = {
            bl_bunc_paling = {
                ['name'] = '栅栏',
                ['text'] = {
                    [1] = '每弃一张牌，损失$1',
                    [2] = ''
                }
            },
            bl_bunc_umbrella = {
                ['name'] = '雨伞',
                ['text'] = {
                    [1] = '出牌后，将手中所有卡牌翻面朝下',
                    [2] = ''
                }
            },
            bl_bunc_tine = {
                ['name'] = '尖齿',
                ['text'] = {
                    [1] = '每张#1#被减益'
                }
            },
            bl_bunc_swing = {
                ['name'] = '秋千',
                ['text'] = {
                    [1] = '出牌或弃牌后，将所有卡牌翻面',
                    [2] = ''
                }
            },
            bl_bunc_miser = {
                ['name'] = '守财奴',
                ['text'] = {
                    [1] = '击败此盲注后，跳过商店',
                    [2] = ''
                }
            },
            bl_bunc_gate = {
                ['name'] = '大门',
                ['text'] = {
                    [1] = '卡牌不能',
                    [2] = '被取消选择'
                }
            },
            bl_bunc_flame = {
                ['name'] = '火焰',
                ['text'] = {
                    [1] = '所有增强卡牌',
                    [2] = '被减益'
                }
            },
            bl_bunc_mask = {
                ['name'] = '面具',
                ['text'] = {
                    [1] = '#1#具有#2#的基础',
                    [2] = '筹码和倍数'
                }
            },
            bl_bunc_bulwark = {
                ['name'] = '壁垒',
                ['text'] = {
                    [1] = '打出一张#1#，弃掉手中所有卡牌',
                    [2] = ''
                }
            },
            bl_bunc_knoll = {
                ['name'] = '小山丘',
                ['text'] = {
                    [1] = '拥有超过$5',
                    [2] = '减益第一手抽到的牌'
                }
            },
            bl_bunc_stone = {
                ['name'] = '石头',
                ['text'] = {
                    [1] = '每持有$10，基础得分+1X',
                    [2] = ''
                }
            },
            bl_bunc_sand = {
                ['name'] = '沙子',
                ['text'] = {
                    [1] = '每持有一个标签，基础得分+1X',
                    [2] = ''
                }
            },
            bl_bunc_blade = {
                ['name'] = '刀刃',
                ['text'] = {
                    [1] = '第一次得分超过#1#时，打出的手牌得分为0',
                    [2] = ''
                }
            },
            bl_bunc_claw = {
                ['name'] = '爪子',
                ['text'] = {
                    [1] = '弃掉的卡牌',
                    [2] = '回到牌组'
                }
            },
            bl_bunc_veil = {
                ['name'] = '面纱',
                ['text'] = {
                    [1] = '所选卡牌被翻面朝下',
                    [2] = ''
                }
            },
            bl_bunc_cadaver = {
                ['name'] = '尸体',
                ['text'] = {
                    [1] = '手牌必须包含',
                    [2] = '一张花牌'
                }
            },
            bl_bunc_wind = {
                ['name'] = '风',
                ['text'] = {
                    [1] = '最左边的小丑牌',
                    [2] = '被减益'
                }
            },
            bl_bunc_prince = {
                ['name'] = '王子',
                ['text'] = {
                    [1] = '所有小丑牌被减益，直到第一手出牌',
                    [2] = ''
                }
            },
            bl_bunc_depths = {
                ['name'] = '深渊',
                ['text'] = {
                    [1] = '出牌后，获得永恒、易腐或散射标签',
                    [2] = ''
                }
            },
            bl_bunc_chasm = {
                ['name'] = '裂隙',
                ['text'] = {
                    [1] = '出牌后，获得受阻、反应性或租赁标签',
                    [2] = ''
                }
            },

            -- 最终盲注

            bl_bunc_final_crown = {
                ['name'] = '黄绿色皇冠',
                ['text'] = {
                    [1] = '所有黑桃、红桃、梅花和方块',
                    [2] = '基础花色的卡牌被减益'
                }
            },
            bl_bunc_final_trident = {
                ['name'] = '朱红色三叉戟',
                ['text'] = {
                    [1] = '每在本轮底注中进行一次购买，基础得分+1X',
                    [2] = ''
                }
            },
            bl_bunc_final_tower = {
                ['name'] = '靛蓝色塔楼',
                ['text'] = {
                    [1] = '本轮底注中未出过的卡牌',
                    [2] = '被减益'
                }
            },
            bl_bunc_final_dagger = {
                ['name'] = '洋红色匕首',
                ['text'] = {
                    [1] = '弃牌即出牌，',
                    [2] = '并减去得分值'
                }
            },
            bl_bunc_final_shield = {
                ['name'] = '青绿色盾牌',
                ['text'] = {
                    [1] = '本轮底注的超额得分添加到',
                    [2] = '此盲注的所需得分中'
                }
            }
        },
        Back = {
            b_bunc_fairy = {
                ['name'] = '仙女牌组',
                ['text'] = {
                    [1] = '每次击败一个',
                    [2] = '{C:attention}首领盲注{}后，添加#1#',
                    [3] = '张随机{C:bunco_exotic,T:bunc_exotic_cards}#2#',
                    [4] = '到你的牌组中'
                },
                ['unlock'] = {
                    [1] = '在一手牌中打出{E:1,C:attention}5种不同花色的牌',
                    [2] = ''
                }
            },
            b_bunc_digital = {
                ['name'] = '数字牌组',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}多连方块{}卡牌可能',
                    [2] = '出现在商店中，',
                    [3] = '起始拥有{C:bunco_virtual_dark,T:c_bunc_the_i}直线型{}'
                }
            }
        },
        Tag = {

            -- 重制的标签

            tag_bunc_boss = {
                ['name'] = '首领标签',
                ['text'] = {
                    [1] = '获得一个免费的',
                    [2] = '{C:attention}盲注卡包'
                }
            },
            tag_bunc_double = {
                ['name'] = '双倍标签',
                ['text'] = {
                    [1] = '获得下一个所选{C:attention}标签{}的一份副本',
                    [2] = '{s:0.6,C:attention}双倍和三倍标签{s:0.8}除外'
                }
            },
            tag_bunc_d_six = {
                ['name'] = 'D6标签',
                ['text'] = {
                    [1] = '为下一个商店添加一个免费的{C:green}重抽机会',
                    [2] = ''
                }
            },

            -- 主要标签

            tag_bunc_breaking = {
                ['name'] = '破坏标签',
                ['text'] = {
                    [1] = '禁用',
                    [2] = '{C:attention}首领盲注{}'
                }
            },
            tag_bunc_arcade = {
                ['name'] = '街机标签',
                ['text'] = {
                    [1] = '获得一个免费的',
                    [2] = '{C:bunco_virtual_dark}超级虚拟卡包'
                }
            },
            tag_bunc_triple = {
                ['name'] = '三倍标签',
                ['text'] = {
                    [1] = '获得下一个所选{C:attention}标签{}的两份副本',
                    [2] = '{s:0.8,C:attention}三倍标签{s:0.8}除外'
                }
            },
            tag_bunc_shopping = {
                ['name'] = '购物标签',
                ['text'] = {
                    [1] = '获得{C:attention}1{}次免费',
                    [2] = '商店{C:green}重抽机会'
                }
            },

            -- 版本标签

            tag_bunc_glitter = {
                ['name'] = '闪光标签',
                ['text'] = {
                    [1] = '下一个基础版本的商店小丑牌免费，并',
                    [2] = '变为{C:dark_edition}闪光'
                }
            },
            tag_bunc_fluorescent = {
                ['name'] = '荧光标签',
                ['text'] = {
                    [1] = '下一个基础版本的商店小丑牌免费，并',
                    [2] = '变为{C:dark_edition}荧光'
                }
            },

            -- 消耗品版本标签

            tag_bunc_chips = {
                ['name'] = '筹码标签',
                ['text'] = {
                    [1] = '下一手牌获得{C:chips}+#1#{}筹码'
                }
            },
            tag_bunc_mult = {
                ['name'] = '倍数标签',
                ['text'] = {
                    [1] = '下一手牌获得{C:mult}+#1#{}倍数',
                }
            },
            tag_bunc_xmult = {
                ['name'] = '巨倍标签',
                ['text'] = {
                    [1] = '{X:mult,C:white}X#1#{}倍数，下一手牌',
                }
            },
            tag_bunc_xchips = {
                ['name'] = '超筹码标签',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{}筹码，下一手牌'
                }
            },

            -- 特殊标签

            tag_bunc_filigree = {
                ['name'] = '花饰标签',
                ['text'] = {
                    [1] = '下一个打开的{C:attention}标准卡包{}',
                    [2] = '仅包含{C:bunco_exotic}特殊卡牌'
                }
            },

            -- 反标签

            tag_bunc_eternal = {
                ['name'] = '永恒标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}永恒{}贴纸'
                }
            },
            tag_bunc_perishable = {
                ['name'] = '易腐标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}易腐{}贴纸'
                }
            },
            tag_bunc_scattering = {
                ['name'] = '散射标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}散射{}贴纸'
                }
            },
            tag_bunc_hindered = {
                ['name'] = '受阻标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}受阻{}贴纸'
                }
            },
            tag_bunc_reactive = {
                ['name'] = '反应性标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}反应性{}贴纸'
                }
            },
            tag_bunc_rental = {
                ['name'] = '租赁标签',
                ['text'] = {
                    [1] = '下一个商店小丑牌',
                    [2] = '将获得{C:attention}租赁{}贴纸'
                }
            }
        },
        Edition = {
            e_bunc_glitter = {
                ['name'] = '闪光',
                ['text'] = {
                    [1] = '{X:chips,C:white}X#1#{}筹码'
                }
            },
            e_bunc_fluorescent = {
                ['name'] = '荧光',
                ['text'] = {
                    [1] = '不能被翻面、减益',
                    [2] = '或强制选择'
                }
            }
        },
        Voucher = {
            v_bunc_lamination = {
                ['name'] = '覆膜',
                ['text'] = {
                    [1] = '卡包中的消耗品可能',
                    [2] = '以{C:dark_edition}版本形式出现'
                }
            },
            v_bunc_supercoating = {
                ['name'] = '超级涂层',
                ['text'] = {
                    [1] = '卡包中的所有消耗品将',
                    [2] = '以{C:dark_edition}版本形式出现'
                },
                ['unlock'] = {
                    [1] = '使用{C:attention,E:1}#1#{}个具有',
                    [2] = '{C:attention,E:1}版本的消耗品',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_hedge_trimmer = {
                ['name'] = '绿篱修剪器',
                ['text'] = {
                    [1] = '每打出一手牌，将盲注得分降低{C:attention}#1#%{}'
                }
            },
            v_bunc_chainsaw = {
                ['name'] = '链锯',
                ['text'] = {
                    [1] = '所有所需得分降低{C:attention}#1#%{}'
                },
                ['unlock'] = {
                    [1] = '使用绿篱修剪器降低盲注得分',
                    [2] = '总共{C:attention,E:1}#1#{}次',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_cups_n_balls = {
                ['name'] = '杯球戏',
                ['text'] = {
                    [1] = '{C:attention}+1{}个卡包',
                    [2] = '槽位在商店中可用'
                }
            },
            v_bunc_shell_game = {
                ['name'] = '贝壳游戏',
                ['text'] = {
                    [1] = '重新随机卡包的',
                    [2] = '内容，每个卡包{C:attention}1{}次'
                },
                ['unlock'] = {
                    [1] = '打开{E:1,C:attention}#1#',
                    [2] = '卡包',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_disguise = {
                ['name'] = '伪装',
                ['text'] = {
                    [1] = '{C:attention}盲注卡包{}可能',
                    [2] = '出现在商店中'
                }
            },
            v_bunc_masquerade = {
                ['name'] = '假面舞会',
                ['text'] = {
                    [1] = '商店中的所有{C:attention}盲注卡包{}免费'
                },
                ['unlock'] = {
                    [1] = '用盲注卡包中的盲注替换{E:1,C:attention}#1#{}个盲注',
                    [2] = '',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_fanny_pack = {
                ['name'] = '腰包',
                ['text'] = {
                    [1] = '{C:green}#1# / #2#{}的概率',
                    [2] = '每次跳过一个盲注时获得一个{C:attention}双倍标签',
                    [3] = '',
                    [4] = ''
                }
            },
            v_bunc_pin_collector = {
                ['name'] = '徽章收藏家',
                ['text'] = {
                    [1] = '所有新的{C:attention}双倍标签',
                    [2] = '以{C:attention}三倍标签形式出现'
                },
                ['unlock'] = {
                    [1] = '总共跳过',
                    [2] = '{E:1,C:attention}#1#{}个盲注',
                    [3] = '{C:inactive}(#2#)'
                }
            },
            v_bunc_arcade_machine = {
                ['name'] = '街机游戏机',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}虚拟卡包',
                    [2] = '出现频率增加{C:attention}4X{}'
                }
            },
            v_bunc_polybius = {
                ['name'] = '波利比乌斯',
                ['text'] = {
                    [1] = '{C:bunco_virtual_dark}多连方块{}卡牌允许链接',
                    [2] = '{C:attention}多一张{}卡牌',
                    [3] = '{s:0.6,C:inactive}额外的卡牌可以是任何属性'
                },
                ['unlock'] = {
                    [1] = '总共创建',
                    [2] = '{E:1,C:attention}#1#{}个链接组',
                    [3] = '{C:inactive}(#2#)'
                }
            }
        },
        Enhanced = {
            m_bunc_copper = {
                ['name'] = '铜卡',
                ['text'] = {
                    [1] = '如果与其他已得分的铜卡相邻打出，则重新得分',
                    [2] = '',
                    [3] = ''
                },
            },
            m_bunc_cracker = {
                ['name'] = '饼干卡',
                ['text'] = {
                    [1] = '{C:attention}弃牌时，该卡牌被打出并销毁',
                    [2] = '',
                    [3] = ''
                },
            },
        },
        Stake = {
            stake_bunc_cyan = {
                ['name'] = '青色赌注',
                ['text'] = {
                    [1] = '商店中可能出现{C:attention}散射{}小丑牌',
                    [2] = '{C:inactive,s:0.8}(移除时销毁随机相邻小丑牌)',
                    [3] = '{s:0.8}应用所有之前的赌注'
                }
            },
            stake_bunc_pink = {
                ['name'] = '粉色赌注',
                ['text'] = {
                    [1] = '商店中可能出现{C:attention}受阻{}小丑牌',
                    [2] = '{C:inactive,s:0.8}(出售后停留原位直至回合结束)',
                    [3] = '{s:0.8}应用所有之前的赌注'
                }
            },
            stake_bunc_magenta = {
                ['name'] = '品红色赌注',
                ['text'] = {
                    [1] = '商店中可能出现{C:attention}反应性{}小丑牌',
                    [2] = '{C:inactive,s:0.8}(若此底注未跳过任何盲注，则减益)',
                    [3] = '{s:0.8}应用所有之前的赌注'
                }
            }
        }
    }
}