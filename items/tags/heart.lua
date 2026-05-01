SMODS.Tag {
    key = 'heart',
    min_ante = math.huge,
    apply = function(self, tag, context)
        if context.end_of_round and context.game_over and context.main_eval then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
                        return true
                    end
                }))
                return {
                    message = localize('k_saved_ex'),
                    saved = 'ph_mr_bones',
                    colour = G.C.RED
                }
            end
            for i = 1, #G.GAME.tags do
					if G.GAME.tags[i] ~= tag then -- if find broken heart, dont activate its effect
                        tag:nope()
                    end
            end
    end,

}