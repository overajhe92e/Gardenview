SMODS.Joker {
    key = 'astro',
    rarity = 4,
    cost = 30,
    atlas = 'dw',
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = {
        extra = {
            multi = 1
        }
    },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        local planets_used = 0
        for k, v in pairs(G.GAME.consumeable_usage) do if v.set == 'Planet' then planets_used = planets_used + 1 end end
        return { vars = { card.ability.extra.multi, (planets_used+1) } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local planets_used = 0
                    for k, v in pairs(G.GAME.consumeable_usage) do
                        if v.set == 'Planet' then planets_used = planets_used + 1 end
                    end
                    ease_discard(G.GAME.current_round.discards_left + (planets_used))
                    ease_hands_played(G.GAME.current_round.hands_left + (planets_used))
                    SMODS.calculate_effect(
                        { message = '+' .. tostring(planets_used+1) .. ' Hands & Discards' },
                        context.blueprint_card or card)
                    return true
                end
            }))
        end
    end
}

SMODS.Joker {
    key = 'twistedastro',
    rarity = 'dw_twisted_legendary',
    cost = 30,
    atlas = 'dw',
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = {
        extra = {
            multi = 1
        }
    },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        local planets_used = 0
        for k, v in pairs(G.GAME.consumeable_usage) do if v.set == 'Planet' then planets_used = planets_used + 1 end end
        return { vars = { card.ability.extra.multi, (planets_used+1) } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local planets_used = 0
                    for k, v in pairs(G.GAME.consumeable_usage) do
                        if v.set == 'Planet' then planets_used = planets_used + 1 end
                    end
                    ease_discard(G.GAME.current_round.discards_left * (planets_used + 1))
                    ease_hands_played(G.GAME.current_round.hands_left * (planets_used + 1))
                    SMODS.calculate_effect(
                        { message = '+X' .. tostring(planets_used+1) .. ' Hands & Discards' },
                        context.blueprint_card or card)
                    return true
                end
            }))
        end
    end
}