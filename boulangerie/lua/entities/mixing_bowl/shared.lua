include("boulangerie/entities/bakery_base/shared.lua")

ENT.PrintName = "Bol de mélange"
ENT.Model = "models/props_interiors/pot01a.mdl"
ENT.Category = "Boulangerie"

if SERVER then
    function ENT:Initialize()
        self:SetModel(self.Model)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then phys:Wake() end

        self.flour = 0
        self.water = 0
    end

    function ENT:StartTouch(ent)
        if ent:GetClass() == "flour_bag" then
            self.flour = self.flour + 1
            ent:Remove()
        elseif ent:GetClass() == "water_bottle" then
            self.water = self.water + 1
            ent:Remove()
        end
        self:CheckMix()
    end

    function ENT:CheckMix()
        if self.flour >= 1 and self.water >= 1 then
            self.flour = self.flour - 1
            self.water = self.water - 1
            local dough = ents.Create("dough_ball")
            dough:SetPos(self:GetPos() + self:GetUp()*20)
            dough:Spawn()
        end
    end
end
