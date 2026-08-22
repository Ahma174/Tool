-- I cant test it because of my stupid executor (Arceus X) throwing errors in line 32
-- fuck Arceus X

local SuperCoilR = Instance.new("Tool" )
SuperCoilR.Name = "SuperSpeedCoil Remade"
SuperCoilR.ToolTip = "Have EVEN More Speed From The Speed Coil!"
SuperCoilR.TextureId = "http://www.roblox.com/asset/?id=2684924567"
SuperCoilR.Grip = CFrame.new(0, 0, 1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
SuperCoilR.RequiresHandle = true
SuperCoilR.Parent = game.Players.LocalPlayer.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Size = Vector3.new(1, 1.5570000410079956, 2.5)
Handle.Parent = SuperCoilR


local s = Instance.new("Sound")
s.Name = "CoilSound"
s.SoundId = "rbxassetid://99173388"
s.PlaybackSpeed = 5
s.Parent = SuperCoilR

local mesh = Instance.new("SpecialMesh")
mesh.MeshId = "rbxassetid://16606212"
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Name = "CoilMesh"
mesh.Scale = Vector3.new(0.699999988079071, 0.699999988079071, 0.699999988079071)
mesh.TextureId = "rbxassetid://0"
mesh.Parent = Handle

local Li = Instance.new("PointLight")
Li.Name = "CoilLight"
Li.Brightness = 13
Li.Color = Color3.FromRGB(255, 255, 0)
Li.Range = 10
Li.Enabled = false
Li.Parent = Handle

local Va = Instance.new("NumberValue")
Va.Name = "EquipCounter"
Va.Value = 0
Va.Parent = SuperCoilR

local UVa = Instance.new("NumberValue")
UVa.Name = "UnEquipCounter"
UVa.Value = 0
UVa.Parent = SuperCoilR

SuperCoilR.Equipped:Connect(function()
Va.Value += 1
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
s:Play()
Li.Enabled = true
end)

SuperCoilR.Unequipped:Connect(function()
UVa.Value += 1
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
s:Stop()
Li.Enabled = false
end)