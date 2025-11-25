SMODS.Joker {
    key = "blot",
    cost = 6,
    rarity = 3,
    config = { extra = { e_mult = 1.15 } },
    atlas = 'dw',
    pos = {x=2,y=0},
    soul_pos = {x=3,y=0},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.e_mult } }
    end,
    blueprint_compat = false,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                e_mult = card.ability.extra.e_mult
            }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss and not context.blueprint then
            SMODS.add_card{ key = 'j_dw_blotjr' }
            return {
                message = localize("k_dw_blotyap"..pseudorandom("blotjr",1,2))
            }
        end
    end
}
