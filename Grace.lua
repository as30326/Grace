local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/mrahfWst.txt", false))()
    local window = library:new("格蕾丝【中文名】")   
    
    local creds = window:Tab("主要", "6035145364")
    local about = creds:section("内容", true)
   
   about:Textbox("速度", "tpwalking", "建议速度1", function(king)
local tspeed = king
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)
    
    about:Button(
        "SendGoatman",
        function()
            game:GetService("ReplicatedStorage").SendGoatman:Destroy()
        end
    )
    
    about:Button(
        "移除Xxx模型",
        function()
            game:GetService("ReplicatedStorage").SendWorm:Destroy()
        end
    )
    
    about:Button(
        "移除冲击怪物模型",
        function()
            game:GetService("ReplicatedStorage").Rush:Destroy()
        end
    )
    
    about:Button(
        "移除冲击怪物伤害",
        function()
            game:GetService("ReplicatedStorage").SendRush:Destroy()
        end
    )
    
    about:Button(
        "移除冲击怪物模型",
        function()
            game:GetService("ReplicatedStorage").Rush:Destroy()
        end
    )
    
    about:Button(
        "删除elkman",
        function()
            game:GetService("ReplicatedStorage").elkman:Destroy()
        end
    )
    
    about:Button(
        "删除微笑(太阳)",
        function()
            game:GetService("ReplicatedStorage").smilegui:Destroy()
        end
    )
     
    about:Button(
        "删除眼红",
        function()
            game:GetService("ReplicatedStorage").eyePrime:Destroy()
        end
    )
    
    local creds = window:Tab("其余", "6035145364")
    local about = creds:section("内容", true)
    
    about:Toggle("怪物提示","Valkiry",false,function(state)
    if state then
            local entityNames = {"rooms", "BackdoorLookman", "Rush", "AmbushMoving", "Eyes", "JeffTheKiller", "Dread", "A60", "A120"}  --enity
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()

            -- Ensure flags and plr are defined
            local flags = flags or {} --Prevent Error
            local plr = game.Players.LocalPlayer --Prevent Error2

            local function notifyEntitySpawn(entity)
                    OrionLib:MakeNotification({
                    Name = "粉色冲击怪物出现，警告WARN!!!!!!!!!!!!!!",
                    Content = "跑起来!!!!! 向前冲",
                    Time = 3
                })     
                
                                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://119569050211059"
sound:Play()

                    OrionLib:MakeNotification({
                    Name = "格蕾丝",
                    Content = "XKGLS",
                    Time = 7
                })
                
                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://4590662766"
sound:Play()
            end

            local function onChildAdded(child)
                if table.find(entityNames, child.Name) then
                    repeat
                        task.wait()
                    until plr:DistanceFromCharacter(child:GetPivot().Position) < 1000 or not child:IsDescendantOf(workspace)
                    
                    if child:IsDescendantOf(workspace) then
                        notifyEntitySpawn(child)
                    end
                end
            end

            -- Infinite loop to keep the script running and check for hintrush flag
            local running = true
            while running do
                local connection = workspace.ChildAdded:Connect(onChildAdded)
                
                repeat
                    task.wait(1) -- Adjust the wait time as needed
                until not flags.hint or not running
                
                connection:Disconnect()
            end 
        else 
            -- Close message or any other cleanup if needed
            running = false
        end
    end)
    
    about:Toggle("红色眼睛提示","Valkiry",false,function(state)
    if state then
            local entityNames = {"elkman", "BackdoorLookman", "Rush", "AmbushMoving", "Eyes", "JeffTheKiller", "Dread", "A60", "A120"}  --enity
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()

            -- Ensure flags and plr are defined
            local flags = flags or {} --Prevent Error
            local plr = game.Players.LocalPlayer --Prevent Error2

            local function notifyEntitySpawn(entity)
                    OrionLib:MakeNotification({
                    Name = "红色眼睛怪物出现，警告WARN!!!!!!!!!!!!!!",
                    Content = "不要转移视线!!!!! 跑起来!!!!",
                    Time = 3
                })     
                
                                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://119569050211059"
sound:Play()

                    OrionLib:MakeNotification({
                    Name = "格蕾丝",
                    Content = "XKGLS",
                    Time = 7
                })
                
                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://4590662766"
sound:Play()
            end

            local function onChildAdded(child)
                if table.find(entityNames, child.Name) then
                    repeat
                        task.wait()
                    until plr:DistanceFromCharacter(child:GetPivot().Position) < 1000 or not child:IsDescendantOf(workspace)
                    
                    if child:IsDescendantOf(workspace) then
                        notifyEntitySpawn(child)
                    end
                end
            end

            -- Infinite loop to keep the script running and check for hintrush flag
            local running = true
            while running do
                local connection = workspace.ChildAdded:Connect(onChildAdded)
                
                repeat
                    task.wait(1) -- Adjust the wait time as needed
                until not flags.hint or not running
                
                connection:Disconnect()
            end 
        else 
            -- Close message or any other cleanup if needed
            running = false
        end
    end)
    
    about:Toggle("蓝色眼睛提示","Valkiry",false,function(state)
    if state then
            local entityNames = {"rooms", "Worm", "Rush", "AmbushMoving", "Eyes", "JeffTheKiller", "Dread", "A60", "A120"}  --enity
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()
            local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/1mPger1J')))()

            -- Ensure flags and plr are defined
            local flags = flags or {} --Prevent Error
            local plr = game.Players.LocalPlayer --Prevent Error2

            local function notifyEntitySpawn(entity)
                    OrionLib:MakeNotification({
                    Name = "蓝色眼睛出现，警告WARN!!!!!!!!!!!!!!",
                    Content = "别看他!!!!! 向前冲",
                    Time = 3
                })     
                
                                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://119569050211059"
sound:Play()

                    OrionLib:MakeNotification({
                    Name = "格蕾丝",
                    Content = "XKGLS",
                    Time = 7
                })
                
                local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://4590662766"
sound:Play()
            end

            local function onChildAdded(child)
                if table.find(entityNames, child.Name) then
                    repeat
                        task.wait()
                    until plr:DistanceFromCharacter(child:GetPivot().Position) < 1000 or not child:IsDescendantOf(workspace)
                    
                    if child:IsDescendantOf(workspace) then
                        notifyEntitySpawn(child)
                    end
                end
            end

            -- Infinite loop to keep the script running and check for hintrush flag
            local running = true
            while running do
                local connection = workspace.ChildAdded:Connect(onChildAdded)
                
                repeat
                    task.wait(1) -- Adjust the wait time as needed
                until not flags.hint or not running
                
                connection:Disconnect()
            end 
        else 
            -- Close message or any other cleanup if needed
            running = false
        end
    end)
    
    about:Toggle("冲击怪物透视","Valkiry",false,function(state)
    EAT = state
        if EAT then
            _G.Tree2ESPInstances = {}
            local esptable = {doors = {}}

            local function createBillboard(instance, name, color)
                local bill = Instance.new("BillboardGui", game.CoreGui)
                bill.AlwaysOnTop = true
                bill.Size = UDim2.new(0, 100, 0, 50)
                bill.Adornee = instance
                bill.MaxDistance = 2000

                local mid = Instance.new("Frame", bill)
                mid.AnchorPoint = Vector2.new(0.5, 0.5)
                mid.BackgroundColor3 = color
                mid.Size = UDim2.new(0, 8, 0, 8)
                mid.Position = UDim2.new(0.5, 0, 0.5, 0)
                Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
                Instance.new("UIStroke", mid)

                local txt = Instance.new("TextLabel", bill)
                txt.AnchorPoint = Vector2.new(0.5, 0.5)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = color
                txt.Size = UDim2.new(1, 0, 0, 20)
                txt.Position = UDim2.new(0.5, 0, 0.7, 0)
                txt.Text = name
                Instance.new("UIStroke", txt)

                task.spawn(function()
                    while bill do
                        if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
                            bill.Enabled = false
                            bill.Adornee = nil
                            bill:Destroy()
                        end
                        task.wait()
                    end
                end)
            end

            local function monitorTree2()
                for _, instance in pairs(workspace:GetDescendants()) do
                    if instance:IsA("Model") and instance.Name == "Rush" then
                        createBillboard(instance, "冲击怪物", Color3.new(255, 0, 0)) -- Change color as needed
                    end
                end

                workspace.DescendantAdded:Connect(function(instance)
                    if instance:IsA("Model") and instance.Name == "Rush" then
                        createBillboard(instance, "冲击怪物", Color3.new(255, 0, 0)) -- Change color as needed
                    end
                end)
            end

            monitorTree2()
            table.insert(_G.Tree2ESPInstances, esptable)
				
        else
            if EAT then
                for _, instance in pairs(_G.Tree2ESPInstances) do
                    for _, v in pairs(instance.doors) do
                        v.delete()
                    end
                end
                _G.Tree2ESPInstances = nil
            end
        end
    end)
    
about:Toggle("眼睛透视","Valkiry",false,function(state)
    EAT = state
        if EAT then
            _G.Tree2ESPInstances = {}
            local esptable = {doors = {}}

            local function createBillboard(instance, name, color)
                local bill = Instance.new("BillboardGui", game.CoreGui)
                bill.AlwaysOnTop = true
                bill.Size = UDim2.new(0, 100, 0, 50)
                bill.Adornee = instance
                bill.MaxDistance = 2000

                local mid = Instance.new("Frame", bill)
                mid.AnchorPoint = Vector2.new(0.5, 0.5)
                mid.BackgroundColor3 = color
                mid.Size = UDim2.new(0, 8, 0, 8)
                mid.Position = UDim2.new(0.5, 0, 0.5, 0)
                Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
                Instance.new("UIStroke", mid)

                local txt = Instance.new("TextLabel", bill)
                txt.AnchorPoint = Vector2.new(0.5, 0.5)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = color
                txt.Size = UDim2.new(1, 0, 0, 20)
                txt.Position = UDim2.new(0.5, 0, 0.7, 0)
                txt.Text = name
                Instance.new("UIStroke", txt)

                task.spawn(function()
                    while bill do
                        if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
                            bill.Enabled = false
                            bill.Adornee = nil
                            bill:Destroy()
                        end
                        task.wait()
                    end
                end)
            end

            local function monitorTree2()
                for _, instance in pairs(workspace:GetDescendants()) do
                    if instance:IsA("Model") and instance.Name == "Worm" then
                        createBillboard(instance, "眼睛", Color3.new(255, 0, 0)) -- Change color as needed
                    end
                end

                workspace.DescendantAdded:Connect(function(instance)
                    if instance:IsA("Model") and instance.Name == "Worm" then
                        createBillboard(instance, "眼睛", Color3.new(255, 0, 0)) -- Change color as needed
                    end
                end)
            end

            monitorTree2()
            table.insert(_G.Tree2ESPInstances, esptable)
				
        else
            if EAT then
                for _, instance in pairs(_G.Tree2ESPInstances) do
                    for _, v in pairs(instance.doors) do
                        v.delete()
                    end
                end
                _G.Tree2ESPInstances = nil
            end
        end
    end)
    
    about:Toggle("奇怪的怪物透视","Valkiry",false,function(state)
    EAT = state
        if EAT then
            _G.Tree2ESPInstances = {}
            local esptable = {doors = {}}

            local function createBillboard(instance, name, color)
                local bill = Instance.new("BillboardGui", game.CoreGui)
                bill.AlwaysOnTop = true
                bill.Size = UDim2.new(0, 100, 0, 50)
                bill.Adornee = instance
                bill.MaxDistance = 2000

                local mid = Instance.new("Frame", bill)
                mid.AnchorPoint = Vector2.new(0.5, 0.5)
                mid.BackgroundColor3 = color
                mid.Size = UDim2.new(0, 8, 0, 8)
                mid.Position = UDim2.new(0.5, 0, 0.5, 0)
                Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
                Instance.new("UIStroke", mid)

                local txt = Instance.new("TextLabel", bill)
                txt.AnchorPoint = Vector2.new(0.5, 0.5)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = color
                txt.Size = UDim2.new(1, 0, 0, 20)
                txt.Position = UDim2.new(0.5, 0, 0.7, 0)
                txt.Text = name
                Instance.new("UIStroke", txt)

                task.spawn(function()
                    while bill do
                        if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
                            bill.Enabled = false
                            bill.Adornee = nil
                            bill:Destroy()
                        end
                        task.wait()
                    end
                end)
            end

            local function monitorTree2()
                for _, instance in pairs(workspace:GetDescendants()) do
                    if instance:IsA("Model") and instance.Name == "elkman" then
                        createBillboard(instance, "奇怪的怪物", Color3.new(128, 42, 42)) -- Change color as needed
                    end
                end

                workspace.DescendantAdded:Connect(function(instance)
                    if instance:IsA("Model") and instance.Name == "elkman" then
                        createBillboard(instance, "奇怪的怪物", Color3.new(128, 42, 42)) -- Change color as needed
                    end
                end)
            end

            monitorTree2()
            table.insert(_G.Tree2ESPInstances, esptable)
				
        else
            if EAT then
                for _, instance in pairs(_G.Tree2ESPInstances) do
                    for _, v in pairs(instance.doors) do
                        v.delete()
                    end
                end
                _G.Tree2ESPInstances = nil
            end
        end
    end)