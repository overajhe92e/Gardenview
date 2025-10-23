SMODS.Joker {
    key = 'finn',
    cost = 7,
    rarity = 2,
    config = {
        extra = {
            active = 'Inactive'
        }
    },
    loc_vars = function(self,info_queue,card)
        return { vars = {card.ability.extra.active} }
    end,
    blueprint_compat = true,

    remove_from_deck = function(self,card,from_debuff)
        SMODS.destroy_cards(SMODS.find_card("j_dw_barnaby"))
    end,

    calculate = function(self,card,context)
        if context.joker_main and card.ability.extra.active == 'Inactive' then
            return {
                mult = 50
            }
        elseif context.joker_main and card.ability.extra.active == 'Active' then
            return {
                xmult = 3
            }
        end
        if context.final_scoring_step then
            card.ability.extra.active = "Inactive"
        end
        if context.end_of_round and context.game_over == false and not context.blueprint then
            card.ability.extra.active = "Active"
            return {
                message = localize("k_dw_finn_complete"..pseudorandom("finntastic",1,4))
            }
        end
    end
}

SMODS.Joker {
    key = "barnaby",
    cost = 14,
    rarity = 3,
    calculate = function(self,card,context)
        if context.joker_main and next(SMODS.find_card("j_dw_finn")) then
            return {
                echips = 1.5
            }
        elseif context.joker_main and not next(SMODS.find_card("j_dw_finn")) then
            return {
                echips = 1.125
            }
        end
    end
}