local player = game:GetService("Players").LocalPlayer

local ClickingCounter = 0

local Flash = Instance.new("Tool")
Flash.Name = "Flashlight"
Flash.TextureId = "http://www.roblox.com/asset/?id=115955232"
Flash.Grip = CFrame.new(0.100000001, -0.400000006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Flash.RequiresHandle = true
Flash.Parent = player.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Size = Vector3.new(0.5, 0.5, 2)
Handle.Color = Color3.fromRGB(245, 205, 48)
Handle.Parent = Flash

local s = Instance.new("Sound")
s.Name = "FlashlightSound"
s.SoundId = "http://www.roblox.com/asset/?id=115959318"
s.Parent = Handle

local mesh = Instance.new("SpecialMesh")
mesh.MeshId = "http://www.roblox.com/asset/?id=115955313"
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(0.699999988079071, 0.699999988079071, 0.699999988079071)
mesh.TextureId = "http://www.roblox.com/asset?id=115955343"
mesh.Parent = Handle

local LP = Instance.new("Part")
LP.Name = "LightPart"
LP.Transparency = 1
LP.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
LP.Parent = Flash

local FScript = Instance.new("LocalScript")
FScript.Source = [[--Stickmasterluke   sp=script.Parent   cooldown=.35  lightontexture=115984370 lightofftexture=115955343  local weld=sp:WaitForChild("Motor") local lp=sp:WaitForChild("LightPart") local handle=sp:WaitForChild("Handle") local spotlight=lp:WaitForChild("SpotLight") local spotlight2=lp:WaitForChild("SpotLight2") local mesh=handle:WaitForChild("Mesh") local sound=handle:WaitForChild("Sound") lastclick=0     sp.Equipped:connect(function(mouse) 	equipped=true 	if mouse~=nil then 		themouse=mouse 		mouse.Button1Down:connect(function() 			if lastclick+cooldown<tick() then 				spotlight.Enabled=not spotlight.Enabled 				spotlight2.Enabled=spotlight.Enabled 				mesh.TextureId="http://www.roblox.com/asset?id="..tostring((spotlight.Enabled and lightontexture) or lightofftexture) 				sound:Play() 				lastclick=tick() 			end 		end) 	end 	if weld~=nil then 		weld.Parent=sp 	end 	while equipped and sp.Parent~=nil do 		local head=sp.Parent:FindFirstChild("Head") 		if spotlight.Enabled and themouse and handle and weld and head then 			local vec=themouse.Hit.p-head.Position 			local pos=(handle.CFrame*CFrame.new(0,0,-1)).p 			local cf=CFrame.new(pos,pos+vec) 			--lp.CFrame=cf 			weld.C0=handle.CFrame:toObjectSpace(cf) 		end 		wait() 	end end)  sp.Unequipped:connect(function() 	if weld~=nil then 		weld.Parent=sp 	end 	equipped=false end)]]
FScript.Parent = Flash

local Motor = Instance.new("Motor")
Motor.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Motor.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Motor.Part0 = Handle
Motor.Part1 = LP
Motor.Parent = Flash

local Li = Instance.new("SpotLight")
Li.Angle = 70
Li.Brightness = 1
Li.Color = Color3.fromRGB(244, 255, 233)
Li.Range = 32
Li.Enabled = false
Li.Parent = LP

local SLight = Instance.new("SpotLight")
SLight.Name = "SpotLight2"
SLight.Angle = 70
SLight.Brightness = 0.75
SLight.Range = 60
SLight.Color = Color3.fromRGB(244, 255, 233)
SLight.Enabled = false
SLight.Parent = LP

local Cam = Instance.new("Camera")
Cam.CFrame = CFrame.new(-1.95060039, 10.8336658, 2.26321077, 0.97514832, 0.0402054191, -0.217874527, 3.72528985e-09, 0.983396351, 0.181470811, 0.221553117, -0.17696096, 0.958957314)
Cam.Focus = CFrame.new(-1.54999995, 10.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Cam.Parent = Flash

Flash.Activated:Connect(function()
ClickingCounter += 1
Li.Enabled = true
SLight.Enabled = true
mesh.TextureId = "rbxassetid://115984370"
s:Play()
if ClickingCounter > 1 then
ClickingCounter = 0
Li.Enabled = false
SLight.Enabled = false
mesh.TextureId = "http://www.roblox.com/asset?id=115955343"
end
end)
