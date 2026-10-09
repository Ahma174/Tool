-- used do to make them seperate and ai helped with this and I remade every section that the ai said

-- BodyGyro and BodyPosition Version
do
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local RS = game:GetService("RunService")

local tool = Instance.new("Tool")
tool.Name = "fly"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack

local pos = Instance.new("BodyPosition")
pos.D = 10
pos.P = 10000
pos.MaxForce = Vector3.new()
pos.Parent = Root

local gyro = Instance.new("BodyGyro")
gyro.D = 10
gyro.MaxTorque = Vector3.new()
gyro.Parent = Root

local speed = 1.2
local flying3F = false
local hum = game.Players.LocalPlayer.Character.Humanoid

local function fly()
flying3F = true
pos.MaxForce = Vector3.new(400000, 400000, 400000)
gyro.MaxTorque = Vector3.new(400000, 400000, 400000)

while flying3F do
 RS.RenderStepped:Wait()

 pos.Position = Root.Position + (Root.Position - workspace.CurrentCamera.CFrame.Position).Unit * speed

 gyro.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Root.Position)
 hum.PlatformStand = true
end
end

local function unfly()
 pos.MaxForce = Vector3.new()
 gyro.MaxTorque = Vector3.new()
 flying3F = false
 task.wait(0.1)
 hum.PlatformStand = false
end

tool.Equipped:Connect(fly)
tool.Unequipped:Connect(unfly)
end


-- AlignPosition and AlignOrientation Version

do
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local RS = game:GetService("RunService")

local tool = Instance.new("Tool")
tool.Name = "RainbowMagicCarpet Bad Remake"
tool.TextureId = "http://www.roblox.com/asset/?id=223080070"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack

local hum = game.Players.LocalPlayer.Character.Humanoid

-- why's a attachment even needed 🫩🥀
local att = Instance.new("Attachment")
att.Parent = Root

local pos = Instance.new("AlignPosition")
pos.Mode = Enum.PositionAlignmentMode.OneAttachment
pos.Attachment0 = att
pos.Responsiveness = 10
pos.MaxForce = 0
pos.Parent = Root

local gyro = Instance.new("AlignOrientation")
gyro.Mode = Enum.OrientationAlignmentMode.OneAttachment
gyro.Attachment0 = att
gyro.Responsiveness = 10
gyro.MaxTorque = 0
gyro.Parent = Root

local speed = 50
local flying3F = false

local function fly()
flying3F = true
pos.MaxForce = 4e5
gyro.MaxTorque = 4e5

while flying3F do
 RS.RenderStepped:Wait()

 pos.Position = Root.Position + (Root.Position - workspace.CurrentCamera.CFrame.Position).Unit * speed

 gyro.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, Root.Position).Rotation
 hum.PlatformStand = true
end
end

local function unfly()
 pos.MaxForce = 0
 gyro.MaxTorque = 0
 flying3F = false
 task.wait(0.1)
 hum.PlatformStand = false
end

tool.Equipped:Connect(fly)
tool.Unequipped:Connect(unfly)
end
