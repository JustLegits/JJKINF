local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Button.Name = "Spoofer"
Button.Parent = ScreenGui
Button.Position = UDim2.new(0, 10, 0.95, 0)
Button.Size = UDim2.new(0, 100, 0, 30)
Button.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
Button.Text = "Spoof Level"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

Button.MouseButton1Click:Connect(function()
    local player = game:GetService("Players").LocalPlayer
    player.ReplicatedData.level.Value = 450
end)


local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Button.Name = "TpButton"
Button.Parent = ScreenGui
Button.Position = UDim2.new(0.95, -100, 0.95, 0) 
Button.Size = UDim2.new(0, 100, 0, 30)
Button.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
Button.Text = "TP To boss Raids"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

Button.MouseButton1Click:Connect(function()
local TeleportService = game:GetService("TeleportService")
local gameId = 119359147980471
TeleportService:Teleport(gameId)
end)




if table.find({119359147980471, 10450270085,}, game.PlaceId) then
    return
end

-- your script goes here below

local playerGui = game:GetService("Players").LocalPlayer.PlayerGui


if playerGui.ReadyScreen and playerGui.ReadyScreen.Frame and playerGui.ReadyScreen.Frame:FindFirstChild("Teleport") then
    playerGui.ReadyScreen.Frame.Teleport:Destroy()
end




if game.Players.LocalPlayer.PlayerGui:FindFirstChild("DVDBounce") then
    game.Players.LocalPlayer.PlayerGui.DVDBounce:Destroy()
    end
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "DVDBounce"
    local TextLabel = Instance.new("TextLabel")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    TextLabel.Parent = ScreenGui
    TextLabel.Size = UDim2.new(0, 200, 0, 100)
    TextLabel.Text = "By Radiant"
    TextLabel.TextSize = 48
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Position = UDim2.new(0.3, 0, 0.3, 0)
    
    local speedX = 0.002
    local speedY = 0.002
    local colors = {Color3.new(1,0,0), Color3.new(0,1,0), Color3.new(0,0,1), Color3.new(1,0,1), Color3.new(1,1,0)}
    
    local connection = game:GetService("RunService").RenderStepped:Connect(function()
    if not ScreenGui.Parent then connection:Disconnect() return end
    local pos = TextLabel.Position
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local labelSize = TextLabel.AbsoluteSize
    
    if pos.X.Scale <= 0 or pos.X.Scale >= (viewportSize.X - labelSize.X) / viewportSize.X then
    speedX = -speedX
    TextLabel.TextColor3 = colors[math.random(1, #colors)]
    end
    
    if pos.Y.Scale <= 0 or pos.Y.Scale >= (viewportSize.Y - labelSize.Y) / viewportSize.Y then
    speedY = -speedY
    TextLabel.TextColor3 = colors[math.random(1, #colors)]
    end
    
    TextLabel.Position = UDim2.new(pos.X.Scale + speedX, 0, pos.Y.Scale + speedY, 0)
    end)






local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

TextLabel.Parent = ScreenGui
TextLabel.Position = UDim2.new(0.5, -20, 0, 10)
TextLabel.Size = UDim2.new(0, 40, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Special thanks to: _sasakii_ and Elgato for making this possible."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)


















--- Main Script ---






local player = game:GetService("Players").LocalPlayer
local character = player.Character
character:PivotTo(workspace.Objects.Spawns.BossSpawn:GetPivot())


wait(0.2)

local player = game:GetService("Players").LocalPlayer
local character = player.Character
character:PivotTo(workspace.Objects.Spawns.BossSpawn:GetPivot())

local player = game:GetService("Players").LocalPlayer
local character = player.Character
character:PivotTo(workspace.Objects.Spawns.BossSpawn:GetPivot())


local plr = game:GetService("Players").LocalPlayer
local CustomDistance = _G.CustomDistance or 2000
local PosMob = {}

function TP(Pos)
if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
plr.Character.HumanoidRootPart.CFrame = Pos
end
end

task.spawn(function()
while task.wait() do
pcall(function()
for _, v in pairs(workspace.Objects.Mobs:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
local dist = (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
if dist <= CustomDistance then
sethiddenproperty(plr, "SimulationRadius", math.huge)
v.Humanoid.Health = 0
TP(v.HumanoidRootPart.CFrame)
PosMob = v.HumanoidRootPart.CFrame
v.HumanoidRootPart.CFrame = PosMob
v.HumanoidRootPart.CanCollide = true
v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
if v.Humanoid:FindFirstChild("Animator") then v.Humanoid.Animator:Destroy() end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
end
end
end
end)
end
end)



wait(13)
local function mainScript()
    for cycle = 1, 4 do
    local function handlePromptAndGui()
    for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("ProximityPrompt") and v.Enabled then
    fireproximityprompt(v)
    break
    end
    end
    task.wait(0.3)
    for _ = 1, 9 do
    local gui = game:GetService("Players").LocalPlayer.PlayerGui.Loot.Frame.Flip
    game:GetService("GuiService").SelectedObject = gui
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.05)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    task.wait(0.15)
    end
    end
    handlePromptAndGui()
    task.wait(2)
    end
    
    task.wait(1) -- ensure everything is done
    
    local gui = game:GetService("Players").LocalPlayer.PlayerGui.ReadyScreen.Frame.Replay
    game:GetService("GuiService").SelectedObject = gui
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.05)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    end
    
mainScript()