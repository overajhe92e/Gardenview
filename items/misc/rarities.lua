local T1 = SMODS.Gradient {
    key = 'tw1',
    colours = { HEX('5380ff'), HEX('001a63') },
    interpolation = 'linear',
    cycle = '5'
}

local T2 = SMODS.Gradient {
    key = 'tw2',
    colours = { HEX('001a63'), HEX('006b05') },
    interpolation = 'linear',
    cycle = '5'
}

local T3 = SMODS.Gradient {
    key = 'tw3',
    colours = { HEX('ff5264'), HEX('662128') },
    interpolation = 'linear',
    cycle = '5'
}

local T4 = SMODS.Gradient {
    key = 'tw4',
    colours = { HEX('9b52ff'), HEX('341c57') },
    interpolation = 'linear',
    cycle = '5'
}

local T5 = SMODS.Gradient {
    key = 'tw5',
    colours = { HEX('9b52ff'), HEX('b47eff') },
    interpolation = 'linear',
    cycle = '5'
}

local oo = SMODS.Gradient {
    key = 'oo',
    colours = { HEX('8c0900'), HEX('000000')}
}

SMODS.Rarity {
    key = "twisted_common",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.15,
    badge_colour = T1,
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
    badge_colour = T2,
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
    badge_colour = T3,
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
    badge_colour = T4,
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
    badge_colour = T5,
    badge_text_colour = G.C.RARITY.Legendary,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "omega",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = oo,
    get_weight = function(self, weight, object_type)
        return weight
    end
}

SMODS.Rarity {
    key = "mythic",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('ffe5a0'),
    get_weight = function(self, weight, object_type)
        return weight
    end
}