local function dash()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/balaladash"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/balaladash/" .. file_name))()
        end
    end
end

local function iso()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/isojunkyard"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/isojunkyard/" .. file_name))()
        end
    end
end

if next(SMODS.find_mod('starspace')) then
    starspace_mod = true
end

if next(SMODS.find_mod('ocstobalatro')) then
    iso()
end

if next(SMODS.find_mod('bdash')) then
    dash()
end

if nil then return nil end 