local player = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local Healing = false
local Value = 0

local Fusion = Instance.new("Tool")
Fusion.Name = "FusionCoil"
Fusion.TextureId = "rbxassetid://983405257"
Fusion.Grip = CFrame.new(0, 0, 1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Fusion.RequiresHandle = true
Fusion.Parent = player.LocalPlayer.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Color = Color3.new(123, 0, 123)
Handle.Material = Enum.Material.Neon
Handle.Size = Vector3.new(1.8599992990493774, 2, 2.849999189376831)
Handle.Parent = Fusion

local s = Instance.new("Sound")
s.Name = "CoilSound"
s.SoundId = "rbxassetid://4822429705"
s.Parent = Handle

local mesh = Instance.new("SpecialMesh")
mesh.Name = "CoilMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=16606212"
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(0.7, 0.7, 0.7)
mesh.TextureId = "http://www.roblox.com/asset/?id=16606141"
mesh.VertexColor = Vector3.new(2, 0, 2)
mesh.Parent = Handle

local Light = Instance.new("PointLight")
Light.Name = "CoilLight"
Light.Brightness = 5
Light.Color = Color3.new(170, 0, 250)
Light.Range = 10
Light.Enabled = false
Light.Parent = Handle

local Gravity = Instance.new("Script")
Gravity.Name = "Gravity"
Gravity.Source = [[--Rescripted by Luckymaxer  Tool = script.Parent Handle = Tool:WaitForChild("Handle")  Players = game:GetService("Players")  Sounds = { 	CoilSound = Handle:WaitForChild("CoilSound"), }  Gravity = 196.20 JumpHeightPercentage = 0.2  ToolEquipped = false  function GetAllConnectedParts(Object) 	local Parts = {} 	local function GetConnectedParts(Object) 		for i, v in pairs(Object:GetConnectedParts()) do 			local Ignore = false 			for ii, vv in pairs(Parts) do 				if v == vv then 					Ignore = true 				end 			end 			if not Ignore then 				table.insert(Parts, v) 				GetConnectedParts(v) 			end 		end 	end 	GetConnectedParts(Object) 	return Parts end  function SetGravityEffect() 	if not GravityEffect or not GravityEffect.Parent then 		GravityEffect = Instance.new("BodyForce") 		GravityEffect.Name = "GravityCoilEffect" 		GravityEffect.Parent = Torso 	end 	local TotalMass = 0 	local ConnectedParts = GetAllConnectedParts(Torso) 	for i, v in pairs(ConnectedParts) do 		if v:IsA("BasePart") then 			TotalMass = (TotalMass + v:GetMass()) 		end 	end 	local TotalMass = (TotalMass * 196.20 * (1 - JumpHeightPercentage)) 	GravityEffect.force = Vector3.new(0, TotalMass, 0) end  function HandleGravityEffect(Enabled) 	if not CheckIfAlive() then 		return 	end 	for i, v in pairs(Torso:GetChildren()) do 		if v:IsA("BodyForce") then 			v:Destroy() 		end 	end 	for i, v in pairs({ToolUnequipped, DescendantAdded, DescendantRemoving}) do 		if v then 			v:disconnect() 		end 	end 	if Enabled then 		CurrentlyEquipped = true 		ToolUnequipped = Tool.Unequipped:connect(function() 			CurrentlyEquipped = false 		end) 		SetGravityEffect() 		DescendantAdded = Character.DescendantAdded:connect(function() 			wait() 			if not CurrentlyEquipped or not CheckIfAlive() then 				return 			end 			SetGravityEffect() 		end) 		DescendantRemoving = Character.DescendantRemoving:connect(function() 			wait() 			if not CurrentlyEquipped or not CheckIfAlive() then 				return 			end 			SetGravityEffect() 		end) 	end end  function CheckIfAlive() 	return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent and Player and Player.Parent) and true) or false) end  function Equipped(Mouse) 	Character = Tool.Parent 	Humanoid = Character:FindFirstChild("Humanoid") 	Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso") 	Player = Players:GetPlayerFromCharacter(Character) 	if not CheckIfAlive() then 		return 	end 	if HumanoidDied then 		HumanoidDied:disconnect() 	end 	HumanoidDied = Humanoid.Died:connect(function() 		if GravityEffect and GravityEffect.Parent then 			GravityEffect:Destroy() 		end 	end) 	Sounds.CoilSound:Play() 	HandleGravityEffect(true) 	ToolEquipped = true end  function Unequipped() 	if HumanoidDied then 		HumanoidDied:disconnect() 	end 	HandleGravityEffect(false) 	ToolEquipped = false end  Tool.Equipped:connect(Equipped) Tool.Unequipped:connect(Unequipped)]]
Gravity.Parent = Fusion

local Regen = Instance.new("Script")
Regen.Name = "Regen"
Regen.Source = [[Tool = script.Parent Active = false  Tool.Equipped:Connect(function() 	Active = true end)  Tool.Unequipped:Connect(function() 	Active = false end)  while wait(1.2) do --Delay for each healing 	if Active then 		Tool.Parent.Humanoid.Health = Tool.Parent.Humanoid.Health + 5 	end end ]]
Regen.Parent = Fusion

local Speed = Instance.new("Script")
Speed.Name = "Speed"
Speed.Source = [[--Made by Stickmasterluke   sp = script.Parent   local speedboostscript = sp:WaitForChild("SpeedBoostScript")  function Equipped() 	if sp.Parent:FindFirstChild("SpeedBoostScript") == nil then 		local s = speedboostscript:clone() 		local tooltag = Instance.new("ObjectValue") 		tooltag.Name = "ToolTag" 		tooltag.Value = sp 		tooltag.Parent = s 		s.Parent = sp.Parent 		s.Disabled = false 		local sound = sp.Handle:FindFirstChild("CoilSound") 		if sound ~= nil then 			sound:Play() 		end 	end end  sp.Equipped:connect(Equipped)]]
Speed.Parent = Fusion

local SpeedB = Instance.new("Script")
SpeedB.Name = "SpeedBoostScript"
SpeedB.Source = [[--Made by Stickmasterluke   sp = script.Parent  speedboost = 1		--100% speed bonus speedforsmoke = math.huge	--smoke apears when character running >= 10 studs/second.   local tooltag = script:WaitForChild("ToolTag",2)  if tooltag~=nil then 	local tool=tooltag.Value 	local h=sp:FindFirstChild("Humanoid") 	if h~=nil then 		h.WalkSpeed=16+16*speedboost 		local hrp = sp:FindFirstChild("HumanoidRootPart") 		if hrp ~= nil then 			smokepart=Instance.new("Part") 			smokepart.FormFactor="Custom" 			smokepart.Size=Vector3.new(0,0,0) 			smokepart.TopSurface="Smooth" 			smokepart.BottomSurface="Smooth" 			smokepart.CanCollide=false 			smokepart.Transparency=1 			local weld=Instance.new("Weld") 			weld.Name="SmokePartWeld" 			weld.Part0 = hrp 			weld.Part1=smokepart 			weld.C0=CFrame.new(0,-3.5,0)*CFrame.Angles(math.pi/4,0,0) 			weld.Parent=smokepart 			smokepart.Parent=sp 			smoke=Instance.new("Smoke") 			smoke.Enabled = hrp.Velocity.magnitude>speedforsmoke 			smoke.RiseVelocity=2 			smoke.Opacity=0 			smoke.Size=0 			smoke.Parent=smokepart 			h.Running:connect(function(speed) 				if smoke and smoke~=nil then 					smoke.Enabled=speed>speedforsmoke 				end 			end) 		end 	end 	while tool~=nil and tool.Parent==sp and h~=nil do 		sp.ChildRemoved:wait() 	end 	local h=sp:FindFirstChild("Humanoid") 	if h~=nil then 		h.WalkSpeed=16 	end end  if smokepart~=nil then 	smokepart:Destroy() end script:Destroy()   ]]
SpeedB.Parent = Fusion

local SpeedSB = Instance.new("LocalScript")
SpeedSB.Name = "Sound & Speed"
SpeedSB.Source = [[sp=script.Parent   function waitfor(a,b) 	while a:FindFirstChild(b)==nil do 		a.ChildAdded:wait() 	end 	return a:FindFirstChild(b) end  speedboostscript=waitfor(sp,"SpeedBoostScript")  function Equipped() 	if sp.Parent:FindFirstChild("SpeedBoostScript")==nil then 		local s=speedboostscript:clone() 		local tooltag=Instance.new("ObjectValue") 		tooltag.Name="ToolTag" 		tooltag.Value=sp 		tooltag.Parent=s 		s.Parent=sp.Parent 		s.Disabled=false 		local sound=sp.Handle:FindFirstChild("CoilSound") 		if sound~=nil then 			sound:Play() 		end 	end end  sp.Equipped:connect(Equipped) ]]
SpeedSB.Parent = Fusion

Fusion.Equipped:Connect(function()
 Healing = true
 Value += 1
 player.LocalPlayer.Character.Humanoid.WalkSpeed = 150
 player.LocalPlayer.Character.Humanoid.JumpPower = 125
 workspace.Gravity = 75
 Light.Enabled = true
 s:Play()
if Value >= 1 then
 while Healing do
 task.wait(1)
 player.LocalPlayer.Character.Humanoid.Health += 6
end

elseif Value > 1 then
 Healing = false
end
end)

Fusion.Unequipped:Connect(function()
 player.LocalPlayer.Character.Humanoid.WalkSpeed = 16
 player.LocalPlayer.Character.Humanoid.JumpPower = 50
 workspace.Gravity = 196.2
 Light.Enabled = false
 Healing = false
end)
