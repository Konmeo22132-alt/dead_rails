local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")

local REJOIN_DELAY = 300 ]

pcall(function()
    StarterGui:SetCore("SendNotification", {Title = "HuneIPA - FruitFinder", Text = "Auto rejoin after 5mins", Duration = 5})
end)

task.delay(REJOIN_DELAY, function()
    local player = Players.LocalPlayer
    if player then
        pcall(function()
            StarterGui:SetCore("SendNotification", {Title = "HuneIPA - FruitFinder", Text = "Rejoin...", Duration = 5})
            TeleportService:Teleport(game.PlaceId, player)
        end)
    end
end)
