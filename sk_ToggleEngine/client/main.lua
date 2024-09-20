
local QBCore = exports['qb-core']:GetCoreObject()
local engineOn = true -- Track engine state

-- Function to toggle engine state using "G" key
function ToggleEngine()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and GetPedInVehicleSeat(vehicle, -1) == playerPed then
        engineOn = not engineOn
        SetVehicleEngineOn(vehicle, engineOn, false, true)
    end
end

-- Event to toggle engine with "G" key
CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Detect if the player has pressed the "G" key to toggle engine state
        if vehicle and IsControlJustReleased(0, 47) then -- 47 is the key code for "G"
            ToggleEngine()
        end
    end
end)
