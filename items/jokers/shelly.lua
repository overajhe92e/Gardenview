SMODS.Joker {
    key = 'shelly',
    cost = 20,
    rarity = 4,
    config = {
        extra = {
            blinds = 0.95
        }
    },
    calculate = function(self, card, context)
        if context.setting_blind then
            for i = 1, #G.jokers.cards do
                play_sound('timpani')
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * 0.75)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            end
        end
    end
}
