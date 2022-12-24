local RSGCore = exports['rsg-core']:GetCoreObject()
local rentals
local name = nil
local location = nil
local spawn = nil

-- prompts
Citizen.CreateThread(function()
    for rentals, v in pairs(Config.RentalLocations) do
        local name = v.name
        local location = v.location
        local spawn = v.spawn
        exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-rental:client:menu',
            args = { name, location, spawn },
        })
        if v.showblip == true then
            local RentalBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(RentalBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(RentalBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, RentalBlip, Config.Blip.blipName)
        end
    end
end)

-- draw marker if set to true in config
CreateThread(function()
    while true do
        local sleep = 0
        for rentals, v in pairs(Config.RentalLocations) do
            if v.showmarker == true then
                Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)
            end
        end
        Wait(sleep)
    end
end)

-- rental menu
RegisterNetEvent('rsg-rental:client:menu', function(name, location, spawn)
    exports['rsg-menu']:openMenu({
        {
            header = name,
            isMenuHeader = true,
        },
        {
            header = "Wooden Cart 1",
            txt = "rent this cart for $"..Config.CartRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "CART03",
                    spawn = spawn,
                    price = Config.CartRentalPrice,
                }
            }
        },
        {
            header = "Wooden Cart 2",
            txt = "rent this cart for $"..Config.CartRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "CART04",
                    spawn = spawn,
                    price = Config.CartRentalPrice,
                }
            }
        },
        {
            header = "Wooden Cart 3",
            txt = "rent this cart for $"..Config.CartRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "CART06",
                    spawn = spawn,
                    price = Config.CartRentalPrice,
                }
            }
        },
        {
            header = "Luxurious Buggy 1",
            txt = "rent this cart for $"..Config.BuggyRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "BUGGY01",
                    spawn = spawn,
                    price = Config.BuggyRentalPrice,
                }
            }
        },
        {
            header = "Luxurious Buggy 2",
            txt = "rent this cart for $"..Config.BuggyRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "BUGGY02",
                    spawn = spawn,
                    price = Config.BuggyRentalPrice,
                }
            }
        },
        {
            header = "Luxurious Buggy 3",
            txt = "rent this cart for $"..Config.BuggyRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "BUGGY03",
                    spawn = spawn,
                    price = Config.BuggyRentalPrice,
                }
            }
        },
        {
            header = "Special Transport 1",
            txt = "rent this cart for $"..Config.CoachRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "COACH2",
                    spawn = spawn,
                    price = Config.CoachRentalPrice,
                }
            }
        },
        {
            header = "Special Transport 2",
            txt = "rent this cart for $"..Config.CoachRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "COACH3",
                    spawn = spawn,
                    price = Config.CoachRentalPrice,
                }
            }
        },
        {
            header = "Special Transport 3",
            txt = "rent this cart for $"..Config.CoachRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "COACH4",
                    spawn = spawn,
                    price = Config.CoachRentalPrice,
                }
            }
        },
        {
            header = "Special Transport 4",
            txt = "rent this cart for $"..Config.CoachRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "COACH5",
                    spawn = spawn,
                    price = Config.CoachRentalPrice,
                }
            }
        },
        {
            header = "Special Transport 5",
            txt = "rent this cart for $"..Config.CoachRentalPrice..".00",
            icon = "fas fa-file-invoice-dollar",
            params = {
                event = 'rsg-rental:client:attemptvehiclespawn',
                isServer = false,
                args = {
                    model = "COACH6",
                    spawn = spawn,
                    price = Config.CoachRentalPrice,
                }
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'rsg-menu:closeMenu',
            }
        },
    })
end)

RegisterNetEvent('rsg-rental:client:attemptvehiclespawn')
AddEventHandler('rsg-rental:client:attemptvehiclespawn', function(args)
    TriggerServerEvent('rsg-rental:server:attemptPurchase', args.model, args.spawn, args.price)
end)

RegisterNetEvent('rsg-rental:client:vehiclespawn')
AddEventHandler('rsg-rental:client:vehiclespawn', function(cart, spawn, price)
    local coords = vector3(spawn.x, spawn.y, spawn.z)
    local heading = spawn.w
    local ped = PlayerPedId()
    local hash = GetHashKey(cart)
    local veh = GetVehiclePedIsUsing(ped)
    if not IsModelInCdimage(hash) then return end
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(0)
    end
    if IsPedInAnyVehicle(ped) then
        DeleteVehicle(veh)
    end
    RSGCore.Functions.Progressbar('rent-cart', 'Getting cart from the store..', Config.WaitTime, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local vehicle = CreateVehicle(hash, coords, heading, true, false)
        TaskWarpPedIntoVehicle(ped, vehicle, -1)
        SetModelAsNoLongerNeeded(hash)
        TriggerServerEvent('rsg-rental:server:doRent', price)
    end)
end)
