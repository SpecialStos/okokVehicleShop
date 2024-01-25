RegisterNetEvent(Config.EventPrefix..":createVehicleAfterBuying")
AddEventHandler(Config.EventPrefix..":createVehicleAfterBuying", function(vehicle_id, vehicle_name, id, vehicleColor, spawnLocationID)
    Citizen.Wait(1300)
   
    local spawnPos = vector4(Config.ShowVehicle[id].vehicleSpawn[spawnLocationID].x, Config.ShowVehicle[id].vehicleSpawn[spawnLocationID].y, Config.ShowVehicle[id].vehicleSpawn[spawnLocationID].z, Config.ShowVehicle[id].vehicleSpawn[spawnLocationID].h)
    local tempColor = {
        [1] = vehicleColor[1],
        [2] = vehicleColor[2],
        [3] = vehicleColor[3],
    }

    local data = {
        hash = GetHashKey(vehicle_id), --The hash number of the vehicle
        coords = spawnPos, --This is a vector 4 location. Inlcludes x,y,z,heading.
        vehicleName = vehicle_id, --The name of the vehicle in a string format - ("adder")
        color1 = tempColor, --The primary color of the vehicle
        balance = 0, --Only for QBCORE
        vehPaymentsLeft = 0,
        paymentAmount = 0, --Only for QBCORE
        financeTime = 0, --Only for QBCORE
    }
    TriggerServerEvent("okokVehicleShop:server:TCVS:addVehicle", data)
end)