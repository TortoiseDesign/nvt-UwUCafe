local QBCore = exports['qb-core']:GetCoreObject()
local spawned = false

--- Scenes and stuff for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "uwu" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("nvt-UwUCafe:client:Servico", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

---------------------------------
----- Config Blip to set it on ur map/gps --------------

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(462.2, -693.88, 26.44)
    
    SetBlipSprite (blip, 59)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipColour (blip, 2)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Ingredients Seller')
    EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(-582.49, -1062.94, 22.35)
    
    SetBlipSprite (blip, 621)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipColour (blip, 34)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Ingredients Seller')
    EndTextCommandSetBlipName(blip)
end)

--------------------
----- Menus --------

RegisterNetEvent('nvt-UwUCafe:client:MenuComidas', function() -- Menu to make food
    exports['qb-menu']:openMenu({
        {
            header = "Food UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Strawberry Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Butter <br> - 1 Flouwer <br> - 1 Strawberry Package",
            params = {
                event = "nvt-UwUCafe:client:FazerCupcakeMorango",
            }
        },
        {
            header = "Chocolate Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Butter <br> - 1 Flouwer <br> - 1 Chocolate",
            params = {
                event = "nvt-UwUCafe:client:FazerCupcakeChocolate",
            }
        },
        {
            header = "Limon Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Buter <br> - 1 Flouwer <br> - 1 Limon",
            params = {
                event = "nvt-UwUCafe:client:FazerCupcakeLimao",
            }
        },
        {
            header = "Straberry Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Strawberry Package",
            params = {
                event = "nvt-UwUCafe:client:FazerGeladoMorango",
            }
        },
        {
            header = "Chocolate Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Chocolate",
            params = {
                event = "nvt-UwUCafe:client:FazerGeladoChocolate",
            }
        },
        {
            header = "Vanilla Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Vanilla extract",
            params = {
                event = "nvt-UwUCafe:client:FazerGeladoBaunilha",
            }
        },
        {
            header = "Nutela Pancake",
            txt = "Ingredients: <br> - 1 Flouwer <br> - 1 Milk <br> - 1 Sugar pack <br> - 1 Nutela",
            params = {
                event = "nvt-UwUCafe:client:FazerPanquencaNutela",
            }
        },
        {
            header = "Oreo Pancake",
            txt = "Ingredients: <br> - 1 Flouwer <br> - 1 Milk <br> - 1 Sugar pack <br> - 1 Oreo",
            params = {
                event = "nvt-UwUCafe:client:FazerPanquencaOreo",
            }
        },
        {
            header = "Chocolat Muffin",
            txt = "Ingredients: <br> - 1 Flouwer <br> - 1 Milk <br> - 1 Chocolate",
            params = {
                event = "nvt-UwUCafe:client:FazerMuffinChocolate",
            }
        },
        {
            header = "Chicken pastel",
            txt = "Ingredients: <br> - 1 Flouwer <br> - 1 Butter <br> - 1 Chicken",
            params = {
                event = "nvt-UwUCafe:client:FazerPastelFrango",
            }
        },
        {
            header = "Nutela Waffle",
            txt = "Ingredients: <br> - 1 Flouwer <br> - 1 Milk <br> - 1 Nutela",
            params = {
                event = "nvt-UwUCafe:client:FazerWaffleNutela",
            }
        },
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:MenuBebidas', function() -- Menu for making drinks
    exports['qb-menu']:openMenu({
        {
            header = "Drinks UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Coffee",
            txt = "Ingredients: <br> - 1 Coffee beans <br> - 1 Water Bottle",
            params = {
                event = "nvt-UwUCafe:client:FazerCafe",
            }
        },
        {
            header = "Latte",
            txt = "Ingredients: <br> - 1 Coffee beans <br> - 1 Milk",
            params = {
                event = "nvt-UwUCafe:client:FazerLatte",
            }
        },
        {
            header = "Blackberry Bubble Tea",
            txt = "Ingredients: <br> - 1 box of blackberries <br> - 1 Water Bottle",
            params = {
                event = "nvt-UwUCafe:client:FazerBubbleTeaAmora",
            }
        },
        {
            header = "Straberry Bubble Tea",
            txt = "Ingredients: <br> - 1 Strawberry Package <br> - 1 Water Bottle",
            params = {
                event = "nvt-UwUCafe:client:FazerBubbleTeaMorango",
            }
        },
        {
            header = "Mint Bubble Tea",
            txt = "Ingredients: <br> - 1 Mint extract <br> - 1 Water Bottle",
            params = {
                event = "nvt-UwUCafe:client:FazerBubbleTeaMenta",
            }
        },
        {
            header = "Straberry Milkshake",
            txt = "Ingredients: <br> - 1 Strawberry Package <br> - 1 Milk",
            params = {
                event = "nvt-UwUCafe:client:FazerMilkshakeMorango",
            }
        },
        {
            header = "Chocolat Milkshake",
            txt = "Ingredients: <br> - 1 Chocolate <br> - 1 Milk",
            params = {
                event = "nvt-UwUCafe:client:FazerMilkshakeChocolate",
            }
        },
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:MenuLoja', function() -- Menu to the ingredient vendor
    if Config.UsarPed == true then
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients Seller",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Milk",
            txt = "Price: 10x per 20$",
            params = {
                event = "nvt-UwUCafe:client:ComprarLeite",
            }
        },
        {
            header = "Butter",
            txt = "Price: 10x per 20$",
            params = {
                event = "nvt-UwUCafe:client:ComprarManteiga",
            }
        },
        {
            header = "Flouwer",
            txt = "Price: 10x per 20$",
            params = {
                event = "nvt-UwUCafe:client:ComprarFarinha",
            }
        },
        {
            header = "Strawberry Package",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarMorangos",
            }
        },
        {
            header = "Chocolate",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarChocolate",
            }
        },
        {
            header = "Lemon",
            txt = "Price: 10x per 30$",
            params = {
                event = "nvt-UwUCafe:client:ComprarLimao",
            }
        },
        {
            header = "Cream",
            txt = "Price: 10x v 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarNatas",
            }
        },
        {
            header = "Condensed milk",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarCondensado",
            }
        },
        {
            header = "Vanilla extract",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarBaunilha",
            }
        },
        {
            header = "Sugar pack",
            txt = "Price: 10x per 20$",
            params = {
                event = "nvt-UwUCafe:client:ComprarAcucar",
            }
        },
        {
            header = "nutella bottle",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarNutela",
            }
        },
        {
            header = "oreo pack",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarOreo",
            }
        },
        {
            header = "Coffee beans",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarCafe",
            }
        },
        {
            header = "Mint extract",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarMenta",
            }
        },
        {
            header = "box of blackberries",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarAmoras",
            }
        },
        {
            header = "Chicken",
            txt = "Price: 10x per 50$",
            params = {
                event = "nvt-UwUCafe:client:ComprarFrango",
            }
        },
    })
    end
end)

---------------------------------------
----------- Making food -------------

RegisterNetEvent('nvt-UwUCafe:client:FazerCupcakeMorango', function() -- Make Strawberry Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_morango', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerCupcakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerCupcakeChocolate', function() -- Make Chocolate Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_chocolate', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerCupcakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerCupcakeLimao', function() -- Make Lemon Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_limao', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerCupcakeLimao')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerGeladoMorango', function() -- Make strawberry ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_morango', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerGeladoMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerGeladoChocolate', function() -- Make chocolate ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_chocolate', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerGeladoChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerGeladoBaunilha', function() -- Make vanilla ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_baunilha', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerGeladoBaunilha')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerPanquencaNutela', function() -- Make nutella pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_nutela', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerPanquencaNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerPanquencaOreo', function() -- Make oreo pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_oreo', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerPanquencaOreo')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerMuffinChocolate', function() -- Make oreo pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('muffin_chocolate', 'MAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerMuffinChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerPastelFrango', function() -- Make Chicken Pastel
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('pastel_frango', 'MAKING A PASTEL...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerPastelFrango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerWaffleNutela', function() -- Make Nutela Waffle
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('waffle_nutela', 'MAKING A WAFFLE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerWaffleNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------------
--------- Making drinks ---------------

RegisterNetEvent('nvt-UwUCafe:client:FazerCafe', function() -- Make a coffee
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_cafe', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerCafe')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerLatte', function() -- Make a Latte
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_latte', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerLatte')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerBubbleTeaAmora', function() -- Make a blackberry bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_amora', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerBubbleTeaAmora')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerBubbleTeaMorango', function() -- Make a Strawberry Bubble Tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_morango', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerBubbleTeaMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerBubbleTeaMenta', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_menta', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerBubbleTeaMenta')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerMilkshakeMorango', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_morango', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerMilkshakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:FazerMilkshakeChocolate', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_chocolate', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('nvt-UwUCafe:server:FazerMilkshakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--------------------------------
------- Stashes ----------------

RegisterNetEvent('nvt-UwUCafe:client:FrigorificoComida', function() -- Refrigerator for food (made)
    TriggerEvent("inventory:client:SetCurrentStash", "frigorificouwu")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "frigorificouwu", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:FrigorificoIngredientes', function() -- Fridge for Ingredients
    TriggerEvent("inventory:client:SetCurrentStash", "FrigorificoIngredientes")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "FrigorificoIngredientes", {
        maxweight = 500000,
        slots = 40,
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:Balcao', function() -- Refrigerator for food (made)
    TriggerEvent("inventory:client:SetCurrentStash", "balcaouwu")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "balcaouwu", {
        maxweight = 10000,
        slots = 40,
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:Tabuleiro1', function() -- board1
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroUwU1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroUwU1", {
        maxweight = 20000,
        slots = 10,
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:Tabuleiro2', function() -- board2
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroUwU2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroUwU2", {
        maxweight = 20000,
        slots = 10,
    })
end)

---------------------------
---- Spawn Cats ----------

CreateThread(function()
    local spot1 = CircleZone:Create(vector3(-580.54, -1064.7, 22.79), 10.0, {
        name="spot1",
        debugPoly=false,
    })
	while true do
		Wait(3000)
		local plyPed = PlayerPedId()
		local coord = GetEntityCoords(plyPed)
		if spot1:isPointInside(coord)then
			if not spawned then
				spawnGatos()
			end
		end
	end
end)

function spawnGatos()
	spawned = true
    for key, value in pairs(Config.Gatos) do
        local hash = GetHashKey('a_c_cat_01')
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Citizen.Wait(10)
        end
        if value.sitting  == true then
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 0.9, value.coords.w, false, true)
            DoRequestAnimSet('creatures@cat@amb@world_cat_sleeping_ground@idle_a')
            TaskPlayAnim(ped, 'creatures@cat@amb@world_cat_sleeping_ground@idle_a', 'idle_a' ,8.0, -8, -1, 1, 0, false, false, false)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            SetBlockingOfNonTemporaryEvents(ped, true)
        else
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 1.0, value.coords.w, false, true)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            TaskWanderStandard(ped, 0, 0)
            SetBlockingOfNonTemporaryEvents(ped, true)
        end
    end
end

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Citizen.Wait(1)
	end
end

------------------------------------
----- Use food/drinks ---------

RegisterNetEvent('nvt-UwUCafe:client:ComerCupcake', function() -- Eat Cupcake
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_cupcake', 'EATING A CUPCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComerPastel', function() -- Eat Chicken Pastel
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_pastel', 'EATING A PASTEL...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComerMuffin', function() -- Eat muffin
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_muffin', 'EATING A MUFFIN...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComerWaffle', function() -- Eat Waffle
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_waffle', 'EATING A WAFFLE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComerGelado', function() -- Eat icecream
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_gelado', 'EATING A GELADO...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComerPanqueca', function() -- Eat pancake
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_panqueca', 'DRINKING A PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:BeberBubbleTea', function() -- Drink bubble Tea
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_bubbletea', 'DRINKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:BeberMilkshake', function() -- Drink Milkshake
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_milkshake', 'DRINKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:BeberCafe', function() -- Drink Coffee
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING A COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:BeberLatte', function() -- Drink Latte
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_latte', 'DRINKING A LATTE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
    end)
end)

------------------------------------------
------ Spawn ped selling food ---------

local IngredientsPed = {
    Config.Ped
}

Citizen.CreateThread(function()
    if Config.UsarPed == true then
    for _,v in pairs(IngredientsPed) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
        end
        IngredientsProcPed =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(IngredientsProcPed, v[5])
        FreezeEntityPosition(IngredientsProcPed, true)
        SetEntityInvincible(IngredientsProcPed, true)
        SetBlockingOfNonTemporaryEvents(IngredientsProcPed, true)
        TaskStartScenarioInPlace(IngredientsProcPed, "WORLD_HUMAN_STAND_MOBILE_UPRIGHT", 0, true) 
        end
    end
end)

Citizen.CreateThread(function ()
    if Config.UsarPed == true then
    exports['qb-target']:AddBoxZone("PedIngredients", Config.PedTargetLoc, 1, 1, {
        name = "PedIngredients",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "nvt-UwUCafe:client:MenuLoja",
                icon = "fas fa-shopping-bag",
                label = 'Talk with employee'
            },
        },
        distance = 2.5
    })
    end
end)

------------------------------------------
------- Comprar alimentos ----------------

RegisterNetEvent('nvt-UwUCafe:client:ComprarLeite', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_leite', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "pacote-leite", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarManteiga', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_manteiga', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "barra-manteiga", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarFarinha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_farinha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "pacote-farinha", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarMorangos', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_morangos', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "caixa-morangos", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_chocolate', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "barra-chocolate", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_limao', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "limao", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar30dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarNatas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_natas', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "pacote-natas", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarCondensado', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_condensado', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "leite-condensado", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_baunilha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "extrato-baunilha", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarAcucar', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_acucar', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "pacote-acucar", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarNutela', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_nutela', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "frasco-nutela", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarOreo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_oreo', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "pacote-oreo", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_cafe', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "graos-cafe", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarMenta', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_menta', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "extrato-menta", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarAmoras', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_amoras', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "caixa-amoras", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('nvt-UwUCafe:client:ComprarFrango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprarfrango', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nvt-UwUCafe:Server:AddItem', "frango", 10)
        TriggerServerEvent('nvt-UwUCafe:server:Tirar50dolares')
    end)
end)

----------------------------------
--------- Pet Cats --------

RegisterNetEvent('nvt-UwUCafe:client:AcariciarGato', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('acariciar_gatos', 'HAVING PARTIES WITH THE CAT...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------
--- See menu ------------------

RegisterNetEvent("nvt-UwUCafe:client:VerEmenta", function()
    exports['qb-menu']:openMenu({
        {
            header = "Menu UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Drinks",
            txt = "See the drinks currently available in our cafe!",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Foods",
            txt = "See what foods are currently available in our cafe!",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:EmentaBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Drinks UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            txt = "",
            params = {
                event = "nvt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "Latte",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Coffee",
            txt = "Price: 20$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Blackberry Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Mint Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Strawberry Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Strawberry Milkshake",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Chocolate Milkshake",
            txt = "Price: 25$",
            params = {
                event = "nvt-UwUCafe:client:EmentaBebidas",
            }
        },
    })
end)

RegisterNetEvent('nvt-UwUCafe:client:EmentaComidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Foods UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            txt = "",
            params = {
                event = "nvt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "Strawberry Cupcake",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolate Cupcake",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Limon Cupcake",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Strawberry Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Vanilla Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolate Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Nutela Pancake",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Oreo Pancake",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolate Muffin",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chicken Pastel",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Nutela Waffle",
            txt = "Price: 50$",
            params = {
                event = "nvt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterCommand('ementa-uwu', function()
    TriggerEvent('nvt-UwUCafe:client:VerEmenta')
end)

-------------------------------------
------------- Bill Player --------

RegisterNetEvent("nvt-UwUCafe:client:FaturarPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Fatura",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("nvt-UwUCafe:server:FaturarPlayer", dialog.id, dialog.amount)
    end
end)