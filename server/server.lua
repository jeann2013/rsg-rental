local QRCore = exports['qr-core']:GetCoreObject()

-- check player has funds
RegisterServerEvent('rsg-rental:server:attemptPurchase')
AddEventHandler('rsg-rental:server:attemptPurchase', function(model, spawn, price)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money.cash
    if cash >= price then
        TriggerClientEvent('rsg-rental:client:vehiclespawn', source, model, spawn, price)
    else
		TriggerClientEvent('QRCore:Notify', src, 'Not enough cash to do that!', "error")
    end
end)

-- take money from player
RegisterServerEvent('rsg-rental:server:doRent')
AddEventHandler('rsg-rental:server:doRent', function(price)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney("cash", price, "rentals")
    TriggerClientEvent('QRCore:Notify', src, 'Rental money paid, enjoy..', "success")
end)
