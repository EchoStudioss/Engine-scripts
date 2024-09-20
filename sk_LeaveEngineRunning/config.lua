
Config = {}

-- Key to leave engine running (Default is "F" key, code 23)
Config.EngineRunningKey = 23  -- 23 is the 'F' key (Vehicle Exit key)

-- Notify list!
Config.NotifyPlayer = true
Config.EnableNotify = false

-- Customize notification messages
Config.EngineRunningMessage = "You left the engine running."
Config.EngineRunningNotifyType = "success" -- Types: success, error, info, etc.

-- Fuel system support (choose one)
-- Set one of these to true based on which fuel system you're using
Config.UseQbFuel = false  -- qb-fuel system
Config.UseLegacyFuel = true  -- LegacyFuel system
Config.UseEsxFuel = false  -- esx_fuel system

-- Fuel consumption rate when engine is left running
Config.FuelConsumptionRate = 0.5 -- How much fuel is drained every 10 seconds
