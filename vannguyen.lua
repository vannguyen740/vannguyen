-- Auto Farm Level
while task.wait() do
    pcall(function()
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local hum = char:FindFirstChildOfClass("Humanoid")

        -- find NPC nearest
        local enemy = workspace.Enemies:FindFirstChildWhichIsA("Model")
        if enemy and enemy:FindFirstChild("Humanoid") then
            hum:MoveTo(enemy.HumanoidRootPart.Position)
            enemy.Humanoid.Health = 0
        end
    end)
end