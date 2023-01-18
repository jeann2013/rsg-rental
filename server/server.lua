local RSGCore = exports['rsg-core']:GetCoreObject()

-- check player has funds
RegisterServerEvent('rsg-rental:server:attemptPurchase')
AddEventHandler('rsg-rental:server:attemptPurchase', function(model, spawn, price)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money.cash
    if cash >= price then
        TriggerClientEvent('rsg-rental:client:vehiclespawn', source, model, spawn, price)
    else
        TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.not_enough_cash_to_do_that'), "error")
    end
end)

-- take money from player
RegisterServerEvent('rsg-rental:server:doRent')
AddEventHandler('rsg-rental:server:doRent', function(price)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney("cash", price, "rentals")
    TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.rental_money_paid_enjoy'), "success")
end)
