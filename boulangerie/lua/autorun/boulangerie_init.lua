AddCSLuaFile()

-- Chargement des entités
local ENTITIES = {
    "flour_bag",
    "water_bottle",
    "dough_ball",
    "baking_table",
    "oven_traditional",
    "oven_industrial",
    "product_bread",
    "product_croissant",
    "product_baguette"
}

for _, ent in ipairs(ENTITIES) do
    local path = "boulangerie/entities/" .. ent .. "/" .. "init.lua"
    if SERVER then
        include(path)
    end
    AddCSLuaFile(path)
end

if SERVER then
    print("[Boulangerie] Addon chargé")
end
