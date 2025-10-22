SMODS.Joker {
   key = "blot",
   cost = 6,
   rarity = 3,
   config = {extra = { e_mult = 1.15 } },
    loc_vars = function(self,info_queue,card)
        return { vars = {card.ability.extra.e_mult} }
    end,
    calculate = function(self, card, context)
    local blotYap = {
        "Jr. Incoming!",
        "!em inim A"
    }
        if context.joker_main then
            return {
                e_mult = card.ability.extra.e_mult
            }
        end
    if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
        return {
            func = function()
                local created_joker = false
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    created_joker = true
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    G.E_MANAGER:add_event(Event({
                    func = function()
                        local joker_card = SMODS.add_card({ key = 'j_dw_blotjr' })
                        if joker_card then
                        
                        end
                        G.GAME.joker_buffer = 0
                        return true
                        end
                    }))
                end
                if created_joker then
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = math.random(#blotYap), colour = G.C.BLUE})
                end
                return true
                end
            }
        end

    end
}