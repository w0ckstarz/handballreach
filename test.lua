local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local runService = game:GetService("RunService")
local reach = 60

runService.RenderStepped:Connect(function()
    local ball = workspace:FindFirstChild("Ball") 
    if not ball or not ball:IsA("BasePart") then return end

    local distance = (ball.Position - root.Position).Magnitude
    if distance <= reach then

        firetouchinterest(root, ball, 0)
        firetouchinterest(root, ball, 1)
    end
end)
