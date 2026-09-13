-- Original Script Style By ttyyuu1234
-- Modified the LocalScripts so it plays the animations (A1, A2, A3, A4)
-- Ai Was Used on this only to make the LocalScripts OnClientEvent to Activated Which I thought of that anyway lol

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
Tool0 = game:GetObjects("rbxassetid://6857802681" )[1]
Tool0.Parent = mas
Script1 = Instance.new("Script")
LocalScript2 = Instance.new("LocalScript")
A1 = Instance.new("Animation")
A2 = Instance.new("Animation")
A3 = Instance.new("Animation")
A4 = Instance.new("Animation")

A1.Name = "AppleEquipAnim"
A1.AnimationId = "http://www.roblox.com/Asset?ID=184748496"
A1.Parent = Tool0

A2.Name = "AppleEquipAnimR15"
A2.AnimationId = "rbxassetid://572252167"
A2.Parent = Tool0

A3.Name = "AppleEatAnim"
A3.AnimationId = "http://www.roblox.com/Asset?ID=184720066"
A3.Parent = Tool0

A4.Name = "AppleEatAnimR15"
A4.AnimationId = "http://www.roblox.com/Asset?ID=572280355"
A4.Parent = Tool0

Script1.Name = "AppleScript"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
--Made by Stickmasterluke
 
 
local sp=script.Parent
 
 
local healamount=10
local extrawait=0
 
local handle=sp:WaitForChild('Handle',5)
local eatsound=handle:WaitForChild('EatSound',5)
local sparkles=handle:WaitForChild('Sparkles',5)
 
local equipped=false
local check=true
local chr=nil
local h=nil
local plr=nil
local equipinstant=nil
 
 
sp.Activated:connect(function()
    if check and equipped and h and h.Health>0 then
        check=false
        wait(1)
        if h.Health>0 and equipped then
            --print('Healing',h.Parent,h.Health,'to',h.Health+healamount)
            if h.Health < 100 then    --Will overheal without this check
                h:TakeDamage(-healamount)
            end
            --h.Health=h.Health+healamount
            if eatsound then
                eatsound:Play()
            end
        end
        wait(.62+extrawait)
        check=true
    end
end)
 
sp.Equipped:connect(function(mouse)
    equipped=true
    chr=sp.Parent
    plr=game.Players:GetPlayerFromCharacter(chr)
    h=chr:FindFirstChild('Humanoid')
    
    local myequipinstant={}
    equipinstant=myequipinstant
    wait(2)
    if equipped and myequipinstant==equipinstant then
        sparkles.Enabled=true
        wait(.3)
        sparkles.Enabled=false
    end
end)
 
sp.Unequipped:connect(function()
    equipped=false
end)
end))
LocalScript2.Name = "AppleLocalScript"
LocalScript2.Parent = Tool0
table.insert(cors,sandbox(LocalScript2,function()
--Made by Stickmasterluke


local sp=script.Parent


local plr = game.Players.LocalPlayer
local event = sp:WaitForChild('Event')

local eatanimloaded = nil
local equipanimloaded = nil
local chr = nil
local h = nil


sp.Activated:Connect(function()
        if eatanimloaded then
            eatanimloaded:Play()
        end
end)

sp.Equipped:connect(function()
    local eatAnimation
    local equipAnimation
    if not chr or not h then
        chr=plr.Character
        h=chr:FindFirstChild('Humanoid')
    end
    if h then
        if h.RigType == Enum.HumanoidRigType.R6 then
            eatAnimation = script.Parent:WaitForChild("AppleEatAnim")
            if not eatanimloaded then
                eatanimloaded = h:LoadAnimation(eatAnimation)
            end
            equipAnimation = script.Parent:WaitForChild("AppleEquipAnim")
            if not equipanimloaded then
                equipanimloaded = h:LoadAnimation(equipAnimation)
            end
        else
            eatAnimation = script.Parent:WaitForChild("AppleEatAnimR15")
            if not eatanimloaded then
                eatanimloaded = h:LoadAnimation(eatAnimation)
            end
            equipAnimation = script.Parent:WaitForChild("AppleEquipAnimR15")
            if not equipanimloaded then
                equipanimloaded = h:LoadAnimation(equipAnimation)
            end
        end
    end
    if equipanimloaded then
        equipanimloaded:Play()
    end
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
