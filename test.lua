local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local reachDistance = 60

RunService.RenderStepped:Connect(function()
    local ball = workspace:FindFirstChild("Ball") 
    if not ball or not ball:IsA("BasePart") then return end

    local distance = (ball.Position - hrp.Position).Magnitude
    if distance <= reachDistance then

        firetouchinterest(hrp, ball, 0)
        firetouchinterest(hrp, ball, 1)
    end
end)
