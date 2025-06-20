return {
    descriptions = {
        Partner={
            pnr_b1999_slice={
                name = "Orange Slice",
                text = {
                    "Click to destroy a {C:attention}Consumable{}",
                    "to gain {X:mult,C:white}X#2#{} Mult",
                    "resets after hand played",
                    "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
                },
            },
            pnr_b1999_fm={
                name = "Familiar Melody",
                text = {
                    "Current Moxie: {X:default,C:attention}#1#{}",
                    "Gains {X:default,C:attention}#2#{} Moxie when playing a hand",
                    "Click to spend {X:default,C:attention}#4#{} Moxie",
                    "and create {V:1,T:c_b1999_fm1}First Melody 1{}",
                    "Right click to spend {X:default,C:attention}#5#{} Moxie",
                    "and create {V:1,T:c_b1999_fm2}First Melody 2{}"
                },
            },
            pnr_b1999_ws={
                name = "Windsong",
                text = {
                    "{C:mult}+#1#{} Mult for",
                    "{C:spades}Spades{} #2#",
                }
            },
            pnr_b1999_mradio={
                name = "Ms. Radio",
                text = {
                    "Reduce Blind Size",
                    "by {C:attention}#1#%{} when selling a card",
                }
            },
        },
            Joker={
                j_b1999_anjo = {
                    name = 'Anjo Nala',
                    text = {
                "Gains {X:mult,C:white}X#3#{} Mult after triggering",
                "{C:attention}Joker{} to the right 5 times",
                "{C:inactive}(Currently {C:attention}#2#/5{C:inactive}, {X:mult,C:white}X#1#{}{C:inactive} Mult){}",
                }
            },
                j_b1999_pav = {
                    name = 'Pavia',
                    text = {
                "Gains {C:mult}+#2#{} Mult",
                "after selling a {C:attention}Joker{}",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive}){}"
                }
            },
                j_b1999_door = {
                    name = 'Door',
                    text = {
                "{X:mult,C:white}X#1#{} Mult",
                "{C:green}#3# in #2#{} chance to shatter"
                }
            },
                j_b1999_fm = {
                    name = 'First Melody',
                    text = {
                "Create {V:1}First Melody 1{} and",
                "{V:1}First Melody 2{} at the",
                "start of the round",
                }
            },
                j_b1999_orange = {
                    name = 'Green Oranges',
                    text = {
                'When playing a hand:',
                '{C:red}"Eats"{} a {C:attention}consumable{},',
                'transforms on {C:attention}6{} eaten',
                "{C:inactive}(Currently: {C:attention}#1#{C:inactive}){}"
                }
            },
                j_b1999_gun = {
                    name = 'S192-9W',
                    text = {
                "Don't you think this",
                "orange tastes bitter?",
                "{X:mult,C:white}X#1#{} Mult"
                }
            },
                j_b1999_ws = {
                    name = 'Windsong',
                    text = {
                "All {C:spades}Spades {C:attention}held in hand{}",
                "are added to {C:attention}playing hand{},",
                "{C:spades}Spades{} always score"
                }
            },
                j_b1999_lopera = {
                    name = 'Lopera',
                    text = {
                "{C:chips}+#1#{} chips when",
                "{C:attention}Joker{} to the left triggers,",
                "{C:mult}+#2#{} mult when {C:attention}Joker{}",
                "to the right triggers",
                }
            },
                j_b1999_jokernia = {
                    name = 'Escaping Kakania',
                    text = {
                "Gains {C:attention}$9{} of {C:attention}sell value{}",
                "when changing {C:attention}ante{}"
                }
            },
                j_b1999_car = {
                    name = 'Carbuncle',
                    text = {
                "{C:mult}+#1#{} mult",
                "After {C:attention}3 rounds{},",
                "{C:red}snatches a {C:attention}consumable{} if",
                "Carbuncle is the {C:attention}rightmost{}",
                "{C:attention}Joker{} and {C:attention}evolves{}",
                "{C:inactive}(Currently {C:attention}#2#/3{C:inactive})"
                }
            },
                j_b1999_carton = {
                    name = 'Cartoncle',
                    text = {
                "Chooses to {C:attention}select{} either",
                "{C:attention}leftmost{} or {C:attention}rightmost{}",
                "card {C:attention}held in hand{}",
                "when using a {C:attention}consumable{}",
                "{s:0.8,C:inactive}Unreliable partner{}"
                }
            },
                j_b1999_geo = {
                    name = 'Geometry Carbuncle',
                    text = {
                "Eats leftmost consumable",
                "with {C:green}#2# in #1#{} change to upgrade",
                "{C:attention}played hand{}, degrades",
                "{C:attention}played hand{} when",
                "there's no {C:attention}consumables{}",
                "{s:0.8,C:inactive}(Degrade effect isn't probability based){}"
                }
            },
                j_b1999_refine = {
                    name = 'Refined Carbuncle',
                    text = {
                "Gains {X:mult,C:white}X#2#{} Mult when",
                "using a {C:spectral}Spectral Card{}",
                "{s:0.8,C:inactive}So refined, so reliable",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} mult){}"
                }
            },
                j_b1999_loggerhead = {
                    name = 'Loggerhead',
                    text = {
                "Retriggers {C:attention}Joker{}",
                "to the right when not",
                "{C:attention}playing a hand{}",
                }
            },
                j_b1999_tf = {
                    name = 'Tooth Fairy',
                    text = {
                "{C:attention}+1 Tooth{} per hand played",
                "If at {C:attention}3 Teeth{} and playing a",
                "{C:attention}one card hand{}, apply {C:attention}A Tooth{}",
                "{C:inactive}(Currently {C:attention}#1#{C:inactive} #2#){}"
                }
            },
                j_b1999_re = {
                    name = 'Rain Emblem',
                    text = {
                "Copies next {C:attention}Boss Blind{}",
                "Replaces all next Big Blinds",
                "and Boss Blinds with it",
                "{X:mult,C:white}X#1#{} Mult when active"
                }
            },
                j_b1999_mradio = {
                    name = 'Ms. Radio',
		            text = {
			    'Reduces current Blind Size',
			    'by {C:attention}#1#%{} when sold'
	            }
            },
                j_b1999_cyn = {
                    name = 'Catch You Now',
		            text = {
                "{C:attention}Maniac Mode:{}",
			    "If {C:attention}first discard{} of round has only {C:attention}1{} card,",
                "destroy it and and gain {X:mult,C:white}X#4#{} Mult for {C:attention}Changeling{}",
                "{C:attention}Changeling Mode:{}",
                "{X:mult,C:white}X#3#{} Mult"
	            }
            },
                j_b1999_creame = {
                    name = 'Creame',
		            text = {
                "{C:chips}+#1#{} Chips",
                "for every hand played",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive})"
	            }
            },
                j_b1999_kala = {
                    name = 'Kala Vada',
		            text = {
                "After {C:attention}#2# rounds,",
                "sell this card to gain",
                "{C:attention}+#3#{} hand size",
                "{C:inactive}(Currently {C:attention}#1#/#2#{C:inactive})"
	            }
            },
                j_b1999_gross = {
                    name = 'Gross Mike',
		            text = {
                "{C:green}#4# in #3#{} to gain {C:mult}+#2#{} Mult",
                "at the end of round",
                "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)"
	            }
            },
                j_b1999_will = {
                    name = 'Will',
		            text = {
                "{C:green}#4# in #3#{} to gain {X:mult,C:white}X#2#{} Mult",
                "at the end of round",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{} {C:inactive}Mult)"
	            }
            },
                j_b1999_papper = {
                    name = 'Dr Papper',
		            text = {
                "Create a random {C:attention}Tag{}",
                "Every {C:attention}#2#{} rounds",
                "{C:inactive}(Currently {C:attention}#1#{C:inactive})"
            },
        },
    },
            Back={
                b_b1999_td = {
                    name = "Timekeeper's Deck",
                    text = {
                "Start with eternal",
                "{C:attention,T:j_b1999_fm}First Melody{} Joker"
                }
            },
                b_b1999_stormy = {
                    name = "Storm Deck",
                    text = {
                "{X:default,C:attention}Reverses{} your leftmost {C:attention}Joker{}",
                "on {C:attention}Ante Change{}",
                "{C:money}-5${} if can't {X:default,C:attention}Reverse{}"
                }
            },
        },
            Voucher={
                v_b1999_pneuma = {
                    name = 'Pneuma Analysis',
		            text = {
			    "Requirement for the",
			    "current {c:attention}Boss Blind{} is {C:red}doubled{},",
			    "{C:attention}#1#{} ante when starting the {C:attention}Boss Blind{}"
		        }
            },
                v_b1999_limbo = {
                    name = 'Limbo',
		            text = {
			    "Requirement for the",
			    "current {c:attention}Boss Blind{} is {C:red}doubled{},",
			    "changes into a {C:red}Showdown Blind{},",
			    "{C:attention}#1#{} ante when starting the {C:attention}Boss Blind{}"
		        }
            }
        },
        Spectral={
                c_b1999_storm = {
                    name = 'The Storm',
		            text = {
			    "{X:default,C:attention}Reverses{} a selected {C:attention}Joker{}"
		        }
            },
        },
            Other={
                b1999_tooth_seal = {
		            name = 'A Tooth',
		            text = {
			    "{X:mult,C:white}X1.5{} Mult",
                "Considered a seal"
		        }
            },
                cyn = {
		            name = 'Puppet Swap',
		            text = {
			    'If the card is the {C:attention}leftmost{}',
                'at the start of the {C:attention}round{},',
                'enter {C:attention}Maniac{} mode',
                'If the card is the {C:attention}rightmost{}',
                'at the start of the {C:attention}round{},',
                'enter {C:attention}Changeling{} mode'
                }
            },
                deja = {
		            name = 'Artist',
		            text = {
			    '@aetherskye'
                }
            },
                b1999_reverse = {
		            name = 'Reverse',
		            text = {
			    '{C:attention}Reroll{} a {C:attention}Joker{} into',
                'a {C:attention}Joker{} of the same {C:attention}rarity{}',
                "Can't reroll an {C:attention}Eternal Joker{}",
                'Has some {C:attention}Special Interactions{}'
                }
            },
        },
            tune={
                c_b1999_mel1 = {
                    name = 'First Melody 1',
		            text = {
			    'Temporarily {C:attention}ranks up{} a',
			    'chosen {C:attention}card{}',
			    '{C:red}dissolved{} at the',
			    'end of the round'
	            }
            },
                c_b1999_mel2 = {
                    name = 'First Melody 2',
		            text = {
			    'Discards your {C:attention}hand{}',
			    '{C:red}dissolved{} at the',
			    'end of the round'
	            }
            },
        },
    },
                misc = {
                labels = {
                    b1999_tooth_seal = "A Tooth",
                },
                quips={
                    pnr_b1999_slice_1={
                    "No...",
                    },
                    pnr_b1999_slice_2={
                    "Don't do this...",
                    },
                    pnr_b1999_slice_3={
                    "Enough...",
                    },
                    pnr_b1999_slice_4={
                    "Don't be ridiculous...",
                    },
                    pnr_b1999_slice_5={
                    "Why?..",
                    },
                    pnr_b1999_slice_6={
                    "It hurts.",
                    },
                    pnr_b1999_ws_1={
                    "It's a pleasure to work",
                    "with you, {C:attention}Ms. Timekeeper{}.",
                    },
                    pnr_b1999_ws_2={
                    "You're finally here!",
                    "I could use a sponsor like you",
                    },
                    pnr_b1999_ws_3={
                    "No other study could show you this!",
                    },
                    pnr_b1999_mradio_1={
                    "Hello, world."
                    },
                    pnr_b1999_mradio_2={
                    "FM, FM, the latest news for you next..."
                    },
                    pnr_b1999_mradio_3={
                    "Welcome... My good friend.",
                    },
                    pnr_b1999_mradio_4={
                    "I've selected some morning news from 249 regions... ",
                    "Would you like to know which region consumes the most meat every morning?",
                    },
                    pnr_b1999_mradio_5={
                    "Alright! Let's try together.",
                    },
            },
        }
    }
