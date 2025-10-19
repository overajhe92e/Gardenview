SMODS.Rarity {
    key = "twcommon",
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
    key = "twuncommon",
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
    key = "twrare",
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
    key = "twlegendary",
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