local stuff = game.Workspace.InteractablesNoDel
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/key.lua"))()
wait(1)
game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(stuff.Touch, "touchthing", _G.serverKey) -- knife
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-74, 22, 166)) -- goto cultist small bunker wait
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(400, -3, -16)) -- go back to spawn
wait(2)
game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(stuff.Keycard, "keycardget", _G.serverKey)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(400, -3, -16)) -- go back to spawn
wait(4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(72, -3, -198)) -- go to the basement door
game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(stuff.Unlock, "unlockthing", _G.serverKey)
wait(3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-14, -64, -250)) -- go to the small door
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-165, -77, -210)) -- go to the laptop room
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(72, -3, -198)) -- go to the basement door
wait(1)
game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(stuff.Activate, "activatething", _G.serverKey)
wait(1)
e:GetService("ReplicatedStorage").Interactables.interaction:FireServer(stuff:FindFirstChild("Acquire Masks"), acquirething, _G.serverKey)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(400, -3, -16))
game.StarterGui:SetCore("SendNotification", {
    Title = '';
    Text = "True Ending is ready.";
    Icon = "rbxassetid://2541869220";
    Duration = 4;
})
