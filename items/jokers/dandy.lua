SMODS.Joker {
    key = 'dandy',
    cost = 10,
    rarity = 3,
    config = {
        extra = {
            xmult = 1
        }
    },
    calculate = function(self,card,context)
        if context.buying_card then
            card.ability.extra.xmult = card.ability.extra.xmult + 0.1
            return{message="X"..tostring(card.ability.extra.xmult).." Mult"}
        end
    end
}