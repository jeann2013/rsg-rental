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
        exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds['J'],  Lang:t('menu.open') .. v.name, {
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

-- rental menu
RegisterNetEvent('rsg-rental:client:menu', function(name, location, spawn)
    exports['rsg-menu']:openMenu({
        {
            header = name,
            isMenuHeader = true,
        },
        {
            header =  Lang:t('menu.wooden_cart',{numbercart = 1}),
            txt = Lang:t('text.rent_this_cart_for')..Config.CartRentalPrice..".00",
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
            header =  Lang:t('menu.wooden_cart',{numbercart = 2}),
            txt = Lang:t('text.rent_this_cart_for')..Config.CartRentalPrice..".00",
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
            header =  Lang:t('menu.wooden_cart',{numbercart = 3}),
            txt = Lang:t('text.rent_this_cart_for')..Config.CartRentalPrice..".00",
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
            header = Lang:t('menu.luxurious_buggy',{numberbuggy = 1}),
            txt = Lang:t('text.rent_this_luxurious_buggy_for')..Config.BuggyRentalPrice..".00",
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
            header = Lang:t('menu.luxurious_buggy',{numberbuggy = 2}),
            txt = Lang:t('text.rent_this_luxurious_buggy_for')..Config.BuggyRentalPrice..".00",
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
            header = Lang:t('menu.luxurious_buggy',{numberbuggy = 3}),
            txt = Lang:t('text.rent_this_luxurious_buggy_for')..Config.BuggyRentalPrice..".00",
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
            header = Lang:t('menu.special_transport',{numbertransport = 1}),
            txt = Lang:t('text.rent_this_transport_for')..Config.CoachRentalPrice..".00",
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
            header =  Lang:t('menu.special_transport',{numbertransport = 2}),
            txt = Lang:t('text.rent_this_transport_for')..Config.CoachRentalPrice..".00",
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
            header = Lang:t('menu.special_transport',{numbertransport = 3}),
            txt = Lang:t('text.rent_this_transport_for')..Config.CoachRentalPrice..".00",
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
            header = Lang:t('menu.special_transport',{numbertransport = 4}),
            txt = Lang:t('text.rent_this_transport_for')..Config.CoachRentalPrice..".00",
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
            header = Lang:t('menu.special_transport',{numbertransport = 5}),
            txt = Lang:t('text.rent_this_transport_for')..Config.CoachRentalPrice..".00",
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
            header =  Lang:t('menu.close_menu'),
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
    RSGCore.Functions.Progressbar('rent-cart', Lang:t('progressbar.getting_cart_from_the_store'), Config.WaitTime, false, true, {
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
