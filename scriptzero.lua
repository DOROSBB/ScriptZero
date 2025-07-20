-- Speed Script para Brainrot
-- Hecho para Delta Executor

local speed = 50 -- Cambia el número para más o menos velocidad

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

while true do
    task.wait()
    pcall(function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * speed
        end
    end)
end
