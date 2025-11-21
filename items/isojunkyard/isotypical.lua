SMODS.Joker {
    key = 'iso',
    cost = 50,
    rarity = 'dw_omega',
    config = {
        extra = {
            mult = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult }
        }
    end,
    calculate = function(self,card,context)
        if context.setting_blind then
            card.ability.extra.mult = ( card.ability.extra.mult ( card.ability.extra.mult + 1) / 2 ) ^ 1.2
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.mult
            }
        end
    end
}
