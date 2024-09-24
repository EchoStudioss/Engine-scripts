if Config.UseOXFuel then
    function GetFuelLevel(vehicle)
        return Entity(vehicle).state.fuel
    end

    function SetFuelLevel(vehicle, fuel)
        Entity(vehicle).state.fuel = fuel
    end

elseif Config.UseLegacyFuel then
    function GetFuelLevel(vehicle)
        return exports['LegacyFuel']:GetFuel(vehicle)
    end

    function SetFuelLevel(vehicle, fuel)
        exports['LegacyFuel']:SetFuel(vehicle, fuel)
    end

elseif Config.UseCDNFuel then
    function GetFuelLevel(vehicle)
        return exports['cdn-fuel']:GetFuel(vehicle)
    end

    function SetFuelLevel(vehicle, fuel)
        exports['cdn-fuel']:SetFuel(vehicle, fuel)
    end

elseif Config.UsePSFuel then
    function GetFuelLevel(vehicle)
        return exports['ps-fuel']:GetFuel(vehicle)
    end

    function SetFuelLevel(vehicle, fuel)
        exports['ps-fuel']:SetFuel(vehicle, fuel)
    end

  else
end
