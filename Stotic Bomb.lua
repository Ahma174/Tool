mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Stotic Bomb"
tool.Activated:connect(function()
local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
 
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://17141153099"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
Anim:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17149593018"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 6

local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
launch1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(launch1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 20 particles
        end
    end


wait(0.7)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392513"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("HumanoidRootPart")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("stoicbombspeedlines")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

-- Example usage after your dash effect completes
spawn(function()
    -- Simulating end of dash effect
    wait(0)  -- Adjust the wait time as needed

    -- Enable all ParticleEmitters inside speedlinesandstuffClone
    enableParticleEmitters(speedlinesandstuffClone)

    -- Wait for 0.7 seconds
    wait(0.7)

    -- Destroy the cloned part
    speedlinesandstuffClone:Destroy()
end)

local light1 = game.ReplicatedStorage.Resources.StoicBomb["stoicbombspeedlines"].POINTOLIGHTO:Clone()
light1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(light1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392976"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392676"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 6
wait(1.4)
local boom1 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].Attachment:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 20 particles
        end
    end
wait(1.6)
local stoic1 = game.ReplicatedStorage.Resources.StoicBomb["pre"].Part.Attachment:Clone()
stoic1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(stoic1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
        end

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392854"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1
wait(0.1)
local stoic2 = game.ReplicatedStorage.Resources.StoicBomb["Main"].Part.Attachment:Clone()
stoic2.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(stoic2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
        end
wait(0.1)
light1:Destroy()
stoic1:Destroy()
stoic2:Destroy()
local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
boom2.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
boom3.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
boom4.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local TweenService = game:GetService("TweenService")
local mainModel = game.ReplicatedStorage.Resources.StoicBomb.Stage1:Clone()
local invertedModel = mainModel:FindFirstChild("Inverted")
local windModel = mainModel:FindFirstChild("Wind")
mainModel.Parent = workspace.Thrown

-- Get the character and HumanoidRootPart
local character = game.Players.LocalPlayer.Character
local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

-- Define the target scale for tweening
local targetScale = Vector3.new(250, 250, 250)

-- Tween information with slower time
local tweenInfo = TweenInfo.new(
    0.3, -- Time (in seconds) - increased for slower resizing
    Enum.EasingStyle.Linear, -- EasingStyle
    Enum.EasingDirection.Out, -- EasingDirection
    0, -- RepeatCount (0 = no repeat)
    false, -- Reverses (false = no reverse)
    0 -- DelayTime
)

-- Function to apply tween to a model
local function tweenModel(model)
    local totalTweens = 0
    local completedTweens = 0

    if not model then
        print("Error: Model is nil.")
        return
    end

    for _, part in pairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            totalTweens += 1
            local tween = TweenService:Create(part, tweenInfo, {Size = targetScale})

            print("Creating tween for part:", part.Name)

            tween.Completed:Connect(function()
                print("Tween completed for part:", part.Name)
                completedTweens += 1
                if completedTweens == totalTweens then
                    print("All tweens completed for model:", model.Name)
                    mainModel:Destroy()
                end
            end)

            tween:Play()
            print("Playing tween for part:", part.Name)
        else
            print("Skipping non-BasePart:", part.Name)
        end
    end

    if totalTweens == 0 then
        print("No BaseParts found in model:", model.Name)
        mainModel:Destroy()
    end
end

-- Function to set mainModel's CFrame to match a HumanoidRootPart
local function setModelCFrameToHumanoidRootPart(model, humanoidRootPart)
    if not model.PrimaryPart then
        print("Error: The model does not have a PrimaryPart set.")
        return
    end

    if humanoidRootPart then
        model:SetPrimaryPartCFrame(humanoidRootPart.CFrame)
        print("Model CFrame set to HumanoidRootPart CFrame.")
    else
        print("Error: HumanoidRootPart not found.")
    end
end

-- Check if the HumanoidRootPart exists
if humanoidRootPart then
    -- Set the CFrame of the mainModel
    setModelCFrameToHumanoidRootPart(mainModel, humanoidRootPart)

    -- Tween both models
    if invertedModel then
        tweenModel(invertedModel)
    else
        print("Error: Inverted model not found.")
    end

    if windModel then
        tweenModel(windModel)
    else
        print("Error: Wind model not found.")
    end
else
    print("Error: HumanoidRootPart not found.")
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
