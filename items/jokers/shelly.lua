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
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * card.ability.extra.blinds )
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            end
        end
    end
}

SMODS.Joker {
    key = 'tw_shelly',
    cost = 32,
    rarity = 'dw_twisted_legendary',
}