SMODS.Joker {
    key = "eclipse",
    rarity = 2,
    cost = 8,

    calculate = function(self, card, context)
        if context.setting_blind then
            if blind then
                if pseudorandom_probability() then
                    --disable blind code
                end
            end
        end
    end
}
