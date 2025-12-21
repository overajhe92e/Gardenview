SMODS.Joker {
    key = 'fireice',
    cost = 842,
    rarity = 'dw_omega',
    config = {
        extra = {
            mult = 1
        }
    },
    atlas = 'dashjoker',
    pos = {x=0,y=0},
    soul_pos = {x=1,y=0},
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
SMODS.Joker {
    key = 'aberrantfireice',
    cost = 842842,
    rarity = 'dw_fatal',
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

    end
}

SMODS.Joker:take_ownership("gj_vessel", {
    cost = -1
},
false
)