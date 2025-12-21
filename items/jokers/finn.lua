SMODS.Joker {
    key = 'finn',
    cost = 7,
    rarity = 2,
    config = {
        extra = {
            active = 'Inactive'
        }
    },
    atlas = 'dw',
    pos = {x=8,y=0},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.active } }
    end,
    blueprint_compat = true,

    add_to_deck = function(self,card,from_debuff)
        G.GAME.pool_flags.dw_barnaby_spawnable = true
    end,

    remove_from_deck = function(self, card, from_debuff)
        if next(SMODS.find_card("j_dw_barnaby")) then
            SMODS.destroy_cards(SMODS.find_card("j_dw_barnaby"))
        end
        G.GAME.pool_flags.dw_barnaby_spawnable = true
    end,

    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.active == 'Inactive' then
            return {
                mult = 50
            }
        elseif context.joker_main and card.ability.extra.active == 'Active' then
            return {
                xmult = 3
            }
        end
        if context.final_scoring_step and not context.blueprint then
            card.ability.extra.active = "Inactive"
        end
        if context.end_of_round and context.game_over == false and not context.blueprint then
            card.ability.extra.active = "Active"
            return {
                message = localize("k_dw_finn_complete" .. pseudorandom("finntastic", 1, 4))
            }
        end
    end
}

SMODS.Joker {
    key = "barnaby",
    cost = 14,
    rarity = 3,
    atlas = 'dw',
    pos = {x=8,y=0},
    blueprint_compat = true,
    in_pool = function(self,args)
        return G.GAME.pool_flags.dw_barnaby_spawnable
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                emult = 1.05
            }
        end
    end
}
