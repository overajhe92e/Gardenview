SMODS.Consumable {
    key = 'speed',
    set = 'candy',
    config = { extra = { dollars = 15 } },
    can_use = function(self, card)
        return true
    end,
    use = function(self, card, area, copier)
        local used_card = copier or card
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "+"..tostring(15).." $", colour = G.C.MONEY})
                    ease_dollars(15, true)
                    return true
                end
            }))
            delay(0.6)
        end,
}