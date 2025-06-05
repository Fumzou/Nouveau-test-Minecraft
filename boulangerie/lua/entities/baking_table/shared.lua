include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Plan de travail"
ENT.Model = "models/props_c17/FurnitureTable001a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER and IsValid(activator) and activator:IsPlayer() then
        local ent = ents.Create("dough_ball")
        ent:SetPos(self:GetPos() + self:GetUp()*40)
        ent:Spawn()
        activator:ChatPrint("Vous façonnez une boule de pâte")
    end
end
