AddEventHandler('menualcoolparadise', function()
    lib.registerContext({
        id = 'menualcoolparadise',
        title = "Menu Alcool",
        options = {
            {
                title = "Кafa",
                icon = "fas fa-hand-paper",
                description = "Uradite kafu",
                event = 'paradisebiere'
            },
            {
                title = "Redbul",
                icon = "fas fa-hand-paper",
                description = "Uradite redbul",
                event = 'paradisewhisky'
            },
                     {
                title = "Rakija",
                icon = "fas fa-hand-paper",
                description = "Uradite Rakiju",
                event = 'paradiserakija'
            },
            {
                title = "Fanta",
                icon = "fas fa-hand-paper",
                description = "Uradite fantu",
                event = 'paradisetequila'
            },
            {
                title = "Voda",
                icon = "fas fa-hand-paper",
                description = "Uradite vodu",
                event = 'paradiserhum'
            },
            {
                title = "Votka",
                icon = "fas fa-hand-paper",
                description = "Uradite votku",
                event = 'paradisevodka'
            },
        }
    })
    lib.showContext('menualcoolparadise')
end)

RegisterNetEvent('paradisebiere')
AddEventHandler('paradisebiere', function()
    local input = lib.inputDialog('Kafa', {
        { type = 'input', label = 'Kolicina', description = 'Unesi koliko zelis kafa?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravjenje kafe u toku',
                useWhileDead = false,
                canCancel = true,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'coffee', montant)
        end
    end
end)

RegisterNetEvent('paradisewhisky')
AddEventHandler('paradisewhisky', function()
    local input = lib.inputDialog('Redbul', {
        { type = 'input', label = 'Kolicina', description = 'Koliko zelis napraviti redbula?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravjenje redbula u teku',
                useWhileDead = false,
                canCancel = true,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'redbull', montant)
        end
    end
end)
RegisterNetEvent('paradiserakija')
AddEventHandler('paradiserakija', function()
    local input = lib.inputDialog('rakija', {
        { type = 'input', label = 'Kolicina', description = 'Koliko zelis napraviti rakije?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravjenje rakije u teku',
                useWhileDead = false,
                canCancel = true,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'Rakija', montant)
        end
    end
end)

RegisterNetEvent('paradisetequila')
AddEventHandler('paradisetequila', function()
    local input = lib.inputDialog('Fanta', {
        { type = 'input', label = 'Kolicina', description = 'Koliko zelite napraviti fante ?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Upravo pravite fantu',
                useWhileDead = false,
                canCancel = false,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'fanta', montant)
        end
    end
end)

RegisterNetEvent('paradiserhum')
AddEventHandler('paradiserhum', function()
    local input = lib.inputDialog('Voda', {
        { type = 'input', label = 'Kolicina', description = 'Koliko zelite napraviti ruma od vodu ?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Upravo pravite vodu',
                useWhileDead = false,
                canCancel = false,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'voda', montant)
        end
    end
end)

RegisterNetEvent('paradisevodka')
AddEventHandler('paradisevodka', function()
    local input = lib.inputDialog('Votka', {
        { type = 'input', label = 'Kolicina', description = 'Koliko zelite napraviti votke ?' },
    })
    if input then
        local montant = tonumber(input[1])
        if montant == nil or montant < 0 then
            ESX.ShowNotification("Kolicina nevazeca")
        else
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Trenutno pravite votke',
                useWhileDead = false,
                canCancel = false,
                anim = {
                    dict = 'anim@mp_player_intupperspray_champagne',
                    clip = 'idle_a'
                },
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('checkItemparadise', 'vodka', montant)
        end
    end
end)

---------------------------------- Clé Chalet --------------------------------------

exports.qtarget:AddBoxZone("Clefitems", vector3(-3051.0483, 100.4725, 11.6214), 3.0, 3, {
	name="Clefitems",
	heading=35,
	debugPoly=false,
	minZ=12.98,
	maxZ=14.98,
	}, {
		options = {
			{
				event = "clefitems",
				label = "Récuperer les clés",
				job = "paradise",
				icon = "fa fa-credit-card",
			},
		},
		distance = 2.5
})

RegisterNetEvent('clefitems')
AddEventHandler('clefitems', function()
	lib.registerContext({
		id = 'clefitems',
		title = 'Récuperer les clés',
		onExit = function()
		end,
		options = {
			{
				title = 'Récuperer les clés Chalet numero 1',
				icon = 'fa fa-credit-card',
				description = 'Requis pour Louez le chalet 1',
				onSelect = function(args)
					ESX.TriggerServerCallback('ledjo_clé:getItemAmount', function(quantity)
                        if quantity >= 0 then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
					TriggerServerEvent('ledjo_clé:add', 'item', 1, 'clefchalet1')
					ESX.ShowNotification('Tu as recuperer les clés du chalet Numero 1')
					ClearPedTasksImmediately(PlayerPedId())
            else
                ESX.ShowNotification('')
            end
        end, 'clefchalet1')
				end,
			},
			{
				title = 'Récuperer les clés Chalet numero 2',
				icon = 'fa fa-credit-card',
				description = 'Requis pour Louez le chalet 2',
				onSelect = function(args)
					ESX.TriggerServerCallback('ledjo_clé:getItemAmount', function(quantity)
                        if quantity >= 0 then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
					TriggerServerEvent('ledjo_clé:add', 'item', 1, 'clefchalet2')
					ESX.ShowNotification('Tu as recuperer les clés du chalet Numero 2')
					ClearPedTasksImmediately(PlayerPedId())
            else
                ESX.ShowNotification('')
            end
        end, 'clefchalet2')
				end,
			},
			{
				title = 'Récuperer les clés Chalet numero 3',
				icon = 'fa fa-credit-card',
				description = 'Requis pour Louez le chalet 3',
				onSelect = function(args)
					ESX.TriggerServerCallback('ledjo_clé:getItemAmount', function(quantity)
                        if quantity >= 0 then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
					TriggerServerEvent('ledjo_clé:add', 'item', 1, 'clefchalet3')
					ESX.ShowNotification('Tu as recuperer les clés du chalet Numero 3')
					ClearPedTasksImmediately(PlayerPedId())
            else
                ESX.ShowNotification('')
            end
        end, 'clefchalet3')
				end,
			},
			{
				title = 'Récuperer les clés Chalet numero 4',
				icon = 'fa fa-credit-card',
				description = 'Requis pour Louez le chalet 4',
				onSelect = function(args)
					ESX.TriggerServerCallback('ledjo_clé:getItemAmount', function(quantity)
                        if quantity >= 0 then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
					TriggerServerEvent('ledjo_clé:add', 'item', 1, 'clefchalet4')
					ESX.ShowNotification('Tu as recuperer les clés du chalet Numero 4')
					ClearPedTasksImmediately(PlayerPedId())
            else
                ESX.ShowNotification('')
            end
        end, 'clefchalet4')
				end,
			},
            {
				title = 'Récuperer les clés Chalet numero 5',
				icon = 'fa fa-credit-card',
				description = 'Requis pour Louez le chalet 5',
				onSelect = function(args)
					ESX.TriggerServerCallback('ledjo_clé:getItemAmount', function(quantity)
                        if quantity >= 0 then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
					TriggerServerEvent('ledjo_clé:add', 'item', 1, 'clefchalet5')
					ESX.ShowNotification('Tu as recuperer les clés du chalet Numero 5')
					ClearPedTasksImmediately(PlayerPedId())
            else
                ESX.ShowNotification('')
            end
        end, 'clefchalet5')
				end,
			},
		},
	})
	lib.showContext('clefitems')
end)

----------------------------- SPANW Location -----------------------------------

CreateThread(function()
	local pedmodel = GetHashKey(Config.PedsGarage)
	RequestModel(pedmodel)
  while not HasModelLoaded(pedmodel) do
	Citizen.Wait(1)
  end	
	for _, item in pairs(Config.Garagepeds) do
		npc = CreatePed(1, pedmodel, item.x, item.y, item.z, item.h, false, true)
  
		FreezeEntityPosition(npc, true)
		SetEntityHeading(npc, item.h)
		SetEntityInvincible(npc, true)
		SetBlockingOfNonTemporaryEvents(npc, true)
		exports.ox_target:addLocalEntity(npc, {
			{
				name = 'Config_paradise2',
				event = 'paradise2:menu',
				icon = 'fa-sharp fa-solid fa-car',
				label = 'Location Bateau',
				distance = 2,
	            groups = 'paradise',
			}
		}
		)    
	end
  end)
  
  RegisterNetEvent('paradise2:menu', function()
	lib.registerContext({
		id = 'Configparadise2',
		title = 'Garaza',
		options = {
			{
				title = 'Ranger Vehicule',
				event = 'paradise2:delete'
			},
			{
				title = 'Location1',
				event = 'paradise2:pickup'
			},
            {
				title = 'Location2',
				event = 'paradise3:pickup'
			},
		},
	})
	lib.showContext('Configparadise2')
  end)
  
  RegisterNetEvent('paradise2:pickup')
  AddEventHandler('paradise2:pickup',function()
	ESX.Game.SpawnVehicle('seashark', vec3(-3039.8752, -66.6388, -0.3076 ), 234.6103, function(vehicle)
	end)
  end)

  RegisterNetEvent('paradise3:pickup')
  AddEventHandler('paradise3:pickup',function()
	ESX.Game.SpawnVehicle('squalo', vec3(-3065.5100, -50.2425, -0.0563 ), 77.3897, function(vehicle)
	end)
  end)
  
  RegisterNetEvent('paradise2:delete')
  AddEventHandler('paradise2:delete',function()
	local veh = ESX.Game.GetClosestVehicle()
	DeleteEntity(veh)
  end)


  ----------------------------- SPANW VOITURE -----------------------------------

CreateThread(function()
	local pedmodel = GetHashKey(Config.PedsGaragev)
	RequestModel(pedmodel)
  while not HasModelLoaded(pedmodel) do
	Citizen.Wait(1)
  end	
	for _, item in pairs(Config.Garagepedsv) do
		npc = CreatePed(1, pedmodel, item.x, item.y, item.z, item.h, false, true)
  
		FreezeEntityPosition(npc, true)
		SetEntityHeading(npc, item.h)
		SetEntityInvincible(npc, true)
		SetBlockingOfNonTemporaryEvents(npc, true)
		exports.ox_target:addLocalEntity(npc, {
			{
				name = 'Config_paradise8',
				event = 'paradise8:menu',
				icon = 'fa-sharp fa-solid fa-car',
				label = 'Garaza',
				distance = 2,
	            groups = 'paradise',
			}
		}
		)    
	end
  end)
  
  RegisterNetEvent('paradise8:menu', function()
	lib.registerContext({
		id = 'Configparadise8',
		title = 'Garaza',
		options = {
			{
				title = 'Vrati vozilo',
				event = 'paradise2:delete'
			},
			{
				title = 'Izvuci vozilo',
				event = 'paradise8:pickup'
			},
		},
	})
	lib.showContext('Configparadise8')
  end)
  
  RegisterNetEvent('paradise8:pickup')
  AddEventHandler('paradise8:pickup',function()
	ESX.Game.SpawnVehicle('blista', vec3(263.48, -839.6, 29.36 ), 96.6, function(vehicle)
	end)
  end)
