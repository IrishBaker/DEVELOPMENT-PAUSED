local mainHandler = { instance = nil, senv = nil }
local namecall = nil
local waitTable = {}
local RunService = game:GetService("RunService")
for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
        repeat
            mainHandler = getsenv(instance)
            RunService.Heartbeat:Wait()
        until mainHandler.afflictstatus ~= nil

        local upvalue = getupvalues(mainHandler.afflictstatus)
        _G.serverKey = upvalue[16]
        _G.playerKey = upvalue[17]
    end
end
local humanoid = game.Players.LocalPlayer.Character.Humanoid
while true do
    if humanoid.Health <= 50 then
        repeat
            game.Workspace.ServerStuff.dealDamage:FireServer("Regeneration", nil, _G.serverKey, _G.playerKey)
            wait(0.1)
        until
            humanoid.Health == humanoid.MaxHealth
    end
    wait()
end
