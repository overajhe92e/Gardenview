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
            card.ability.extra.noitem = false
            card.ability.extra.anger = 0
            card.ability.extra.xmult = card.ability.extra.xmult + 0.25
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
        if context.ending_shop and card.ability.extra.noitem == true then
            card.ability.extra.anger = card.ability.extra.anger + 1
        elseif context.ending_shop and card.ability.extra.noitem == false then
            card.ability.extra.noitem = true
        end
    end
}

SMODS.Joker {
    key = 'tw_dandy',
    cost = 10,
    rarity = 'dw_twisted_lethal',
    config = {
        extra = {
            xmult = 1,
            wake_up_its_talisman_check_time = 0.05
        },
    },
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.wake_up_its_talisman_check_time * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) + 1 }}
    end,
    calculate = function(self,card,context)
        if context.buying_card then
            card.ability.extra.xmult = card.ability.extra.xmult + 1
            return{message="X"..tostring(card.ability.extra.xmult).." Mult"}
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
                emult = card.ability.extra.wake_up_its_talisman_check_time * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) + 1
            }
        end
    end
}