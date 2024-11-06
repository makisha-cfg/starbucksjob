if Config.Version == "esxold" then
    ESX = nil
    CreateThread(function()
        while ESX == nil do
            TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
            Wait(100)
        end
    end)
elseif Config.Version == "esxnew" then
    ESX = exports['es_extended']:getSharedObject()
end

RegisterNetEvent('menupatronparadise')
AddEventHandler('menupatronparadise', function()
    TriggerEvent('esx_society:openBossMenu', 'paradise', function(data)
	end, { wash = false })
end)

RegisterNetEvent('coffreparadise')
AddEventHandler('coffreparadise', function()
    exports.ox_inventory:openInventory('stash', {id='paradisecoffre'})
end)

RegisterNetEvent('commandeparadise')
AddEventHandler('commandeparadise', function()
    exports.ox_inventory:openInventory('stash', {id='paradisecommande'})
end)

RegisterNetEvent('paradise:sendbill')
AddEventHandler('paradise:sendbill', function()
      local input = lib.inputDialog('Racun Starbucks', {'Amount'})

           if input then
                local amount = tonumber(input[1])
			
				if amount == nil or amount < 0 then
					ESX.ShowNotification('Kolicina nevazeca')
				else
					local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
				if closestPlayer == -1 or closestDistance > 4.0 then
					ESX.ShowNotification('Neko blizak!')
				else
				TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_paradise', 'Racun starbucks', amount)
			end
		end
    end
end)

CreateThread(function()
	for k,v in pairs(Config.paradiseStation) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, v.Blip.Sprite)
		SetBlipDisplay(blip, v.Blip.Display)
		SetBlipScale  (blip, v.Blip.Scale)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(v.Blip.Name)
		EndTextCommandSetBlipName(blip)
	end
end)


---------------Menu F6

RegisterNetEvent('paradise:annonce')
AddEventHandler('paradise:annonce', function(data)
    lib.registerContext({
        id = 'Menu Annonce',
        title = 'Meni Starbacks',
        onExit = function()
            print('Hello there')
        end,
        options = {
            {
                title = 'Kafic otvoren',
                description = 'Obavjesti ljude da je otvoreno',
                arrow = true,
                event = "paradise:ouvert",
            },
            {
                title = 'Kafic zatvoren',
                description = 'Obevesti ljude da je zatvoreno',
                arrow = true,
                event = 'paradise:fermer',
            },
            {
                title = 'Trazi radnike',
                description = 'Obavesti da trazis radnike',
                arrow = true,
                event = 'paradiseperso',
            },
			{
				title = 'Nazad',
				icon = 'arrow-left',
				onSelect = function()
					lib.showContext('paradisef6')
				end
                }
            }
    })

    lib.showContext('Menu Annonce')
end)


function menuf6paradise()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'paradise' then
        local contextOptions = {
            {
                title = '💻 Obevestenje',
                description = 'Uradi obavestenje',
                event = 'paradise:annonce'
            },
            {
                title = '💸 Racuni',
                description = 'Uradi racune',
                event = 'paradise:sendbill'
            }
        }

        lib.registerContext({
            id = 'paradisef6',
            title = 'Meni Starbacks',
			options = contextOptions
        })

        lib.showContext('paradisef6')
    end
end



RegisterCommand("paradise", function()
    menuf6paradise()
end)

RegisterKeyMapping("paradise", "Menu F6 paradise", "keyboard", "F6")

Citizen.CreateThread(function()
    while true do
      local sleep = 0
      if IsControlJustReleased(0, 167) and  not insidee  and ESX.PlayerData.job and ESX.PlayerData.job.name == 'paradise' then  
        lib.showContext('paradisef6')
      elseif IsControlJustReleased(0, 177) then      
      end  
      Citizen.Wait(sleep)
    end      
  end) 

-----Facture
RegisterNetEvent('paradise:sendbill')
AddEventHandler('paradise:sendbill', function()
      local input = lib.inputDialog('Racun starbacks', {'Amount'})

           if input then
                local amount = tonumber(input[1])

                if amount == nil or amount < 0 then
					lib.notify({
						title = 'paradise',
						description = 'Kolicina nevazeca!',
						type = 'erorr',
						position = 'top'
					})
                else
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                if closestPlayer == -1 or closestDistance > 4.0 then
					lib.notify({
						title = 'paradise',
						description = 'Neko blizak!',
						type = 'erorr',
						position = 'top'
					})
                else
                TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_paradise', 'Racun starbucks', amount)
            end
        end
    end
end)

RegisterCommand("paradise", function()
    menuf6paradise()
end)

RegisterKeyMapping("paradise", "Menu F6 Paradise Club", "keyboard", "F6")

RegisterNetEvent('paradise:ouvert')
AddEventHandler('paradise:ouvert', function()
TriggerServerEvent('paradise:Ouvert')
end)

RegisterNetEvent('paradise:fermer')
AddEventHandler('paradise:fermer', function()
TriggerServerEvent('paradise:Fermer')
end)

RegisterNetEvent('paradiseperso')
AddEventHandler('paradiseperso', function()
local msg = KeyboardInput("Poruka", "", 100)
TriggerServerEvent('paradisperso', msg)
end)

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry)
    blockinput = true
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Wait(0)
    end 
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput = false
        return result
    else
        Wait(500)
        blockinput = false
        return nil
    end
end