-- Original Script Style By ttyyuu1234
-- The LocalScript is Modified to get the Animations (A1, A2, A3, A4)

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
Tool0 = game:GetObjects("rbxassetid://16811118363")[1]
Tool0.Parent = mas
Tool0.Handle.BillboardGui:Destroy()
Script1 = Instance.new("Script")
LocalScript2 = Instance.new("LocalScript")
A1 = Instance.new("Animation")
A2 = Instance.new("Animation")
A3 = Instance.new("Animation")
A4 = Instance.new("Animation")

A1.Name = "BalloonHoldAnimation"
A1.AnimationId = "http://www.roblox.com/asset?id=148831127"
A1.Parent = Tool0

A2.Name = "BalloonHoldAnimationR15"
A2.AnimationId = "http://www.roblox.com/asset?id=569145055"
A2.Parent = Tool0

A3.Name = "BalloonFloatAnimation"
A3.AnimationId = "http://www.roblox.com/asset?id=148840371"
A3.Parent = Tool0

A4.Name = "BalloonHoldAnimation"
A4.AnimationId = "http://www.roblox.com/asset?id=569145055"
A4.Parent = Tool0

Script1.Name = "RemovalMonitor"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
--


local Tool = script.Parent
local handle=Tool:WaitForChild("Handle",5)
local upAndAway = false
local humanoid = nil
local head = nil
local upAndAwayForce=handle.BodyForce
isfloating=false

local equalizingForce = 236 / 1.2 -- amount of force required to levitate a mass
local gravity = 1.05 -- things float at > 1

local height = nil
local maxRise =  75

function float(lift)
    if not isfloating then
        isfloating=true
        while equipped do
            lift=recursiveGetLift(Tool.Parent)
            upAndAwayForce.force=Vector3.new(0,lift*.8,0)
            --if Tool.Handle.Position.y > height + maxRise then
            if Tool.Handle.Position.y>300 then
                equipped=false
                Tool.Handle.Pop:Play()
                Tool.GripPos=Vector3.new(0,-.4,0)
                Tool.Handle.Mesh.MeshId = "http://www.roblox.com/asset/?id=26725510"
            end
            for i=1,4 do
                updateBalloonSize()
                wait(1/20)
            end
        end
        upAndAwayForce.force=Vector3.new(0,0,0)
        isfloating=false
    end
end

function onEquipped()
    Tool.Handle.Mesh.MeshId="http://www.roblox.com/asset/?id=25498565"
    equipped = true
    --[[Tool.GripPos = Vector3.new(0,-1,0)
    Tool.GripForward = Vector3.new(0,1,0)
    Tool.GripRight = Vector3.new(0,0,-1)
    Tool.GripUp = Vector3.new(1,0,0)]]
    Tool.Grip = CFrame.new(0,-1,0,0,1,0,0,0,-1,-1,0,0)
    local hrp = Tool.Parent:FindFirstChild('HumanoidRootPart')
    if hrp then
        height = hrp.Position.y
    else
        height = 0
    end
    lift=recursiveGetLift(Tool.Parent)
    float(lift)
end

function onUnequipped()
    equipped = false
    --[[Tool.GripForward = Vector3.new(1,0,0)
    Tool.GripRight = Vector3.new(0,0,1)
    Tool.GripUp = Vector3.new(0,1,0)]]
    handle.Mesh.Scale = Vector3.new(1,1,1)
end

Tool.Unequipped:connect(onUnequipped)
Tool.Equipped:connect(onEquipped)

function recursiveGetLift(node)
    local m = 0
    local c = node:GetChildren()
    if (node:FindFirstChild("Head") ~= nil) then head = node:FindFirstChild("Head") end -- nasty hack to detect when your parts get blown off
        
        for i=1,#c do
            if c[i]:IsA("BasePart") then    
                if (head ~= nil and (c[i].Position - head.Position).magnitude < 10) then -- GROSS
                    if c[i].Name == "Handle" then
                        m = m + (c[i]:GetMass() * equalizingForce * 1) -- hack that makes hats weightless, so different hats don't change your jump height
                    else
                        m = m + (c[i]:GetMass() * equalizingForce * gravity)
                    end
                end
            end
            m = m + recursiveGetLift(c[i])
        end
        return m
    end
    
    function updateBalloonSize()
        local range=(height+maxRise)-Tool.Handle.Position.y
        --[[if range<maxRise/3 then
        Tool.Handle.Mesh.Scale=Vector3.new(1,1,1)*2
    elseif range<maxRise*(2/3) then
        Tool.Handle.Mesh.Scale=Vector3.new(1,1,1)*1.5
    else
        Tool.Handle.Mesh.Scale=Vector3.new(1,1,1)
    end]]
    Tool.Handle.Mesh.Scale=Vector3.new(1,1,1)*(2-math.min(1,math.max(0,range/maxRise)))
end

--[[
while true do
    wait(1)
    script.Parent.Handle.BillboardGui.TextLabel1.Text = 'Server: '..tostring(script.Parent.Handle.BodyForce.force.Y)
    randomshade = .8+math.random()*.2
    script.Parent.Handle.BillboardGui.TextLabel1.BackgroundColor3 = Color3.new(randomshade,randomshade,randomshade)
end
]]
end))
LocalScript2.Name = "BalloonAnimScript"
LocalScript2.Parent = Tool0
table.insert(cors,sandbox(LocalScript2,function()
--Made by Stickmasterluke


local sp=script.Parent


wait()    --gets previous character or soemthing bad if no wait here
local plr=game.Players.LocalPlayer
local sharedstorage=game:GetService("ReplicatedStorage")

while not plr.Character and plr.Character.Parent==game.Workspace do
    wait()
end
local balloonholdanim
local balloonfloatanim
local h = plr.Character:WaitForChild("Humanoid",5)
if h.RigType == Enum.HumanoidRigType.R6 then
    balloonholdanim = h:LoadAnimation(script.Parent:WaitForChild("BalloonHoldAnimation"))
    balloonfloatanim = h:LoadAnimation(script.Parent:WaitForChild("BalloonFloatAnimation"))
else
    balloonholdanim = h:LoadAnimation(script.Parent:WaitForChild("BalloonHoldAnimationR15"))
    balloonfloatanim = h:LoadAnimation(script.Parent:WaitForChild("BalloonFloatAnimationR15"))
end

function setstate(state)
    if equipped then
        if state=="FreeFalling" or state=="FallingDown" or state=="PlatformStanding" then
            if balloonfloatanim then
                balloonfloatanim:Play()
            end
        else
            if balloonfloatanim then
                balloonfloatanim:Stop(.5)
            end
        end
    end
end

h.Seated:connect(function() setstate("Seated") end)
    h.Running:connect(function() setstate("Running") end)
        h.Jumping:connect(function() setstate("Jumping") end)
            h.Climbing:connect(function() setstate("Climbing") end)
                h.Swimming:connect(function() setstate("Swimming") end)
                    h.GettingUp:connect(function() setstate("GettingUp") end)
                        h.FreeFalling:connect(function() setstate("FreeFalling") end)
                            h.FallingDown:connect(function() setstate("FallingDown") end)
                                h.PlatformStanding:connect(function() setstate("PlatformStanding") end)
                                    
                                    sp.Equipped:connect(function()
                                        equipped=true
                                        balloonholdanim:Play()
                                    end)
                                    
                                    sp.Unequipped:connect(function()
                                        equipped=false
                                        balloonfloatanim:Stop(.5)
                                        balloonholdanim:Stop(.5)
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
