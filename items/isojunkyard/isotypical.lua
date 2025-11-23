SMODS.Joker {
    key = 'iso',
    cost = 50,
    rarity = 'dw_omega',
    config = {
        extra = {
            mult = 1
        }
    },
    atlas = 'isojoker',
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_vars = function(self, info_queue, card)
        local fuckery = card.ability.extra.mult * (1 + to_big(G.GAME.chips)) ^ 0.1
        return {
            vars = { card.ability.extra.mult, fuckery }
        }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.mult = card.ability.extra.mult + 1
            return {
                message = "Scaled!"
            }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.mult * (1 + to_big(G.GAME.chips)) ^ 0.1 --fuck you, talisman.
            }
        end
    end
}

SMODS.Joker {
    key = 'tw_iso',
    cost = 50,
    rarity = 'dw_fatal',
    atlas = 'isojoker',
    pos = { x = 0, y = 1 },
    soul_pos = { x = 1, y = 1 },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {}
        }
    end,
    calc_dollar_bonus = function(self,card)
        return math.floor(math.log(G.GAME.chips^0.1))
    end,
}
