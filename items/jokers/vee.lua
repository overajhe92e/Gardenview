SMODS.Joker {
    key = 'vee',
    rarity = 3,
    cost = 10,
    atlas = 'dw',
    pos = {x=8,y=0},
    loc_vars = function(self, info_queue, card)
        return { vars = { localize('k_dw_veespeak' .. pseudorandom("tv", 1, 4)) } }
    end,
}