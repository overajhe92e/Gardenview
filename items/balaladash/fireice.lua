SMODS.Joker {
    key = 'fireice',
    cost = 99,
    rarity = 'dw_mythic',
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
            card.ability.extra.mult = ((((2*card.ability.extra.mult)^2+4)/(2+card.ability.extra.mult))/0.25)/8
        end
        if context.joker_main then
            return {
                echips = card.ability.extra.mult
            }
        end
    end
}