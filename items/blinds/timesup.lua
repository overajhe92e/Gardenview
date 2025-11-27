local create_event
create_event = function()
    if G.GAME and G.GAME.dylestime == true and G.GAME.chips < G.GAME.blind.chips then
        G.E_MANAGER:add_event(Event {
            blockable = false,
            blocking = false,
            pause_force = true,
            no_delete = true,
            trigger = "after",
            delay = 1,
            func = function()
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 1.3)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                create_event()
                return true
            end
        })
    end
end

local purplegrad = SMODS.Gradient {
    key = 'lethalourple',
    colours = { HEX('9b52ff'), HEX('ff5252') },
    interpolation = trig,
    cycle = 2
}

SMODS.Blind {
    key = 'TIMES_UP',
    atlas = 'dw_timesup',
    dollars = 8,
    mult = 6,
    boss = { min = 8, showdown = true },
    boss_colour = purplegrad,

    set_blind = function(self)
        G.GAME.dylestime = true
        create_event()
    end,

    disable = function(self)
        G.GAME.blind.chips = G.GAME.blind.chips * 12
    end,

    defeat = function(self)
        G.GAME.dylestime = false
    end,

    in_pool = function(self)
        if G.GAME.dandyencountered == nil then
            return false
        elseif G.GAME.dandyencountered == true then
            return true
        end
    end
}
