include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Four industriel"
ENT.Model = "models/props/cs_office/microwave.mdl"
ENT.Category = "Boulangerie"

function ENT:OnUse(activator)
    if SERVER then
        for i=1,3 do
            local product = ents.Create("product_bread")
            product:SetPos(self:GetPos() + self:GetUp()*40 + Vector(0,i*5,0))
            product:Spawn()
        end
        activator:ChatPrint("La machine a produit plusieurs pains !")
    end
end
