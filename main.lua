SMODS.Atlas {
    key = 'modicon',
    px = 34,
    py = 34,
    path = 'dwicon.png'
}

SMODS.Atlas {
    key = 'dw',
    px = 71,
    py = 95,
    path = 'dandysworld.png'
}

local jokers_src = NFS.getDirectoryItems(SMODS.current_mod.path .. "items/jokers/")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("items/jokers/" .. file))()
end

local function thy()
    local mod_path = SMODS.current_mod.path
    assert(SMODS.load_file("items/misc/rarities.lua"))()
end

thy()