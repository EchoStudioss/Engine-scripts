local QBCore = exports['qb-core']:GetCoreObject()
local lastEngineRunTime = 0
local cooldownTime = 10000 -- 10 seconds cooldown
local engineOn = true -- Track engine state

-- Function to leave engine running
function LeaveEngineRunning()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and GetPedInVehicleSeat(vehicle, -1) == playerPed then
        SetVehicleEngineOn(vehicle, true, true, false)
    end
end

-- Function to manage cooldown and engine state
function ManageEngineRunning()
    local currentTime = GetGameTimer()

    if currentTime - lastEngineRunTime >= cooldownTime then
        lastEngineRunTime = currentTime -- Reset cooldown timer
        LeaveEngineRunning()

        -- Check if notifications are enabled
        if Config.EnableNotify then
            QBCore.Functions.Notify("You left the engine running.", "success")
        end
    else
        if Config.EnableNotify then
            QBCore.Functions.Notify("Please wait before leaving the engine running again.", "error")
        end
    end
end

-- Event for leaving engine running with "F" key and cooldown
CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Detect if the player has pressed the F key
        if vehicle and IsControlJustReleased(0, 23) then -- 23 is the key code for "F"
            -- Manage cooldown and engine running state
            ManageEngineRunning()
        end
    end
end)
