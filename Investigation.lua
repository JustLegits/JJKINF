-- Teleport Kill Points --

local points = {
    {254.17724609375, 232.71038818359375, 163.82400512695312},
    {254.2058868408203, 232.71038818359375, 356.49517822265625},
    {-65.25382995605469, 232.71038818359375, 349.55560302734375},
    {-342.83233642578125, 232.99391174316406, 358.6732482910156},
    {-344.41949462890625, 233.10800170898438, 166.83135986328125},
    {-349.83660888671875, 232.7104034423828, -150.8406524658203},
    {-351.4364013671875, 232.71038818359375, -342.28399658203125},
    {-72.91250610351562, 232.71038818359375, -341.09808349609375},
    {235.42422485351562, 232.71038818359375, -341.76959228515625},
    {164.44473266601562, 236.25924682617188, 6.478239059448242},
    {-36.74251174926758, 236.25924682617188, 3.7469687461853027},
    {-260.3853454589844, 236.25924682617188, 8.333927154541016}
    }
    
    local index = 1
    local function teleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(points[index][1], points[index][2], points[index][3])
    index = index + 1
    if index <= #points then
    wait(0.6)
    teleport()
    end
    end
    teleport()


---------------------------


-- Teleport Cursed Objects + Claim --
local parts = workspace.Objects.MissionItems:GetChildren()
local index = 1
local function teleport()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(parts[index].Position)
for _, part in pairs(workspace.Objects.MissionItems:GetChildren()) do
if part:FindFirstChild("Collect") then
fireproximityprompt(part:FindFirstChild("Collect"))
end
end
index = index + 1
if index <= #parts then
wait(0.4)
teleport()
end
end
teleport()




--- Insta Kill?? --

local RunService = game:GetService("RunService")
local function checkModels()
for _, v in pairs(workspace.Objects.Mobs:GetDescendants()) do
if v:IsA("Model") and v:FindFirstChild("Humanoid") then
local humanoid = v.Humanoid
humanoid.Health = 25
task.wait(0.4)
humanoid.Health = 0
end
end
end

RunService.RenderStepped:Connect(checkModels)

---- Replay ---

local function clickReplayButton()
    local gui = game:GetService("Players").LocalPlayer.PlayerGui.ReadyScreen.Frame.Replay
    if gui.Visible then
    game:GetService("GuiService").SelectedObject = gui
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.05)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    end
    end
    
    repeat
    clickReplayButton()
    wait(0.1)
    until not gui.Visible






    ---- possible auto m1 ---

    local args = {
        [1] = 2,
        [2] = {
            [1] = workspace:WaitForChild("Objects"):WaitForChild("Mobs"):WaitForChild("Katsuragi Ikemoto"):WaitForChild("Humanoid")
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Combat"):WaitForChild("M1"):FireServer(unpack(args))
    