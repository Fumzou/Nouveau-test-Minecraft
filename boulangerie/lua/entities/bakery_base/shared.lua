ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Bakery Item"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model or "models/props_junk/garbage_bag001a.mdl")
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then phys:Wake() end
    end
end

if SERVER then
    function ENT:Use(activator)
        if self.OnUse then
            self:OnUse(activator)
        end
    end
end
