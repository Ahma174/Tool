local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local Hammer = Instance.new("Tool")
Hammer.Name = "Delete Tool"
Hammer.TextureId = "rbxasset://textures/Hammer.png"
Hammer.RequiresHandle = false
Hammer.Parent = player.Backpack

Hammer.Activated:Connect(function()
local MousePos = mouse.Target
if MousePos and MousePos:IsA("BasePart") then
local part = MousePos
local exp = Instance.new("Explosion")
exp.BlastPressure = 500000
exp.BlastRadius = 0
exp.Position = part.CFrame.Position
exp.Parent = game.Workspace
part:Destroy()
end
end)

local Clone = Instance.new("Tool")
Clone.Name = "Clone Tool"
Clone.TextureId = "rbxasset://textures/Clone.png"
Clone.RequiresHandle = false
Clone.Parent = player.Backpack

Clone.Activated:Connect(function()
local CPos = mouse.Target
if CPos and CPos:IsA("BasePart") then
local Cpart = CPos
Cpart:Clone().Parent = game.Workspace
end
end)
