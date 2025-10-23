return {
    descriptions = {
        Back = {},
        Blind = {
            bl_dw_TIMES_UP = {
                name = "TIME'S UP",
                text = {
                    "Blind size increases by",
                    "X1.3 every second.",
                    "Disabling Blind will multiply",
                    "current requirement by X12"
                }
            }
        },
        Edition = {},
        Enhanced = {},
        Joker = {
            j_dw_dandy = {
                name = 'Dandicus Dancifier',
                text = {
                    {
                        "Gains {X:red,C:white}X0.25{} Mult for",
                        "every item bought this run",
                        "{C:attention}Resets{} after defeating",
                        "{C:attention}2 Boss Blinds{}",
                        "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult)",
                        "{C:inactive,s:0.8}Going 3 Shops without buying anything will lead to something bad.{}"
                    }
                }
            },
            j_dw_tw_dandy = {
                name = 'Twisted Dandy',
                text = {
                    "Gains {X:red,C:white}X1{} Mult for",
                    "every item bought this run.",
                    "Gains an additional {X:dark_edition,C:white}^0.05{} Mult for",
                    "every {C:money}$1{} you have.",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(Currently{} {X:dark_edition,C:white}^#2#{} {C:inactive}EMult){}"
                }
            },
            j_dw_astro = {
                name = 'Astro Novalite',
                text = {
                    {
                        "{C:inactive}Ripped straight from Isotypical's Junkyard.{}"
                    },
                    {
                        "Adds {C:blue}+#2#{}",
						"{C:blue}Hands{} and {C:red}Discards{}",
						"when {C:attention}Blind{} is selected"
                    },
                    {
                        "Each unique {C:planet}Planet{} used",
                        "gives +1 additional Hands and Discards"
                    }
                }
            },
            j_dw_twistedastro = {
				name = "Twisted Astro",
				text = {
					{
						"Adds {C:blue}X#2#{} of your current",
						"{C:blue}Hands{} and {C:red}Discards{}",
						"when {C:attention}Blind{} is selected",
					},
					{
						"Each unique {C:planet}Planet{} card used",
						"this run increases the multiplier",
						"by {C:attention}+1{}"
					}
				}
			},
            j_dw_dyle = {
                name = "Dyle Timesly",
                text = {
                    "Gains {X:red,C:white}X1{} Mult when",
                    "a {C:attention}Blind{} is selected.",
                    "{C:inactive}Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult{}"
                }
            },
            j_dw_tw_dyle = {
                name = "Twisted Dyle",
                text = {
                    "Gains {X:red,C:white}X2{} Mult when",
                    "a {C:attention}Blind{} is selected",
                    "{X:dark_edition,C:white}^1.1{} {X:red,C:white}XMult{} if a blind",
                    "is defeated in {C:attention}one hand{}",
                    "{C:inactive}Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult{}"
                }
            },
            j_dw_yatta = {
                name = "Yatta",
                text = {
                    "Gives 3 Candy Consumables",
                    "when a {C:attention}Boss Blind{} is defeated.",
                    "{C:blue,s:0.8}#1#{}"
                }
            },
            j_dw_finn = {
                name = "Finn",
                text = {
                    "{C:red}+50{} Mult",
                    "At the end of the round,",
                    "{X:red,C:white}X3{} Mult for {C:blue}1 hand{}",
                    "{C:inactive}#1#{}"
                }
            },
            j_dw_vee = {
                name = "Vee Version One",
                text = {
                    "{C:red}No ability yet!{}",
                    "{C:green,s:0.85,E:1}#1#{}"
                }
            },
            j_dw_shelly = {
                name = "Shelly Fossilian",
                text = {
                    "{X:dark_edition,C:white}^0.95{} Blind requirement",
                    "for every {C:attention}Joker{} you have"
                }
            },
            j_dw_blot = {
                name = "Blot",
                text = {
                    "{X:mult,C:white}^1.15{} Mult.",
                    "Create Blot Jr. when a {C:attention}Boss Blind{} is defeated."
                }
            },
            j_dw_blotjr = {
                name = "Blot Jr.",
                text = {
                    "{X:mult,C:white}X1.25{} Mult.",
                    "Destroyed after {C:attention}#1#{} Rounds."
                }
            },
            j_dw_gigi = {
                name = "Gigi",
                text = {
                    "Creates a random {C:attention}Joker{}",
                    "or {C:tarot}Consumable{} when",
                    "a {C:attentin}Blind{} is {C:attention}skipped{}"
                }
            }
        },
        Other = {},
        Planet = {},
        Spectral = {},
        Stake = {},
        Tag = {},
        Tarot = {},
        Voucher = {},
    },
    misc = {
        achievement_descriptions = {},
        achievement_names = {},
        blind_states = {},
        challenge_names = {},
        collabs = {},
        dictionary = {

            k_dw_yatta_quote1 = "PHEW! Good thing my tail hasn't been TANGLED!",
            k_dw_yatta_quote2= "Did I drop candy ANYWHERE in the elevator?",
            k_dw_yatta_quote3= "AHAHAHAaaa... Thought of something funny!",
            k_dw_yatta_quote4= "Candy candy caNDY, CANDY FOR ALL!!!",

            k_dw_finn_complete1 = "Hook, line and sinker!",
            k_dw_finn_complete2 = "I was born to fish, not to play cards!", -- i claim credit for this quote (fireice)
            k_dw_finn_complete3 = "It's as shrimp-le as that!",
            k_dw_finn_complete4 = "That wasn't very clam-plicated!",

            k_dw_twisted_common = "Twisted Common",
            k_dw_twisted_uncommon = "Twisted Uncommon",
            k_dw_twisted_rare = "Twisted Rare",
            k_dw_twisted_legendary = "Twisted Legendary",
            k_dw_twisted_lethal = "Lethal",

            k_dw_blotyap1 = "Jr. Incoming!",
            k_dw_blotyap2 = "!em inim A",

            k_dw_veespeak1 = "This would be the perfect time for a commercial!",
            k_dw_veespeak2 = "Question 1: Is this a waste of my time? Probably.",
            k_dw_veespeak3 = "As simple as binary code!",
            k_dw_veespeak4 = "I bet Dandy couldn't do this!",

        },
        high_scores = {},
        labels = {
            dw_twisted_common = "Twisted Common",
            dw_twisted_uncommon = "Twisted Uncommon",
            dw_twisted_rare = "Twisted Rare",
            dw_twisted_legendary = "Twisted Legendary",
            dw_twisted_lethal = "Lethal",
        },
        poker_hand_descriptions = {},
        poker_hands = {},
        quips = {},
        ranks = {},
        suits_plural = {},
        suits_singular = {},
        tutorial = {},
        v_dictionary = {},
        v_text = {},
    },
}
