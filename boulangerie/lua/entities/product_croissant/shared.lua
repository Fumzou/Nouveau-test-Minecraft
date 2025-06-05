include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Croissant"
ENT.Model = "models/props_junk/garbage_bag001a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Délicieux croissant !")
        self:Remove()
    end
end
