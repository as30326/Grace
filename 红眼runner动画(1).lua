local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomAnimationController"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 250, 0, 220)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -90) 
MainFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 25)
TitleBar.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
TitleBar.Parent = MainFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Size = UDim2.new(1, -30, 1, 0)
TitleLabel.Position = UDim2.new(0, 5, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "动画控制器"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextSize = 14
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -25, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 14
CloseButton.Parent = TitleBar

local AnimationGroups = Instance.new("Frame")
AnimationGroups.Name = "AnimationGroups"
AnimationGroups.Size = UDim2.new(1, 0, 1, -25)
AnimationGroups.Position = UDim2.new(0, 0, 0, 25)
AnimationGroups.BackgroundTransparency = 1
AnimationGroups.Parent = MainFrame

local ZapperTitle = Instance.new("TextLabel")
ZapperTitle.Name = "ZapperTitle"
ZapperTitle.Size = UDim2.new(1, -10, 0, 20)
ZapperTitle.Position = UDim2.new(0, 5, 0, 5)
ZapperTitle.BackgroundTransparency = 1
ZapperTitle.Text = "Zapper动画"
ZapperTitle.TextColor3 = Color3.new(1, 1, 1)
ZapperTitle.TextSize = 14
ZapperTitle.TextXAlignment = Enum.TextXAlignment.Left
ZapperTitle.Parent = AnimationGroups

local ZapperButtons = Instance.new("Frame")
ZapperButtons.Name = "ZapperButtons"
ZapperButtons.Size = UDim2.new(1, 0, 0, 30)
ZapperButtons.Position = UDim2.new(0, 0, 0, 25)
ZapperButtons.BackgroundTransparency = 1
ZapperButtons.Parent = AnimationGroups

local ZapperStart = Instance.new("TextButton")
ZapperStart.Name = "ZapperStart"
ZapperStart.Size = UDim2.new(0.45, -5, 0, 30)
ZapperStart.Position = UDim2.new(0, 5, 0, 0)
ZapperStart.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
ZapperStart.Text = "开始"
ZapperStart.TextColor3 = Color3.new(1, 1, 1)
ZapperStart.TextSize = 14
ZapperStart.Parent = ZapperButtons

local ZapperStartCorner = Instance.new("UICorner")
ZapperStartCorner.CornerRadius = UDim.new(0, 4)
ZapperStartCorner.Parent = ZapperStart

local ZapperStop = Instance.new("TextButton")
ZapperStop.Name = "ZapperStop"
ZapperStop.Size = UDim2.new(0.45, -5, 0, 30)
ZapperStop.Position = UDim2.new(0.5, 5, 0, 0)
ZapperStop.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
ZapperStop.Text = "停止"
ZapperStop.TextColor3 = Color3.new(1, 1, 1)
ZapperStop.TextSize = 14
ZapperStop.Parent = ZapperButtons

local ZapperStopCorner = Instance.new("UICorner")
ZapperStopCorner.CornerRadius = UDim.new(0, 4)
ZapperStopCorner.Parent = ZapperStop

local CavalryTitle = Instance.new("TextLabel")
CavalryTitle.Name = "CavalryTitle"
CavalryTitle.Size = UDim2.new(1, -10, 0, 20)
CavalryTitle.Position = UDim2.new(0, 5, 0, 60)
CavalryTitle.BackgroundTransparency = 1
CavalryTitle.Text = "胸甲骑兵动画"
CavalryTitle.TextColor3 = Color3.new(1, 1, 1)
CavalryTitle.TextSize = 14
CavalryTitle.TextXAlignment = Enum.TextXAlignment.Left
CavalryTitle.Parent = AnimationGroups

local CavalryButtons = Instance.new("Frame")
CavalryButtons.Name = "CavalryButtons"
CavalryButtons.Size = UDim2.new(1, 0, 0, 30)
CavalryButtons.Position = UDim2.new(0, 0, 0, 85)
CavalryButtons.BackgroundTransparency = 1
CavalryButtons.Parent = AnimationGroups

local CavalryStart = Instance.new("TextButton")
CavalryStart.Name = "CavalryStart"
CavalryStart.Size = UDim2.new(0.45, -5, 0, 30)
CavalryStart.Position = UDim2.new(0, 5, 0, 0)
CavalryStart.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
CavalryStart.Text = "开始"
CavalryStart.TextColor3 = Color3.new(1, 1, 1)
CavalryStart.TextSize = 14
CavalryStart.Parent = CavalryButtons

local CavalryStartCorner = Instance.new("UICorner")
CavalryStartCorner.CornerRadius = UDim.new(0, 4)
CavalryStartCorner.Parent = CavalryStart

local CavalryStop = Instance.new("TextButton")
CavalryStop.Name = "CavalryStop"
CavalryStop.Size = UDim2.new(0.45, -5, 0, 30)
CavalryStop.Position = UDim2.new(0.5, 5, 0, 0)
CavalryStop.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
CavalryStop.Text = "停止"
CavalryStop.TextColor3 = Color3.new(1, 1, 1)
CavalryStop.TextSize = 14
CavalryStop.Parent = CavalryButtons

local CavalryStopCorner = Instance.new("UICorner")
CavalryStopCorner.CornerRadius = UDim.new(0, 4)
CavalryStopCorner.Parent = CavalryStop

local InvincibleTitle = Instance.new("TextLabel")
InvincibleTitle.Name = "InvincibleTitle"
InvincibleTitle.Size = UDim2.new(1, -10, 0, 20)
InvincibleTitle.Position = UDim2.new(0, 5, 0, 120)
InvincibleTitle.BackgroundTransparency = 1
InvincibleTitle.Text = "可能会下沉一段"
InvincibleTitle.TextColor3 = Color3.new(1, 1, 1)
InvincibleTitle.TextSize = 14
InvincibleTitle.TextXAlignment = Enum.TextXAlignment.Left
InvincibleTitle.Parent = AnimationGroups

local InvincibleButton = Instance.new("TextButton")
InvincibleButton.Name = "InvincibleButton"
InvincibleButton.Size = UDim2.new(1, -10, 0, 30)
InvincibleButton.Position = UDim2.new(0, 5, 0, 145)
InvincibleButton.BackgroundColor3 = Color3.fromRGB(245, 158, 11)
InvincibleButton.Text = "自身无敌"
InvincibleButton.TextColor3 = Color3.new(1, 1, 1)
InvincibleButton.TextSize = 14
InvincibleButton.Parent = AnimationGroups

local InvincibleButtonCorner = Instance.new("UICorner")
InvincibleButtonCorner.CornerRadius = UDim.new(0, 4)
InvincibleButtonCorner.Parent = InvincibleButton

local function touchSand()
    local char = LocalPlayer.Character
    if not char then return end

    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local sand = workspace:FindFirstChild("Quicksand")
    if not sand then return end

    local touch = sand:FindFirstChild("TouchInterest")
    if not touch then return end

    firetouchinterest(root, sand, 0)
end

InvincibleButton.MouseButton1Click:Connect(touchSand)

local flags = {
    ZapperAnim = false,
    CavalryAnim = false
}
local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

LocalPlayer.CharacterAdded:Connect(function(newChar)
    flags.ZapperAnim = false
    flags.CavalryAnim = false

    newChar:WaitForChild("Humanoid")
    char = newChar
end)

local dragging, dragStart, startPos
TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    flags.ZapperAnim = false
    flags.CavalryAnim = false
    ScreenGui:Destroy()
end)

local function startZapperAnimation()
    if flags.ZapperAnim or flags.CavalryAnim then return end
    flags.ZapperAnim = true
    
    local walk = false
    local idle = false
    
    task.spawn(function()
        while flags.ZapperAnim do
            task.wait(0.0005)
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid") or char:FindFirstChildOfClass("AnimationController")
                if not hum then continue end
                for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                    if tostring(track) == "Hold" or tostring(track) == "WalkAnim" then
                        track:Stop()
                    end
                end

                local humanoid = char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    if humanoid.MoveDirection.Magnitude < 0.1 then
                        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                            if tostring(track) == "ZapperWalk" then
                                track:Stop()
                                walk = false
                            end
                        end
                        if not idle then
                            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                                if tostring(track) == "ZapperIdle" then
                                    track:Stop()
                                end
                            end
                            
                            local anim = Instance.new("Animation")
                            anim.Name = "ZapperIdle"
                            anim.AnimationId = "rbxassetid://106677282036839"
                            local track = humanoid:LoadAnimation(anim)
                            track:Play()
                            idle = true
                        end
                    else
                        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                            if tostring(track) == "ZapperIdle" then
                                track:Stop()
                                idle = false
                            end
                        end
                        if not walk then
                            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                                if tostring(track) == "ZapperWalk" then
                                    track:Stop()
                                end
                            end
                            
                            local anim = Instance.new("Animation")
                            anim.Name = "ZapperWalk"
                            anim.AnimationId = "rbxassetid://126901345112974"
                            local track = humanoid:LoadAnimation(anim)
                            track:Play()
                            walk = true
                        end
                    end
                end
            end
        end
        local hum = char:FindFirstChildOfClass("Humanoid") or char:FindFirstChildOfClass("AnimationController")
        if hum then
            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                if tostring(track) == "ZapperWalk" or tostring(track) == "ZapperIdle" then
                    track:Stop()
                end
            end
        end
    end)
end

local function stopZapperAnimation()
    flags.ZapperAnim = false
end

local function startCavalryAnimation()
    if flags.CavalryAnim or flags.ZapperAnim then return end
    flags.CavalryAnim = true
    
    local walk = false
    local idle = false
    
    task.spawn(function()
        while flags.CavalryAnim do
            task.wait(0.0005)
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid") or char:FindFirstChildOfClass("AnimationController")
                if not hum then continue end
                for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                    if tostring(track) == "Hold" or tostring(track) == "WalkAnim" then
                        track:Stop()
                    end
                end

                local humanoid = char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    if humanoid.MoveDirection.Magnitude < 0.1 then
                        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                            if tostring(track) == "CavalryWalk" then
                                track:Stop()
                                walk = false
                            end
                        end 
                        if not idle then
                            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                                if tostring(track) == "CavalryIdle" then
                                    track:Stop()
                                end
                            end
                            
                            local anim = Instance.new("Animation")
                            anim.Name = "CavalryIdle"
                            anim.AnimationId = "rbxassetid://86872882948118"
                            local track = humanoid:LoadAnimation(anim)
                            track:Play()
                            idle = true
                        end
                    else
                        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                            if tostring(track) == "CavalryIdle" then
                                track:Stop()
                                idle = false
                            end
                        end
                        if not walk then
                            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                                if tostring(track) == "CavalryWalk" then
                                    track:Stop()
                                end
                            end
                            
                            local anim = Instance.new("Animation")
                            anim.Name = "CavalryWalk"
                            anim.AnimationId = "rbxassetid://83107715679081"
                            local track = humanoid:LoadAnimation(anim)
                            track:Play()
                            walk = true
                        end
                    end
                end
            end
        end
        local hum = char:FindFirstChildOfClass("Humanoid") or char:FindFirstChildOfClass("AnimationController")
        if hum then
            for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                if tostring(track) == "CavalryWalk" or tostring(track) == "CavalryIdle" then
                    track:Stop()
                end
            end
        end
    end)
end

local function stopCavalryAnimation()
    flags.CavalryAnim = false
end

ZapperStart.MouseButton1Click:Connect(startZapperAnimation)
ZapperStop.MouseButton1Click:Connect(stopZapperAnimation)
CavalryStart.MouseButton1Click:Connect(startCavalryAnimation)
CavalryStop.MouseButton1Click:Connect(stopCavalryAnimation)