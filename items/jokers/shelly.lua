SMODS.Joker {
    key = 'shelly',
    cost = 20,
    rarity = 4,
    config = {
        extra = {
            blinds = 0.65
        }
    },
    calculate = function(self, card, context)
        if context.setting_blind then
            for i = 1, #G.jokers.cards do
                play_sound('timpani')
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * card.ability.extra.blinds)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            end
        end
    end
}

SMODS.Joker {
    key = 'tw_shelly',
    cost = 32,
    rarity = 'dw_twisted_legendary',
    config = {},
    calculate = function(self, card, context)
        if context.joker_main then
            G.GAME.chips = G.GAME.chips ^ 0.8
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips ^ 1.1)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
        if context.other_joker and context.other_joker.ability.set == "Joker" then --hmmm... this seems familiar.
            G.E_MANAGER:add_event(Event({
                func = function()
                    context.other_joker:juice_up(0.5, 0.5)
                    return true
                end,
            }))
            return {
                xmult = 2,
                xchips = 2
            }
        end
    end
}
