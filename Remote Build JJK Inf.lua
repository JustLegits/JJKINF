local speed = 75  -- changed to 75
local speaker = game.Players.LocalPlayer
local HumanModCons = {}

local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")

local function WalkSpeedChange()
if Char and Human then
Human.WalkSpeed = speed
end
end

WalkSpeedChange()

HumanModCons.wsLoop = Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)

HumanModCons.wsCA = speaker.CharacterAdded:Connect(function(nChar)
Char, Human = nChar, nChar:WaitForChild("Humanoid")
WalkSpeedChange()
HumanModCons.wsLoop = Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
end)


local innate1 = "Demon Vessel" -- put the innate u want here, THIS IS THE 1ST SLOT
local innate2 = "Infinity" -- 2ND SLOT
local innate3 = "Star Rage" -- 3RD SLOT
local innate4 = "Curse Queen" -- 4TH SLOT
local innatef = game:GetService("Players").LocalPlayer.ReplicatedData.innates

if innate1 ~= "nil" then
    innatef["1"].Value = innate1
end

if innate2 ~= "nil" then
    innatef["2"].Value = innate2
end

if innate3 ~= "nil" then
    innatef["3"].Value = innate3
end

if innate4 ~= "nil" then
    innatef["4"].Value = innate4
end


local path = game:GetService("Players").LocalPlayer.ReplicatedData.techniques.innates
local uis = game:GetService("UserInputService")

-- set boolvalues
local techniques = {
    ["Z"] = "Star Rage: Asteroid",
    ["X"] = "Demon Vessel: Flame Arrow",
    ["C"] = "Infinity: Hollow Purple",
    ["V"] = "Domain Expansion: Unlimited Void",
    ["B"] = "Domain Expansion: Malevolent Shrine",
    ["G"] = "Maximum: Six Eyes",
    ["T"] = "Maximum: Total Collapse",
    ["Y"] = "Domain Expansion: Unequivocal Love"
}

for key, value in pairs(techniques) do
    path[key].Value = value
end

-- setup keybinds
for key, technique in pairs(techniques) do
    uis.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode[key] then
            local args = {
                [1] = technique
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Combat"):WaitForChild("Skill"):FireServer(unpack(args))
        end
    end)
end


