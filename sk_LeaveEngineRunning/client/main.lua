local QBCore = exports['qb-core']:GetCoreObject()
local lastEngineRunTime = 0
local cooldownTime = 10000

function LeaveEngineRunning()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and GetPedInVehicleSeat(vehicle, -1) == playerPed then
        SetVehicleEngineOn(vehicle, true, true, false)
    end
end

function ManageEngineRunning()
    local currentTime = GetGameTimer()

    if currentTime - lastEngineRunTime >= cooldownTime then
        lastEngineRunTime = currentTime
        LeaveEngineRunning()

        if Config.EnableNotify then
            QBCore.Functions.Notify("You left the engine running.", "success")
        end
    else
        if Config.EnableNotify then
            QBCore.Functions.Notify("Please wait before leaving the engine running again.", "error")
        end
    end
end

CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle and IsControlJustReleased(0, 23) then 

            ManageEngineRunning()
        end
    end
end)
