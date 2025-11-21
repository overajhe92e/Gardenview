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

SMODS.Atlas {
    key = 'isojoker',
    px = 71,
    py = 95,
    path = 'isojunk_crossmod_jokers.png'
}

local src = NFS.getDirectoryItems(SMODS.current_mod.path .. "items/jokers/")
for _, file in ipairs(src) do
    assert(SMODS.load_file("items/jokers/" .. file))()
end


local function blindbs()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/blinds"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/blinds/" .. file_name))()
        end
    end
end

local function misc()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/misc"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/misc/" .. file_name))()
        end
    end
end

local function consume()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/consumables"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/consumables/" .. file_name))()
        end
    end
end

blindbs()
consume()
misc()
