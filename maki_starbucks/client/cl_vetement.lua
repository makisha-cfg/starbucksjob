RegisterNetEvent('paradisevetement')
AddEventHandler('paradisevetement', function()
    if Config.Vetement == 'fivem-appearance' then 
        TriggerEvent('fivem-appearance:Job')
    elseif Config.Vetement == 'ownvetement' then 
        TriggerEvent('esxbasicvetementparadise')
    end
end)

RegisterNetEvent('esxbasicvetementparadise')
AddEventHandler('esxbasicvetementparadise', function()
    lib.registerContext({
        id = 'paradiseclothing',
        title = "Svlacionica",
        onExit = function()
        end,
        options = {
            {
                event = "paradisedefaultskin",
                icon = "fa fa-box",
                title = "Vasa odjeca",
                description = 'Obuci vasu odjecu iz kuce',
            },
            {
                event = "paradisepatron",
                title = "Gazda odjeca",
                icon = "fa fa-box",
                description = 'Obuci gazdina odjeca',

            },
            {
                event = "paradisecadre",
                title = "Zamenik Gazda",
                icon = "fa fa-box",
                description = 'Obuci zamenik gazda odjeca',

            },
            {
                event = "paradisegarde",
                title = "Menazder odjeca",
                icon = "fa fa-box",
                description = 'Obuci menadzer odjeca',

            },
            {
                event = "paradiseserveur",
                title = "Kelner odjeca",
                icon = "fa fa-box",
                description = 'Obuci kelner odjeca',

            },
            {
                event = "paradiseinterimaire",
                title = "Cistac odjeca",
                icon = "fa fa-box",
                description = 'Obuci cistac odjeca',

            },
        },
    })
    lib.showContext('paradiseclothing')
end)

function cleanPlayer(playerPed)
	SetPedArmour(playerPed, 0)
	ClearPedBloodDamage(playerPed)
	ResetPedVisibleDamage(playerPed)
	ClearPedLastWeaponDamage(playerPed)
	ResetPedMovementClipset(playerPed, 0)
end

function setUniform(uniform, playerPed)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject

		if skin.sex == 0 then
			uniformObject = Config.paradiseUniform[uniform].male
		else
			uniformObject = Config.paradiseUniform[uniform].female
		end

		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
		else
			ESX.ShowNotification('Nemate nikakvu odjecu')
		end
	end)
end

RegisterNetEvent('paradisedefaultskin')
AddEventHandler('paradisedefaultskin', function()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
end)

RegisterNetEvent('paradisepatron')
AddEventHandler('paradisepatron', function()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    setUniform('paradisepatron', playerPed)
end)

RegisterNetEvent('paradisecadre')
AddEventHandler('paradisecadre', function()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    setUniform('paradisecadre', playerPed)
end)

RegisterNetEvent('paradisegarde')
AddEventHandler('paradisegarde', function()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    setUniform('paradisegarde', playerPed)
end)

RegisterNetEvent('paradiseserveur')
AddEventHandler('paradiseserveur', function()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    setUniform('paradiseserveur', playerPed)
end)

RegisterNetEvent('paradiseinterimaire')
AddEventHandler('paradiseinterimaire', function()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), true)
    lib.progressBar({
        duration = 5000,
        label = 'Presvlacis se',
        useWhileDead = false,
        canCancel = true,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    })
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    setUniform('paradiseinterimaire', playerPed)
end)
