-- Speed Script Brainrot (normal, solo cuando caminas)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local speed = 50 -- Puedes cambiarlo a la velocidad que quieras

local function updateSpeed()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
end

updateSpeed()

-- Cuando reapareces el speed sigue activo
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    updateSpeed()
end)
