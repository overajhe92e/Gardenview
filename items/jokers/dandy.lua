SMODS.Joker {
    key = 'dandy',
    cost = 10,
    rarity = 3,
    config = {
        extra = {
            xmult = 1,
            noitem = false,
            anger = 0,
            reset = 0
        }
    },
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.xmult }}
    end,
    calculate = function(self,card,context)
        if context.buying_card then
            card.ability.extra.anger = 0
            card.ability.extra.xmult = card.ability.extra.xmult + 0.1
            return{message="X"..tostring(card.ability.extra.xmult).." Mult"}
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.setting_blind and card.ability.extra.reset == 2 then
            card.ability.extra.xmult = 1
            return{message="Reset!"}
        end
    end
}

SMODS.Joker {
    key = 'tw_dandy',
    cost = 10,
    rarity = 'dw_twisted_lethal',
    config = {
        extra = {
            xmult = 1
        },
    },
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.xmult }}
    end,
    calculate = function(self,card,context)
        if context.buying_card then
            card.ability.extra.xmult = card.ability.extra.xmult + 0.3
            return{message="X"..tostring(card.ability.extra.xmult).." Mult"}
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}