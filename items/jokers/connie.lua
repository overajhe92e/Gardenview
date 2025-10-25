SMODS.Joker {
    key = "connie",
    rarity = 2,
    cost = 1
}

SMODS.Joker {
    key = "tw_connie",
    rarity = "dw_twisted_uncommon",
    cost = 13,
    config = {
        extra = {
            xmult = 1
        }
    },
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult * (G.jokers and #G.jokers.cards or 0) }}
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return { xchips = card.ability.extra.xmult * (G.jokers and #G.jokers.cards or 0) }
        end
    end
}