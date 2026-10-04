if isfile("BlueHammer.rbxm") then
print("File Exists")
else
writefile("BlueHammer.rbxm", game:HttpGet("https://github.com/Ahma174/Tool/raw/refs/heads/main/Tool%20Models/BlueHammer.rbxm"))
end

-- Original Script Style By ttyyuu1234
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
Tool0 = game:GetObjects(getcustomasset("BlueHammer.rbxm"))[1]
LocalScript2 = Instance.new("LocalScript")
Tool0.Parent = mas
Tool0.HammerLocalScript:Destroy()
task.wait(0.1)
LocalScript2.Name = "HammerLocalScript"
LocalScript2.Parent = Tool0
table.insert(cors,sandbox(LocalScript2,function()
-- Saved with DexRESerializer (https://github.com/Tesker-103/DexRecontinued/)

-- [[ luacid.dev ]] v0.2.16 decompiled (Players.kajskwjsowms.Backpack.BlueHammer.HammerLocalScript) at 2026-10-04T14:40:26Z
-- Luau bytecode version: 13 | Luau type version: 3
local BlueHammer = script.Parent
local ToolEvent = BlueHammer:WaitForChild("ToolEvent")
local Structure = workspace:WaitForChild("Structure")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local slash = game.Players.LocalPlayer.Character.Animate.toolslash.ToolSlashAnim
local toolnone = game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim -- also added this custom code

local bool1 = false
local num1 = 0
local connection = nil
local connection2 = nil
local var1 = nil
local highlight = nil

function updateTarget()
	if not var1 then
		if highlight then
			highlight:Destroy()
			highlight = nil
		end

		return
	end

	if not highlight then
		highlight = Instance.new("Highlight")
		highlight.Name = "BlueHammerHighlight"
		highlight.DepthMode = Enum.HighlightDepthMode.Occluded
		highlight.OutlineTransparency = 0.2
		highlight.FillTransparency = 0.8
		highlight.Parent = BlueHammer
	end
	highlight.Adornee = var1
end
BlueHammer.Equipped:Connect(function(arg1)
	if not arg1 then
		return
	end

	bool1 = true
	num1 += 1
	local var2 = num1

	if connection then
		connection:Disconnect()
		connection = nil
	end
	connection = arg1.Button1Down:Connect(function()
		if bool1 and arg1 and BlueHammer.Enabled then
			ToolEvent:FireServer("BreakPart", arg1.Target)
		end
	end)

	if connection2 then
		connection2:Disconnect()
		connection2 = nil
	end
	local function updateMouse() -- Luacid: Inlined by compiler; 1 call site recovered
		if arg1 then
			arg1.Icon = BlueHammer.Enabled and "rbxasset://textures\\GunCursor.png" or "rbxasset://textures\\GunWaitCursor.png"
		end
	end

	updateMouse()
	connection2 = BlueHammer:GetPropertyChangedSignal("Enabled"):Connect(updateMouse)
	local bool2 = false

	while var2 == num1 and arg1 and bool1 do
		local var3 = nil
		local target = arg1.Target
		if target then
			local blueHammerParent = BlueHammer.Parent
			if blueHammerParent then
				local humanoidRootPart = blueHammerParent:FindFirstChild("HumanoidRootPart")
				local humanoid = blueHammerParent:FindFirstChildOfClass("Humanoid")
				if humanoidRootPart
					and humanoid
					and humanoid.Health > 0
					and target.Size.X < 30
					and target.Size.Y < 30
					and target.Size.Z < 30
				then
					if (target.Position - humanoidRootPart.Position).magnitude <= 15 then
						var3 = target
						bool2 = true
					else
						var3 = target
						bool2 = false
					end
				end
			end
		end
		if var3 ~= var1 then
			var1 = var3
			updateTarget()
		end
		if highlight then
			local isDescendantOf = bool2 and var1 and var1.Parent and var1:IsDescendantOf(Structure)
			highlight.OutlineColor = isDescendantOf and Color3.new(0, 0.984314, 1) or Color3.new(0.164706, 0.184314, 0.227451)
			highlight.FillColor = isDescendantOf and Color3.new(0.352941, 0.968627, 1) or Color3.new(0.278431, 0.313725, 0.384314)
		end
		task.wait()
	end
end)

BlueHammer.Unequipped:Connect(function()
	bool1 = false
	if connection then
		connection:Disconnect()
		connection = nil
	end
	if connection2 then
		connection2:Disconnect()
		connection2 = nil
	end
	var1 = nil
	updateTarget()
end)

-- I added this code to make it functional
local Sound = script.Parent.Handle.HitSound
local Particle = script.Parent.Handle.HitParticleEmitter
local debounce = false
local hum = game.Players.LocalPlayer.Character.Humanoid
local smash = hum:LoadAnimation(slash)
local none = hum:LoadAnimation(toolnone)

BlueHammer.Activated:Connect(function()
if debounce then
 return
end

debounce = true
local hpos = Mouse.Target

if hpos and hpos:IsA("BasePart") then
 local una = hpos
 smash:Play()
 if not smash.IsPlaying == true then
  none:Play()
 end
 local children = una:GetChildren()
 una.Anchored = false
 for _, v in ipairs(children) do
   if v:IsA("JointInstance") or v:IsA("WeldConstraint") then
     v:Destroy()
  end
 end
 Particle.Enabled = true
 Sound:Play()
 task.wait(0.5)
 Particle.Enabled = false
end
task.wait(0.5)
debounce = false
end)
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
