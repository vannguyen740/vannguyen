-- Auto Farm Diamond - 99 Night in the Forest
-- Requires an executor such as Fluxus, Delta, Evon...

_G.Farm = true

while _G.Farm do
    task.wait()
    pcall(function()
        -- Find NPC/Monsters to farm
        for _,v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                -- Teleport to the monster
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                -- Attack
                local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                if tool then
                    tool:Activate()
                end
            end
        end
    end)
end