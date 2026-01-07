SMODS.Joker {
    key = 'rodger',
    rarity = 2,
    cost = 7,
    atlas = 'dw',
    pos = {x=8,y=0},
    calculate = function(self,card,context)
        if context.other_joker and context.other_joker.ability.set == "Joker" then
            G.E_MANAGER:add_event(Event({
                func = function()
                    context.other_joker:juice_up(0.5, 0.5)
                    return true
                end,
            }))
            return {
                xmult = 1.1
            }
        end
    end
}