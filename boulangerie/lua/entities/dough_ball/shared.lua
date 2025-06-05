include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Boule de pâte"
ENT.Model = "models/props_junk/garbage_bag001a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Vous avez de la pâte prête à cuire")
    end
end
