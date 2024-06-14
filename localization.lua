return {
    dictionary = { -- I have no idea how to hook this dictionary to the mod
        ['en-us'] = {
            copied = 'Copied!',
            nothing = 'Nothing',
            chips = 'Chips',
            loop = 'Loop!',
            chance = 'Chance'
        }
    },

    -- Suits

    fleurons = {
        ['en-us'] = {
            singular = 'Fleuron',
            plural = 'Fleurons',
        }
    },
    halberds = {
        ['en-us'] = {
            singular = 'Halberd',
            plural = 'Halberds',
        }
    },

    -- Poker hands

    spectrum = {
        ['en-us'] = {
            name = 'Spectrum',
            description = {
                '5 cards with different suits'
            }
        }
    },
    straight_spectrum = {
        ['en-us'] = {
            name = 'Straight Spectrum',
            description = {
                '5 cards in a row (consecutive ranks) with',
                'each card having a different suit'
            },
            extra = 'Royal Spectrum',
        }
    },
    spectrum_house = {
        ['en-us'] = {
            name = 'Spectrum House',
            description = {
                'A Three of a Kind and a Pair with',
                'each card having a different suit'
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
        }
    },

    -- Consumables

    sky = {
        ['en-us'] = {
            ['name'] = 'The Sky',
            ['text'] = {
                [1] = 'Converts up to',
                [2] = '{C:attention}#1#{} selected cards',
                [3] = 'to {C:fleurons}Fleurons{}',
            }
        }
    },
    abyss = {
        ['en-us'] = {
            ['name'] = 'The Abyss',
            ['text'] = {
                [1] = 'Converts up to',
                [2] = '{C:attention}#1#{} selected cards',
                [3] = 'to {C:halberds}Halberds{}',
            }
        }
    },
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


    -- Jokers

    cassette = {
        ['en-us'] = {
            ['name'] = 'Cassette',
            ['text'] = {
                [1] = 'On discard, flip Joker to the other side',
                [2] = '{C:attention}A side:{} cards with light suit',
                [3] = 'give {C:chips}+#1#{} Chips when scored',
                [4] = '{C:attention}B side:{} cards with dark suit',
                [5] = 'give {C:mult}+#2#{} Mult when scored'
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
            }
        }
    },
    voxel = {
        ['en-us'] = {
            ['name'] = 'Voxel Joker',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult, {X:mult,C:white}-X0.1{} Mult for each',
                [2] = '{C:attention}Enhanced card{} in your full deck',
                [3] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
            }
        }
    },
    crop_circles = {
        ['en-us'] = {
            ['name'] = 'Crop Circles',
            ['text'] = {
                [1] = '{C:fleurons}Fleurons{} give {C:mult}+4{} Mult,',
                [2] = '{C:clubs}Clubs{} give {C:mult}+3{} Mult,',
                [3] = '8 give {C:mult}+2{} Mult,',
                [4] = 'Q, 10, 9, 6 give {C:mult}+1{} Mult'
            }
        }
    },
    xray = {
        ['en-us'] = {
            ['name'] = 'X-Ray',
            ['text'] = {
                [1] = 'Gains {X:mult,C:white}X0.2{} Mult',
                [2] = 'per card drawn face down',
                [3] = '{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)'
            }
        }
    },
    dread = {
        ['en-us'] = {
            ['name'] = 'Dread',
            ['text'] = {
                [1] = 'After scoring your {C:attention}final hand{} of round,',
                [2] = 'upgrade level of scored {C:attention}poker hand{}',
                [3] = 'by {C:attention}2 levels{} and destroy cards from that hand,',
                [4] = 'on Joker loss remove all gained levels'
            }
        }
    },
    prehistoric = {
        ['en-us'] = {
            ['name'] = 'Prehistoric Joker',
            ['text'] = {
                [1] = '{C:mult}+#1#{} Mult for each card',
                [2] = 'of the same rank and suit',
                [3] = 'that was already played',
                [4] = 'during this round'
            }
        }
    },
    linocut = {
        ['en-us'] = {
            ['name'] = 'Linocut Joker',
            ['text'] = {
                [1] = 'When playing a {C:attention}Pair{} of two cards,',
                [2] = 'convert the suit of the {C:attention}left{} card',
                [3] = 'into the suit of the {C:attention}right{} card',
                [4] = '{C:inactive}(Drag to rearrange)'
            }
        }
    },
    ghost_print = {
        ['en-us'] = {
            ['name'] = 'Ghost Print',
            ['text'] = {
                [1] = 'Grants Chips and Mult',
                [2] = 'from last hand type played',
                [3] = '{C:inactive}(Last poker hand: #1#)'
            }
        }
    },
    loan_shark = {
        ['en-us'] = {
            ['name'] = 'Loan Shark',
            ['text'] = {
                [1] = 'Grants {C:money}$50',
                [2] = 'when acquired...'
            }
        }
    },
    basement = {
        ['en-us'] = {
            ['name'] = 'Basement Joker',
            ['text'] = {
                [1] = 'When {C:attention}Boss Blind{} is defeated',
                [2] = 'create a {C:spectral}Spectral{} card'
            }
        }
    },
    shepherd = {
        ['en-us'] = {
            ['name'] = 'Shepherd Joker',
            ['text'] = {
                [1] = 'Gains {C:chips}+6{} Chips',
                [2] = 'when played hand contains a {C:attention}Pair',
                [3] = '{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)'
            }
        }
    },
    knight = {
        ['en-us'] = {
            ['name'] = 'Joker Knight',
            ['text'] = {
                [1] = 'When {C:attention}Blind{} is selected,',
                [2] = 'shuffles all Jokers and gains {C:red}+#1#{} Mult,',
                [3] = 'resets when any Joker is rearranged',
                [4] = '{C:inactive}(Currently {C:red}+#2#{C:inactive} Mult)'
            }
        }
    },
    jmjb = {
        ['en-us'] = {
            ['name'] = 'Joker Man & Jester Boy Trading Card No. 54',
            ['text'] = {
                [1] = '{C:attention}Standard Packs{} will contain',
                [2] = 'only {C:attention}Enhanced Cards{}'
            }
        }
    },
    dogs_playing_poker = {
        ['en-us'] = {
            ['name'] = 'Dogs Playing Poker',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult if all scored',
                [2] = 'cards are {C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5{}'
            }
        }
    },
    righthook = {
        ['en-us'] = {
            ['name'] = 'Righthook Joker',
            ['text'] = {
                [1] = 'Retrigger rightmost played card',
                [2] = 'the same amount of times as',
                [3] = 'your current amount of hands'
            }
        }
    },
    fiendish = {
        ['en-us'] = {
            ['name'] = 'Fiendish Joker',
            ['text'] = {
                [1] = 'Doubles all sources of money,',
                [2] = '{C:green}#1# in #2#{} chance to pay out',
                [3] = 'with {C:money}$1{} instead'
            }
        }
    },
    carnival = {
        ['en-us'] = {
            ['name'] = 'Carnival',
            ['text'] = {
                [1] = 'After beating {C:attention}Boss Blind{},',
                [2] = '{C:attention}destroy{} a random Joker to',
                [3] = 'go one Ante back, next time',
                [4] = 'works only on a greater Ante'
            }
        }
    },
    sledgehammer = {
        ['en-us'] = {
            ['name'] = 'Sledgehammer',
            ['text'] = {
                [1] = '{C:attention}Glass Cards{} give {X:mult,C:white}X#1#{} Mult',
                [2] = 'and guaranteed to break'
            }
        }
    },
    doorhanger = {
        ['en-us'] = {
            ['name'] = 'Doorhanger',
            ['text'] = {
                [1] = 'Disables {C:blue}Common{} Jokers',
                [2] = 'from appearing',
                [3] = '{s:0.8}different rarities appear instead'
            }
        }
    },
    fingerprints = {
        ['en-us'] = {
            ['name'] = 'Fingerprints',
            ['text'] = {
                [1] = 'Cards played on {C:attention}final hand{} of round',
                [2] = 'gain temporary {C:chips}+#1#{} Chips when scored,',
                [3] = 'bonus lasts for one round'
            }
        }
    },
    zero_shapiro = {
        ['en-us'] = {
            ['name'] = 'Zero Shapiro',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:attention}no{} or {C:attention}zero{} rank give',
                [3] = '{C:green}+#1#{} to {C:green,E:1,S:1.1}probabilities{}',
                [4] = 'for current round when scored'
            }
        }
    },
    nil_bill = {
        ['en-us'] = {
            ['name'] = 'Nil Bill',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:attention}debuff{} give',
                [3] = '{C:money}$#1#{} when scored'
            }
        }
    },
    bierdeckel = {
        ['en-us'] = {
            ['name'] = 'Bierdeckel',
            ['text'] = {
                [1] = 'Cards in hand',
                [2] = 'gain temporary {C:chips}+#1#{} Chips',
                [3] = 'after play or discard'
            }
        }
    },
    registration_plate = {
        ['en-us'] = {
            ['name'] = 'Registration Plate',
            ['text'] = {
                [1] = '{X:mult,C:white}X#1#{} Mult when played hand',
                [2] = 'is a combination of',
                [3] = '#2#',
                [4] = '{s:0.8}Combination changes every round'
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
            }
        }
    },
    zealous = {
        ['en-us'] = {
            ['name'] = 'Zealous Joker',
            ['text'] = {
                [1] = '{C:red}+#1#{} Mult if played',
                [2] = 'hand contains',
                [3] = 'a {C:attention}Spectrum'
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
        }
    },
    envious = {
        ['en-us'] = {
            ['name'] = 'Envious Joker',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:fleurons}Fleuron{} suit give',
                [3] = '{C:mult}+#1#{} Mult when scored'
            }
        }
    },
    proud = {
        ['en-us'] = {
            ['name'] = 'Proud Joker',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:halberds}Halberd{} suit give',
                [3] = '{C:mult}+#1#{} Mult when scored'
            }
        }
    },
    wishalloy = {
        ['en-us'] = {
            ['name'] = 'Wishalloy',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance for',
                [2] = 'played {C:fleurons}Fleurons{}',
                [3] = 'to earn money equal',
                [4] = "to card's scored chips"
            }
        }
    },
    unobtanium = {
        ['en-us'] = {
            ['name'] = 'Unobtanium',
            ['text'] = {
                [1] = 'Played cards with',
                [2] = '{C:halberds}Halberd{} suit',
                [3] = 'give {C:chips}+100{} Chips and {C:red}+12{} Mult',
                [4] = "when scored"
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
        }
    },
    magic_wand = {
        ['en-us'] = {
            ['name'] = 'Magic Wand',
            ['text'] = {
                [1] = 'Gains {X:mult,C:white}X#1#{} Mult for each played',
                [2] = 'hand containing a {C:attention}Spectrum{}, resets',
                [3] = 'when a non-Spectrum hand is played',
                [4] = '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)'
            }
        }
    },
    starfruit = {
        ['en-us'] = {
            ['name'] = 'Starfruit',
            ['text'] = {
                [1] = '{C:green}#1# in #2#{} chance to level up',
                [2] = 'played poker hand if it contains a {C:attention}Spectrum',
                [3] = '{C:green}#1# in #3#{} chance to destroy itself',
                [4] = 'at the end of the round if that hand was played'
            }
        }
    },
    fondue = {
        ['en-us'] = {
            ['name'] = 'Fondue',
            ['text'] = {
                [1] = 'Scored cards in the first',
                [2] = 'hand of round are converted',
                [3] = 'to {C:fleurons}Fleurons'
            }
        }
    },
    myopia = {
        ['en-us'] = {
            ['name'] = 'Myopia',
            ['text'] = {
                [1] = '{C:spades}Spades{} and {C:clubs}Clubs{}',
                [2] = 'count as {C:halberds}Halberds'
            }
        }
    },
    astigmatism = {
        ['en-us'] = {
            ['name'] = 'Astigmatism',
            ['text'] = {
                [1] = '{C:hearts}Hearts{} and {C:diamonds}Diamonds{}',
                [2] = 'count as {C:fleurons}Fleurons'
            }
        }
    },
    roygbiv = {
        ['en-us'] = {
            ['name'] = 'Roy G. Biv',
            ['text'] = {
                [1] = ''
            }
        }
    },
    rigoletto = {
        ['en-us'] = {
            ['name'] = 'Rigoletto',
            ['text'] = {
                [1] = 'Each scored card permanently',
                [2] = 'gains {C:red}+#1#{} Mult if played hand',
                [3] = 'contains {C:halberds}Halberds{} or {C:fleurons}Fleurons'
            }
        }
    }
}