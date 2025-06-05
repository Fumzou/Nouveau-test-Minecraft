include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Pain au chocolat"
ENT.Model = "models/props_junk/garbage_bag001a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Délicieux pain au chocolat !")
        self:Remove()
    end
end
