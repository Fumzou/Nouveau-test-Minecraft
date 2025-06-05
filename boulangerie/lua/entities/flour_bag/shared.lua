include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Sac de farine"
ENT.Model = "models/props_junk/Sack01a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Vous prenez un sac de farine")
        self:Remove()
    end
end
