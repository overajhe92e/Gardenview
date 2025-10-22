SMODS.Joker {
    key = "blotjr",
    cost = 0,
    rarity = 2,
    config = { extra = { lifetime = 3, x_mult = 1.25, start_dissolve = 0, y = 0 } },
    in_pool = function(self, args)
        return (
      not args 
      or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
         or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra'
         )
         and true
     end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                x_mult = card.ability.extra.x_mult
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
        if (card.ability.extra.lifetime or 0) == 0 then
            return {
                func = function()
                    card:start_dissolve()
                    return true
                    end,
                    message = "Destroyed!"
                }
            elseif (card.ability.extra.lifetime or 0) ~= 0 then
                return {
                    func = function()
                        card.ability.extra.lifetime = math.max(0, (card.ability.extra.lifetime) - 1)
                            return true
                            end
                        }
                    end
                end
            end
}