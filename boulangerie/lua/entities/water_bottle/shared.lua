include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Bouteille d'eau"
ENT.Model = "models/props_junk/GlassBottle01a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        activator:ChatPrint("Vous récupérez une bouteille d'eau")
        self:Remove()
    end
end
