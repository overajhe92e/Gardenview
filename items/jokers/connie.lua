SMODS.Joker {
    key = "connie",
    rarity = 2,
    cost = 1,
    atlas = 'dw',
    pos = { x = 8, y = 0 },
}

SMODS.Joker {
    key = "tw_connie",
    rarity = "dw_twisted_uncommon",
    cost = 13,
    config = {
        extra = {
            xmult = 1,
            div = 1
        }
    },
    atlas = 'dw',
    pos = { x = 8, y = 0 },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.xmult * (G.jokers and #G.jokers.cards or 0),
                G.jokers and
                math.max(1, (G.jokers.config.card_limit - #G.jokers.cards) + #SMODS.find_card("j_vremade_stencil", true)) or
                1 }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xchips = card.ability.extra.xmult * (G.jokers and #G.jokers.cards or 0),
                xmult = card.ability.extra.div / math.max(1,
                (G.jokers.config.card_limit - #G.jokers.cards) + #SMODS.find_card("j_dw_tw_connie", true))
            }
        end
    end
}

local G_UIDEF_use_and_sell_buttons_ref = G.UIDEF.use_and_sell_buttons
function G.UIDEF.use_and_sell_buttons(card)
    local tdc = G_UIDEF_use_and_sell_buttons_ref(card)
    if (card.area == G.jokers) and card.config.center.key == "j_dw_connie" then
        local sell = nil
        local use = nil
        local posession = nil

        sell = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", padding = 0.1, r = 0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'sell_card', func = 'can_sell_card' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        {
                            n = G.UIT.C,
                            config = { align = "tm" },
                            nodes = {
                                {
                                    n = G.UIT.R,
                                    config = { align = "cm", maxw = 1.25 },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('b_sell'), colour = G.C.UI.TEXT_LIGHT, scale = 0.4, shadow = true } }
                                    }
                                },
                                {
                                    n = G.UIT.R,
                                    config = { align = "cm" },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('$'), colour = G.C.WHITE, scale = 0.4, shadow = true } },
                                        { n = G.UIT.T, config = { ref_table = card, ref_value = 'sell_cost_label', colour = G.C.WHITE, scale = 0.55, shadow = true } }
                                    }
                                }
                            }
                        }
                    }
                },
            }
        }
        posession =
        {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {

                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = (card.area and card.area.config.type == 'joker') and 0 or 1, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = false, button = 'seraphmenu' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        { n = G.UIT.T, config = { text = 'Posess', colour = G.C.UI.BLUE, scale = 0.55, shadow = true } }
                    }
                }
            }
        }
        --overwriting usual buttons
        tdc = {
            n = G.UIT.ROOT,
            config = { padding = 0, colour = G.C.CLEAR },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { padding = 0.15, align = 'cl' },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = 'cl' },
                            nodes = {
                                sell
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { align = 'cl' },
                            nodes = {
                                use
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { align = 'cl' },
                            nodes = {
                                posession
                            }
                        },
                    }
                },
            }
        }
    end
    return tdc
end
