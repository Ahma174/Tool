mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Stotic Bomb"
tool.Activated:connect(function()
spawn(function()
            local SoundTP = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            SoundTP.SoundId = "rbxassetid://17149593018"
            SoundTP.Playing = true 
            wait(0.5)
            local OtherSFX = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            OtherSFX.SoundId = "rbxassetid://17141392513"
            OtherSFX.Playing = true 
            wait(0.3)
            local IMMACHARGEMYLASER = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            IMMACHARGEMYLASER.SoundId = "rbxassetid://17141392976"
            IMMACHARGEMYLASER.Playing = true
            wait(1)
            local haisenbakudan = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            haisenbakudan.SoundId = "rbxassetid://17141392676"
            haisenbakudan.Playing = true
            wait(1.5)
            local BOOM = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            BOOM.SoundId = "rbxassetid://17141392854"
            BOOM.Playing = true
            end)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
            local player = game.Players.LocalPlayer
            repeat wait() until player.Character.Humanoid
            local humanoid = player.Character.Humanoid
            local character = player.Character or player.CharacterAdded:Wait()
            local UserInputService = game:GetService("UserInputService")
            
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://17141153099"
            
            local playAnim = humanoid:LoadAnimation(anim)
            anim.AnimationId = "rbxassetid://0"
            playAnim:Play()
            playAnim:AdjustSpeed(0.3)
            wait(0.3)
            playAnim:AdjustSpeed(1)
            spawn(function()
            wait(1)
            local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
        local attachments = {}
        
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Attachment") and child.Name == "Attachment" then
                table.insert(attachments, child)
            end
        end
        
        local newParent = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
        
        if newParent then
            for _, attachment in ipairs(attachments) do
                -- Attachment'Ã„Â±n konumunu ayarlayÃ„Â±n (ÃƒÂ¶rneÃ„Å¸in, aÃ…Å¸aÃ„Å¸Ã„Â±da 2 birim)
                attachment.Parent = newParent
                attachment.Position = attachment.Position + Vector3.new(0, -4, 0) -- Y ekseninde -2 birim aÃ…Å¸aÃ„Å¸Ã„Â±
                game.Players.LocalPlayer.Character.Torso.Attachment:Destroy()
            end
        end
            end)
            
            spawn(function()
            local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
            end)
            local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
            launch1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(launch1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(3) -- Emit 20 particles
                    end
                end
            wait(0.1)
            local light1 = game.ReplicatedStorage.Resources.StoicBomb["stoicbombspeedlines"].POINTOLIGHTO:Clone()
            light1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(light1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
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
            wait(0.1)
            local stoic2 = game.ReplicatedStorage.Resources.StoicBomb["Main"].Part.Attachment:Clone()
            stoic2.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(stoic2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                    end
        
                    local replicatedStorage = game:GetService("ReplicatedStorage")
        local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
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
                
                wait(0.3)
                local parent = script.Parent
                local attachmentName = "Attachment"  -- Silmek istediÃ„Å¸iniz attachment'Ã„Â±n adÃ„Â±
                
                -- Torso iÃƒÂ§indeki attachment'larÃ„Â± bul
                local torso = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
                
                if torso then
                    for _, child in ipairs(torso:GetChildren()) do
                        if child:IsA("Attachment") and child.Name == attachmentName then
                            child:Destroy()  -- Attachment'Ã„Â± sil
                        end
                    end
                end
                
        attachments:Destroy()
            wait(0.3)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
tool.Parent = game.Players.LocalPlayer.Backpack
