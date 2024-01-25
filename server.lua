RegisterServerEvent('okokVehicleShop:server:TCVS:addVehicle')
AddEventHandler('okokVehicleShop:server:TCVS:addVehicle', function (tempData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local data = tempData
    data.source = src
    data.license = Player.PlayerData.license
    data.identifier = Player.PlayerData.citizenid
    TriggerEvent("realisticVehicleSystem:server:addVehicle", data)
end)