SMODS.Joker {
    key = "ipadkid",
    config = { extra = { odds = 8, repetitions = 8 } },
    rarity = 2,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play  then
               if context.other_card:get_id() == 8 then
                   if SMODS.pseudorandom_probability(card, 'group_0_4413d5fd', 1, card.ability.extra.odds, 'j_modprefix_toodles', true) then
                    
                   return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_toodles_speak' .. pseudorandom("thehyperactivechild", 1, 6))
                }
               end
           end
       end
   end
}