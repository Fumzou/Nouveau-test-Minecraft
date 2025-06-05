include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Four traditionnel"
ENT.Model = "models/props_c17/furnace01a.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        local product = ents.Create("product_bread")
        product:SetPos(self:GetPos() + self:GetUp()*40)
        product:Spawn()
        activator:ChatPrint("Vous avez cuit un pain !")
    end
end
