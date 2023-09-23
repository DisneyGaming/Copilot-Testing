local function spawnProp(ply)
    local prop = ents.Create("prop_physics")
    prop:SetModel("models/props_junk/wood_crate001a.mdl")
    prop:SetPos(ply:GetPos() + Vector(0, 0, 50))
    prop:Spawn()
end

hook.Add("PlayerSay", "SpawnProp", function(ply, text, teamChat)
    if text == "!prop" then
        spawnProp(ply)
        return ""
    end
end)