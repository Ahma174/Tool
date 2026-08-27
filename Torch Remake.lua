local player = game:GetService("Players").LocalPlayer

local ClickCounter = 0

local Torch = Instance.new("Tool")
Torch.Name = "Torch"
Torch.TextureId = "http://www.roblox.com/asset/?id=31596396"
Torch.Grip = CFrame.new(0, -1, 0.100000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Torch.RequiresHandle = true
Torch.Parent = player.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Size = Vector3.new(1, 2, 1)
Handle.Parent = Torch

local mesh = Instance.new("SpecialMesh")
mesh.MeshId = "http://www.roblox.com/asset/?id=31584522"
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(1, 1, 1)
mesh.TextureId = "http://www.roblox.com/asset/?id=31585584"
mesh.Parent = Handle

local s = Instance.new("Sound")
s.Name = "Light"
s.SoundId = "http://www.roblox.com/asset/?id=31836045"
s.Volume = 0.5
s.Parent = Handle

local Light = Instance.new("PointLight")
Light.Brightness = 2
Light.Color = Color3.fromRGB(255, 180, 74)
Light.Enabled = false
Light.Range = 16
Light.Parent = Handle

local Fire = Instance.new("Fire")
Fire.Color = Color3.fromRGB(255, 182, 102)
Fire.Enabled = false
Fire.Heat = 18
Fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
Fire.Size = 2
Fire.TimeScale = 1
Fire.Parent = Handle

local attach = Instance.new("Attachment")
attach.Visible = false
attach.Name = "RightGripAttachment"
attach.CFrame = CFrame.new(1.52587891e-05, -1.00442743, 0.100017548, 1, 3.59087018e-08, 3.09024522e-08, -3.59997401e-08, 0.999995708, 0.0029510539, -3.07963468e-08, -0.0029510539, 0.999995708)
attach.Axis = Vector3.new(1, -3.5999740077841125e-08, -3.079634680602794e-08)
attach.SecondaryAxis = Vector3.new(3.590870534253554e-08, 0.9999957084655762, -0.0029510539025068283)
attach.Parent = Handle

local TScript = Instance.new("Script")
TScript.Source = [[local Tool = script.Parent local debris = game:GetService("Debris") local player = nil  Fire = Tool.Handle:WaitForChild("Fire") Tool.Handle:WaitForChild("PointLight") Tool.Handle:WaitForChild("Light") Tool:WaitForChild("FireScript")  Fire.Enabled = false  Tool.Equipped:connect(function() 	player = Tool.Parent end)  Tool.Handle.Touched:connect(function(part)  	if Tool.Handle.Fire.Enabled == false then 		return 	end 	local children = part:GetChildren() 	for i = 1, #children do 		if children[i].className == "Fire" then 			return 		end 	end 	if part.Parent == player then 		return 	end  	if part.Material ==  Enum.Material.Wood then 		local fire = Tool.Handle.Fire:clone() 		fire.Parent = part 		local light=Tool.Handle.PointLight:clone() 		light.Parent=part 		 		local fireScript = Tool.FireScript:clone() 		fireScript.Parent = part 		fireScript.Disabled = false  		debris:AddItem(fire,35) 		debris:AddItem(light,35) 	end  end)  Tool.Activated:connect(function() 	Tool.Handle.Fire.Enabled = not Tool.Handle.Fire.Enabled 	Tool.Handle.PointLight.Enabled = not Tool.Handle.PointLight.Enabled 	Tool.Handle.Light:Play() end)]]
TScript.Parent = Torch

local TTScript = Instance.new("Script")
TTScript.Name = "FireScript"
TTScript.Source = [[--Fixed by Luckymaxer  local fire = script.Parent:FindFirstChild("Fire") local light = script.Parent:FindFirstChild("PointLight")  function largestSide(length,width,height)  	local large = 0 	if length > width then 		large = length 	else 		large = width 	end 	if large < height then 		large = height 	end 	if large > 30 then 		return 30 	end 	return large  end  local largestSize = largestSide(script.Parent.Size.x,script.Parent.Size.y,script.Parent.Size.z) local interval = largestSize/15  while fire and light and fire.Size <= largestSize do 	fire.Size = fire.Size + interval 	light.Range=fire.Size*6 	wait(1) 	fire = script.Parent:FindFirstChild("Fire") 	light = script.Parent:FindFirstChild("PointLight") end  wait(3)  fire = script.Parent:FindFirstChild("Fire") light = script.Parent:FindFirstChild("PointLight") while fire and light and fire.Size > 2 do 	fire.Size = fire.Size - interval 	light.Range=fire.Size*6 	wait(1) 	fire = script.Parent:FindFirstChild("Fire") 	light = script.Parent:FindFirstChild("PointLight") end  if fire and light then 	fire.Enabled = false 	light.Enabled=false end  wait(1)  script:remove()]]
TTScript.Parent = Torch

-- into activation functions now
Torch.Activated:Connect(function()
ClickCounter += 1
Light.Enabled = true
Fire.Enabled = true
s:Play()
if ClickCounter > 1 then
ClickCounter = 0
Light.Enabled = false
Fire.Enabled = false
end
end)
