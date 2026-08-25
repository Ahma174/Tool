local players = game:GetService("Players" ).LocalPlayer
local Healing = false
local Counter = 0

local Regen = Instance.new("Tool")
Regen.Name = "RegenCoil"
Regen.ToolTip = "RESKIN 4 THE WIN"
Regen.Grip = CFrame.new(0, 0, 1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Regen.TextureId = "rbxassetid://118870588"
Regen.RequiresHandle = true
Regen.Parent = players.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Color = Color3.new(0, 1, 0)
Handle.Size = Vector3.new(1.399999976158142, 1.5, 2.5)
Handle.Material = Enum.Material.Plastic
Handle.Parent = Regen

local mesh = Instance.new("SpecialMesh")
mesh.Name = "CoilMesh"
mesh.MeshId = "rbxassetid://16606212"
mesh.Scale = Vector3.new(0.7, 0.7, 0.7)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.TextureId = "rbxassetid://118869704"
mesh.Parent = Handle

local so = Instance.new("Sound")
so.Name = "CoilSound"
so.SoundId = "rbxassetid://16619553"
so.Parent = Handle

local Cam = Instance.new("Camera")
Cam.Name = "ThumbnailCamera"
Cam.CFrame = CFrame.new(9.26398468, 59.8029137, 6.96149635, 0.738458395, 0.293480486, -0.60708189, 1.49011612e-08, 0.900315464, 0.435237885, 0.674299061, -0.321405083, 0.664845467)
Cam.Focus = CFrame.new(10.4781485, 58.9324379, 5.63180542, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Cam.Parent = Regen

local RScript = Instance.new("Script")
RScript.Source = [[health = 3 active = false script.Parent.Equipped:connect(function() 	active = true end) script.Parent.Unequipped:connect(function() 	active = false end) while wait(1) do 	if active then 		script.Parent.Parent.Humanoid.Health = script.Parent.Parent.Humanoid.Health + health 	end end 		]]
RScript.Parent = Regen

Regen.Equipped:Connect(function()
Healing = true
Counter += 1
if Counter >= 1 then
while Healing do
task.wait(1)
players.Character.Humanoid.Health += 3
end
elseif Counter > 1 then
Healing = false
end
end)

Regen.Unequipped:Connect(function()
Healing = false
end)
