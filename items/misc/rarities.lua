SMODS.Rarity {
    key = "twisted_common",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.15,
    badge_colour = HEX('1a1a1a'),
    badge_text_colour = G.C.RARITY.Common,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "twisted_uncommon",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.02,
    badge_colour = HEX('1a1a1a'),
    badge_text_colour = G.C.RARITY.Uncommon,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "twisted_rare",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.003,
    badge_colour = HEX('1a1a1a'),
    badge_text_colour = G.C.RARITY.Rare,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "twisted_legendary",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('1a1a1a'),
    badge_text_colour = G.C.RARITY.Legendary,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "twisted_lethal",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('1d003b'),
    badge_text_colour = G.C.RARITY.Legendary,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}