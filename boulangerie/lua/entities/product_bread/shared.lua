include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Pain"
ENT.Model = "models/props_junk/garbage_bag001a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Miam !")
        self:Remove()
    end
end
