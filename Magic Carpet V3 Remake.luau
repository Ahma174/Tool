-- AI was used on this only on finding errors
-- Original Magic Carpet By Luckymaxer and Roblox
-- Original Script Style By ttyyuu12345
-- Open Source For Anyone to use
-- This Gear Made Me Started Scripting
-- Added Animation Playing And Stopping Support and bugs should be fixed now 👍👍

function sandbox(var,func)
        local env = getfenv(func)
        local newenv = setmetatable({},{
                __index = function(self,k)
                        if k=="script" then
                                return var
                        else
                                return env[k]
                        end
                end,
        })
        setfenv(func,newenv)
        return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
Sound2 = Instance.new("Sound")
SpecialMesh3 = Instance.new("SpecialMesh")
Script6 = Instance.new("Script")
Script7 = Instance.new("Script")
LocalScript8 = Instance.new("LocalScript")
LocalScript9 = Instance.new("LocalScript")
RF1 = Instance.new("RemoteFunction")
RF2 = Instance.new("RemoteFunction")
A1 = Instance.new("Animation")
A2 = Instance.new("Animation")
Tool0.Name = "RainbowMagicCarpet"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=223080070"
Tool0.Grip = CFrame.new(-1.5, 0, 0, 1.91068547e-15, -4.37113883e-08, -1, -1, -4.37113883e-08, -0, -4.37113883e-08, 1, -4.37113883e-08)
Part1.Name = "Handle"
Part1.Size = Vector3.new(3, 0.5, 3.5)
Part1.Parent = Tool0
Part1.Size = Vector3.new(1, 3.6000001430511475, 1)
SpecialMesh3.Parent = Part1
SpecialMesh3.MeshId = "http://www.roblox.com/asset/?id=223079737"
SpecialMesh3.TextureId = "http://www.roblox.com/asset/?id=223080038"
SpecialMesh3.Scale = Vector3.new(1.125, 1.125, 1.125)
SpecialMesh3.MeshType = Enum.MeshType.FileMesh
RF1.Name = "ServerControl"
RF1.Parent = Tool0
RF2.Name = "ClientControl"
RF2.Parent = Tool0
A1.Name = "Sit"
A1.AnimationId = "http://www.roblox.com/asset/?id=225279725"
A1.Parent = Tool0
A2.Name = "SitR15"
A2.AnimationId = "rbxassetid://1239927101"
A2.Parent = Tool0
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
--Made by Luckymaxer

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

player = Tool.Parent.Parent
hum = player.Character.Humanoid
local anim
local anim2

if hum.RigType == Enum.HumanoidRigType.R6 then
  A3 = Instance.new("Animation")
  A3.AnimationId = "http://www.roblox.com/asset/?id=225279725"
  A3.Parent = script
  anim = hum:LoadAnimation(A3)
  anim.Looped = true
else
  A4 = Instance.new("Animation")
  A4.AnimationId = "rbxassetid://1239927101"
  A4.Parent = script
  anim2 = hum:LoadAnimation(A4)
  anim2.Looped = true
end

Players = game:GetService("Players")
Debris = game:GetService("Debris")

RemovalMonitor = script:WaitForChild("RemovalMonitor")

CarpetPieces = {
	{MeshId = 223079795, Angle = 160},
	{MeshId = 223079835, Angle = 100},
	{MeshId = 223079888, Angle = 100},
	{MeshId = 223079981, Angle = 160},
}

CarpetSize = Vector3.new(3, 0.5, 6.5)

BaseUrl = "http://www.roblox.com/asset/?id="

Rate = (1 / 10)

BasePart = Instance.new("Part")
BasePart.Material = Enum.Material.Plastic
BasePart.Shape = Enum.PartType.Block
BasePart.TopSurface = Enum.SurfaceType.Smooth
BasePart.BottomSurface = Enum.SurfaceType.Smooth
BasePart.FormFactor = Enum.FormFactor.Custom
BasePart.Size = Vector3.new(0.2, 0.2, 0.2)
BasePart.CanCollide = false
BasePart.Locked = true

ColorPart = BasePart:Clone()
ColorPart.Name = "ColorPart"
ColorPart.Reflectance = 0.25
ColorPart.Transparency = 0.1
ColorPart.Material = Enum.Material.SmoothPlastic
ColorPart.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.BackSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.TopSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.RightSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.Size = Vector3.new(1, 1, 1)
ColorPart.Anchored = true
ColorPart.CanCollide = false
ColorMesh = Instance.new("SpecialMesh")
ColorMesh.Name = "Mesh"
ColorMesh.MeshType = Enum.MeshType.FileMesh
ColorMesh.MeshId = (BaseUrl .. "9856898")
ColorMesh.TextureId = (BaseUrl .. "1361097")
ColorMesh.Scale = (ColorPart.Size * 2) --Default mesh scale is 1/2 the size of a 1x1x1 brick.
ColorMesh.Offset = Vector3.new(0, 0, 0)
ColorMesh.VertexColor = Vector3.new(1, 1, 1)
ColorMesh.Parent = ColorPart
ColorLight = Instance.new("PointLight")
ColorLight.Name = "Light"
ColorLight.Brightness = 50
ColorLight.Range = 8
ColorLight.Shadows = false
ColorLight.Enabled = true
ColorLight.Parent = ColorPart

RainbowColors = {
	Vector3.new(1, 0, 0),
	Vector3.new(1, 0.5, 0),
	Vector3.new(1, 1, 0),
	Vector3.new(0, 1, 0),
	Vector3.new(0, 1, 1),
	Vector3.new(0, 0, 1),
	Vector3.new(0.5, 0, 1)
}

Animations = {
	Sit = {Animation = Tool:WaitForChild("Sit"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
}

Grips = {
	Normal = CFrame.new(-1.5, 0, -1.64999998, 0, 0, -1, -1, 8.90154915e-05, 0, 8.90154915e-05, 1, 0),
	Flying = CFrame.new(-1.5, 0.5, -1.64999998, -1, 0, -8.99756625e-09, -8.99756625e-09, 8.10000031e-08, 1, 7.28802977e-16, 0.99999994, -8.10000103e-08)
}

Flying = false
ToolEquipped = false

ServerControl = (Tool:FindFirstChild("ServerControl") or Instance.new("RemoteFunction"))
ServerControl.Name = "ServerControl"
ServerControl.Parent = Tool

ClientControl = (Tool:FindFirstChild("ClientControl") or Instance.new("RemoteFunction"))
ClientControl.Name = "ClientControl"
ClientControl.Parent = Tool

Handle.Transparency = 0
Tool.Grip = Grips.Normal
Tool.Enabled = true

function Clamp(Number, Min, Max)
	return math.max(math.min(Max, Number), Min)
end

function TransformModel(Objects, Center, NewCFrame, Recurse)
	local Objects = ((type(Objects) ~= "table" and {Objects}) or Objects)
	for i, v in pairs(Objects) do
		if v:IsA("BasePart") then
			v.CFrame = NewCFrame:toWorldSpace(Center:toObjectSpace(v.CFrame))
		end
		if Recurse then
			TransformModel(v:GetChildren(), Center, NewCFrame, true)
		end
	end
end

function Weld(Parent, PrimaryPart)
	local Parts = {}
	local Welds = {}
	local function WeldModel(Parent, PrimaryPart)
		for i, v in pairs(Parent:GetChildren()) do
			if v:IsA("BasePart") then
				if v ~= PrimaryPart then
					local Weld = Instance.new("Weld")
					Weld.Name = "Weld"
					Weld.Part0 = PrimaryPart
					Weld.Part1 = v
					Weld.C0 = PrimaryPart.CFrame:inverse()
					Weld.C1 = v.CFrame:inverse()
					Weld.Parent = PrimaryPart
					table.insert(Welds, Weld)
				end
				table.insert(Parts, v)
			end
			WeldModel(v, PrimaryPart)
		end
	end
	WeldModel(Parent, PrimaryPart)
	return Parts, Welds
end

function CleanUp()

	for i, v in pairs(Tool:GetChildren()) do
		if v:IsA("BasePart") and v ~= Handle then
			v:Destroy()
		end
	end
end

function CreateRainbow(Length)
	local RainbowModel = Instance.new("Model")
	RainbowModel.Name = "RainbowPart"
	for i, v in pairs(RainbowColors) do
		local Part = ColorPart:Clone()
		Part.Name = "Part"
		Part.Size = Vector3.new(0.5, 0.5, Length)
		Part.CFrame = Part.CFrame * CFrame.new((Part.Size.X * (i - 1)), 0, 0)
		Part.Mesh.Scale = (Part.Size * 2)
		Part.Mesh.VertexColor = v
		Part.Light.Color = Color3.new(v.X, v.Y, v.Z)
		Part.Parent = RainbowModel
	end
	local RainbowBoundingBox = BasePart:Clone()
	RainbowBoundingBox.Name = "BoundingBox"
	RainbowBoundingBox.Transparency = 1
	RainbowBoundingBox.Size = RainbowModel:GetModelSize()
	RainbowBoundingBox.Anchored = true
	RainbowBoundingBox.CanCollide = false
	RainbowBoundingBox.CFrame = RainbowModel:GetModelCFrame()
	RainbowBoundingBox.Parent = RainbowModel
	return RainbowModel
end

function GetRainbowModel()
	local ModelName = (Player.Name .. "'s Rainbow")
	local Model = game:GetService("Workspace"):FindFirstChild(ModelName)
	if not Model then
		Model = Instance.new("Model")
		Model.Name = ModelName
		local RemovalMonitorClone = RemovalMonitor:Clone()
		RemovalMonitorClone.Disabled = false
		RemovalMonitorClone.Parent = Model
	end
	return Model
end

function CheckIfAlive()
	return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent and Player and Player.Parent) and true) or false)
end

function Activated()
	if not Tool.Enabled then
		return
	end
	Tool.Enabled = false
	Flying = not Flying
	if Flying then
		Handle.Transparency = 1
		CleanUp()
		local CarpetParts = {}
		for i, v in pairs(CarpetPieces) do
			local CarpetPart = BasePart:Clone()
			CarpetPart.CanCollide = false
			CarpetPart.Size = Vector3.new(CarpetSize.X, CarpetSize.Y, (CarpetSize.Z / #CarpetPieces))
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshType = Enum.MeshType.FileMesh
			Mesh.MeshId = (BaseUrl .. v.MeshId)
			Mesh.TextureId = (BaseUrl .. "223080038")
			Mesh.Scale = Vector3.new(1.125, 1.125, 1.125)
			Mesh.VertexColor = Vector3.new(1, 1, 1)
			Mesh.Offset = Vector3.new(0, 0, 0)
			Mesh.Parent = CarpetPart
			local Weld = Instance.new("Weld")
			Weld.Part0 = Handle
			Weld.Part1 = CarpetPart
			local XOffset = (((i == 1 or i == #CarpetPieces) and -0.005) or 0)
			local YOffset = ((-((Handle.Size.Z / 2) - (CarpetPart.Size.Z / 2))) + ((CarpetPart.Size.Z * (i - 1))) + ((i == 2 and 0.245) or (i == 3 and 0.04) or (i == #CarpetPieces and 0.28) or 0))
			Weld.C1 = CFrame.new(0, XOffset, YOffset)
			Weld.Parent = CarpetPart
			table.insert(CarpetParts, {Part = CarpetPart, Weld = Weld, InitialCFrame = Weld.C0, Angle = v.Angle})
			CarpetPart.Parent = Tool
		end	
		
		spawn(function()
			 if hum.RigType == Enum.HumanoidRigType.R6 then
                                        anim:Play()
                                     else
                                        anim2:Play()
                                     end
			Tool.Grip = Grips.Flying
		end)

		Torso.Anchored = true
		delay(.2,function()
			Torso.Anchored = false
			Torso.Velocity = Vector3.new(0,0,0)
			Torso.RotVelocity = Vector3.new(0,0,0)
		end)
		
		FlightSpin = Instance.new("BodyGyro")
		FlightSpin.Name = "FlightSpin"
		FlightSpin.P = 10000
		FlightSpin.maxTorque = Vector3.new(FlightSpin.P, FlightSpin.P, FlightSpin.P)*100
		FlightSpin.cframe = Torso.CFrame
		
		FlightPower = Instance.new("BodyVelocity")
		FlightPower.Name = "FlightPower"
		FlightPower.velocity = Vector3.new(0, 0, 0)
		FlightPower.maxForce = Vector3.new(0, 0, 0)	--Vector3.new(1,1,1)*1000000
		FlightPower.P = 1000
		
		FlightHold = Instance.new("BodyPosition")
		FlightHold.Name = "FlightHold"
		FlightHold.P = 100000
		FlightHold.maxForce = Vector3.new(0, 0, 0)
		FlightHold.position = Torso.Position
		
		FlightSpin.Parent = Torso
		FlightPower.Parent = Torso
		FlightHold.Parent = Torso
		
		spawn(function()
			local LastPlace = nil
			while Flying and ToolEquipped and CheckIfAlive() do
				
				local CurrentPlace = Handle.Position
				local Velocity = Torso.Velocity
				Velocity = Vector3.new(Velocity.X, 0, Velocity.Z).magnitude
				
				if LastPlace and Velocity > 10 then
					
					spawn(function()
						local Model = GetRainbowModel()
						local Distance = (LastPlace - CurrentPlace).magnitude
						local Length = Distance + 3.5
						
						local RainbowModel = CreateRainbow(Length)
						
						--Thanks so much to ArceusInator for helping solve this part!
						local RainbowCFrame = CFrame.new((LastPlace + (CurrentPlace - LastPlace).unit * (Distance / 2)), CurrentPlace)
						
						TransformModel(RainbowModel, RainbowModel:GetModelCFrame(), RainbowCFrame, true)
						Debris:AddItem(RainbowModel, 1)
						RainbowModel.Parent = Model
						
						if Model and not Model.Parent then
							Model.Parent = game:GetService("Workspace")
						end
						
						LastPlace = CurrentPlace
					end)
				elseif not LastPlace then
					LastPlace = CurrentPlace
				end
				
				wait(Rate)
			end
		end)
	elseif not Flying then
		Torso.Velocity = Vector3.new(0, 0, 0)
		Torso.RotVelocity = Vector3.new(0, 0, 0)
		
		for i, v in pairs({FlightSpin, FlightPower, FlightHold}) do
			if v and v.Parent then
				v:Destroy()
			end
		end
		spawn(function()
                             if hum.RigType == Enum.HumanoidRigType.R6 then
                                anim:Stop()
                             else
                                anim2:Stop()
                             end
                           Tool.Grip = Grips.Normal
		end)
	end
	
	wait(2)
	
	Tool.Enabled = true
end

function Equipped(Mouse)
	Character = Tool.Parent
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("HumanoidRootPart")
	Player = Players:GetPlayerFromCharacter(Character)
	if not CheckIfAlive() then
		return
	end
	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			Animations = {
				Sit = {Animation = Tool:WaitForChild("SitR15"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
			}
		else
			Animations = {
				Sit = {Animation = Tool:WaitForChild("Sit"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
			}
		end
	end
	Tool.Grip = CFrame.new(-1.5, 0, 0, 1.91068547e-15, -4.37113883e-08, -1, -1, -4.37113883e-08, -0, -4.37113883e-08, 1, -4.37113883e-08)
	ToolEquipped = true
end

function Unequipped()
	Flying = false
	for i, v in pairs({FlightSpin, FlightPower, FlightHold}) do
		if v and v.Parent then
			v:Destroy()
		end
	end
	CleanUp()
	Handle.Transparency = 0
	ToolEquipped = false
     if hum.RigType == Enum.HumanoidRigType.R6 then
        anim:Stop()
     else
        anim2:Stop()
     end
end

function InvokeClient(Mode, Value)
	local ClientReturn = nil
	pcall(function()
		ClientReturn = ClientControl:InvokeClient(Player, Mode, Value)
	end)
	return ClientReturn
end

CleanUp()

Tool.Activated:connect(Activated)
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)
end))
Script7.Name = "RemovalMonitor"
Script7.Parent = Script6
table.insert(cors,sandbox(Script7,function()
--Made by Luckymaxer

Model = script.Parent

Debris = game:GetService("Debris")

Removing = false

function RemoveModel()
    if Removing then
        return
    end
    local Parts = {}
    for i, v in pairs(Model:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Parts, v)
        end
    end
    if #Parts == 0 then
        Removing = true
        Model.Name = ""
        Debris:AddItem(Model, 1)
    end
end

Model.ChildRemoved:connect(function(Child)
    RemoveModel()
end)

RemoveModel()
end))
LocalScript8.Parent = Tool0
table.insert(cors,sandbox(LocalScript8,function()
--Made by Luckymaxer

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")
RunService = game:GetService("RunService")

Camera = game:GetService("Workspace").CurrentCamera

Animations = {}
LocalObjects = {}

ServerControl = Tool:WaitForChild("ServerControl")
ClientControl = Tool:WaitForChild("ClientControl")

Rate = (1 / 60)

SpeedMultiplier = 1.5

CameraSpeed = {
	X = 40*SpeedMultiplier,
	Z = 60*SpeedMultiplier
}

Controls = {
	Forward = {
		Mode = false,
		Keys = {Key = "w", ByteKey = 17}
	},
	Backward = {
		Mode = false,
		Keys = {Key = "s", ByteKey = 18}
	},
	Left = {
		Mode = false,
		Keys = {Key = "a", ByteKey = 20}
	},
	Right = {
		Mode = false,
		Keys = {Key = "d", ByteKey = 19}
	},
}

ToolEquipped = false

function HandleFlightControl()
	if not CheckIfAlive() then
		return
	end
	if FightMonitor then
		FightMonitor:disconnect()
	end
	FightMonitor = Torso.ChildAdded:connect(function(Child)
		if Flying then
			return
		end
		if Child.Name == "FlightHold" then
			local FlightSpin = Torso:FindFirstChild("FlightSpin")
			local FlightPower = Torso:FindFirstChild("FlightPower")
			local FlightHold = Torso:FindFirstChild("FlightHold")
			if not FlightSpin or not FlightPower or not FlightHold then
				return
			end
			Flying = true
			Humanoid.WalkSpeed = 0
			Humanoid.PlatformStand = true
			Humanoid.AutoRotate = false
			DisableJump(true)
			Torso.Velocity = Vector3.new(0, 0, 0)
			Torso.RotVelocity = Vector3.new(0, 0, 0)
			while Flying and FlightSpin.Parent and FlightPower.Parent and FlightHold.Parent and CheckIfAlive() do
				local NewPush = Vector3.new(0, 0, 0)
				local ForwardVector = Camera.CoordinateFrame:vectorToWorldSpace(Vector3.new(0, 0, -1))
				local SideVector = Camera.CoordinateFrame:vectorToWorldSpace(Vector3.new(-1, 0, 0))

				local CoordinateFrame = Camera.CoordinateFrame
				local localControlVector = CFrame.new(Vector3.new(0,0,0),CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToObjectSpace(Humanoid.MoveDirection)

				NewPush = NewPush + ((ForwardVector * CameraSpeed.Z * -localControlVector.z) or NewPush)
				NewPush = NewPush + ((SideVector * CameraSpeed.X * -localControlVector.x) or NewPush)

				--NewPush = (NewPush + (((Controls.Forward.Mode and not Controls.Backward.Mode) and (ForwardVector * CameraSpeed.Z)) or ((not Controls.Forward.Mode and Controls.Backward.Mode) and (ForwardVector * CameraSpeed.Z * -1)) or NewPush))
				--NewPush = (NewPush + (((Controls.Left.Mode and not Controls.Right.Mode) and (SideVector * CameraSpeed.X)) or ((not Controls.Left.Mode and Controls.Right.Mode) and (SideVector * CameraSpeed.X * -1)) or NewPush))
				FlightSpin.cframe = CFrame.new(Vector3.new(0, 0, 0), ForwardVector)
				if NewPush.magnitude < 1 then
					FlightHold.maxForce = Vector3.new(FlightHold.P, FlightHold.P, FlightHold.P)
					FlightPower.maxForce = Vector3.new(0, 0, 0)
					FlightHold.position = Torso.Position
				else
					FlightHold.maxForce = Vector3.new(0, 0, 0)
					FlightPower.maxForce = Vector3.new((FlightPower.P * 100), (FlightPower.P * 100), (FlightPower.P * 100))
				end
				FlightPower.velocity = NewPush
				wait(Rate)
			end
			Flying = false
			if CheckIfAlive() then
				Torso.Velocity = Vector3.new(0, 0, 0)
				Torso.RotVelocity = Vector3.new(0, 0, 0)
				Humanoid.WalkSpeed = 16
				Humanoid.PlatformStand = false
				Humanoid.AutoRotate = true
				DisableJump(false)
				Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
			end
		end
	end)
end

function SetAnimation(mode, value)
	if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
		for i, v in pairs(Animations) do
			if v.Animation == value.Animation then
				v.AnimationTrack:Stop()
				table.remove(Animations, i)
			end
		end
		local AnimationTrack = Humanoid:LoadAnimation(value.Animation)
		table.insert(Animations, {Animation = value.Animation, AnimationTrack = AnimationTrack})
		AnimationTrack:Play(value.FadeTime, value.Weight, value.Speed)
	elseif mode == "StopAnimation" and value then
		for i, v in pairs(Animations) do
			if v.Animation == value.Animation then
				v.AnimationTrack:Stop()
				table.remove(Animations, i)
			end
		end
	end
end

function DisableJump(Boolean)
	if PreventJump then
		PreventJump:disconnect()
	end
	if Boolean then
		PreventJump = Humanoid.Changed:connect(function(Property)
			if Property ==  "Jump" then
				Humanoid.Jump = false
			end
		end)
	end
end

function CheckIfAlive()
	return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent and Player and Player.Parent) and true) or false)
end

function KeyPress(Key, Down)
	local Key = string.lower(Key)
	local ByteKey = string.byte(Key)
	for i, v in pairs(Controls) do
		if Key == v.Keys.Key or ByteKey == v.Keys.ByteKey then
			Controls[i].Mode = Down
		end
	end
end

function Equipped(Mouse)
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("HumanoidRootPart")
	ToolEquipped = true
	if not CheckIfAlive() then
		return
	end
	Mouse.KeyDown:connect(function(Key)
		KeyPress(Key, true)
	end)
	Mouse.KeyUp:connect(function(Key)
		KeyPress(Key, false)
	end)
	Spawn(HandleFlightControl)
end

function Unequipped()
	Flying = false
	LocalObjects = {}
	for i, v in pairs(Animations) do
		if v and v.AnimationTrack then
			v.AnimationTrack:Stop()
		end
	end
	for i, v in pairs({PreventJump, FightMonitor}) do
		if v then
			v:disconnect()
		end
	end
	for i, v in pairs(Controls) do
		Controls[i].Mode = false
	end
	Animations = {}
	ToolEquipped = false
end

function InvokeServer(mode, value)
	local ServerReturn
	pcall(function()
		ServerReturn = ServerControl:InvokeServer(mode, value)
	end)
	return ServerReturn
end

function OnClientInvoke(mode, value)
	if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
		SetAnimation("PlayAnimation", value)
	elseif mode == "StopAnimation" and value then
		SetAnimation("StopAnimation", value)
	elseif mode == "PlaySound" and value then
		value:Play()
	elseif mode == "StopSound" and value then
		value:Stop()
	end
end

ClientControl.OnClientInvoke = OnClientInvoke
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)
end))
LocalScript9.Name = "MouseIcon"
LocalScript9.Parent = Tool0
table.insert(cors,sandbox(LocalScript9,function()
--Made by Luckymaxer

Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"

Tool = script.Parent

Mouse = nil

function UpdateIcon()
    if Mouse then
        Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
    end
end

function OnEquipped(ToolMouse)
    Mouse = ToolMouse
    UpdateIcon()
end

function OnChanged(Property)
    if Property == "Enabled" then
        UpdateIcon()
    end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)
end))
for i,v in pairs(mas:GetChildren()) do
        v.Parent = game:GetService("Players").LocalPlayer.Backpack
        pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
        spawn(function()
                pcall(v)
        end)
end