include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Balance numérique"
ENT.Model = "models/props_c17/consolebox01a.mdl"
ENT.Category = "Boulangerie"

if SERVER then
    function ENT:OnUse(activator)
        if not IsValid(activator) then return end
        local mins = self:GetPos() + Vector(-20,-20,0)
        local maxs = self:GetPos() + Vector(20,20,40)
        local found = ents.FindInBox(mins, maxs)
        local mass = 0
        for _,e in ipairs(found) do
            if e ~= self then
                local phys = e:GetPhysicsObject()
                if IsValid(phys) then
                    mass = mass + phys:GetMass()
                end
            end
        end
        activator:ChatPrint("Poids détecté : " .. math.Round(mass,2) .. " kg")
    end
end
