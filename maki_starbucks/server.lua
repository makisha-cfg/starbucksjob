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

TriggerEvent('esx_society:registerSociety', 'paradise', 'paradise', 'society_paradise', 'society_paradise', 'society_paradise', {type = 'public'})

local paradisecoffre = {
    id = 'paradisecoffre',
    label = 'Starbucks ponuda',
    slots = 50,
    weight = 20000,
    owner = 'steam:'
}

local paradisecommande = {
    id = 'paradisecommande',
    label = 'Narucivanje starbucks',
    slots = 50,
    weight = 20000,
    owner = 'steam:'
}

AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        Wait(0)
		exports.ox_inventory:RegisterStash(paradisecoffre.id, paradisecoffre.label, paradisecoffre.slots, paradisecoffre.weight, paradisecoffre.owner)
        exports.ox_inventory:RegisterStash(paradisecommande.id, paradisecommande.label, paradisecommande.slots, paradisecommande.weight, paradisecommande.owner)
    end
end)

RegisterServerEvent('checkItemparadise')
AddEventHandler('checkItemparadise', function(itemID, montant)
    local xPlayer = ESX.GetPlayerFromId(source)
    local canCraft = true

    for _, v in pairs(Config.Crafting[itemID].requiredItems) do
        if xPlayer.getInventoryItem(v.name).count < v.amount then
            canCraft = false
            TriggerClientEvent('esx:showNotification', source, 'Nemate ' .. v.label) 
            break
        else
            canCraft = true
        end
    end
    if canCraft then
        for _, v in pairs(Config.Crafting[itemID].requiredItems) do
            xPlayer.removeInventoryItem(v.name, v.amount * montant)
        end
        xPlayer.addInventoryItem(itemID, montant)
        TriggerClientEvent('esx:showNotification', source, 'Ti si napravio ' .. Config.Crafting[itemID].label) 
    end
end)

ESX.RegisterServerCallback('paradise:getItemAmount', function(source, cb, item)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local quantity = xPlayer.getInventoryItem(item).count

	cb(quantity)
end)

RegisterServerEvent('ledjoooparadise:RemoveAccount')
AddEventHandler('ledjoooparadise:RemoveAccount', function(amount)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_paradise', function(account)
		account.removeMoney(amount)
	end)
end)

RegisterServerEvent('ledjoooparadise:add')
AddEventHandler('ledjoooparadise:add', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if type == 'money' then
		xPlayer.addMoney(amount)
	elseif type == 'item' then
		xPlayer.addInventoryItem(name, amount)
	end
end)

RegisterServerEvent('paradise:Ouvert')
AddEventHandler('paradise:Ouvert', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers    = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Starbucks Kafic', 'Starbucks Kafic je otvoren', 'Posetite nas', 8)
    end
end)

RegisterServerEvent('paradise:Fermer')
AddEventHandler('paradise:Fermer', function()
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers    = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Starbucks Kafic', 'Starbucks Kafic je zatvoren!', 'Dodzite sutra', 8)
    end
end)

RegisterNetEvent('paradisperso')
AddEventHandler('paradisperso', function(msg)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers    = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Starbucks Kafic', msg, 'Pozuri na kasting', 8)
    end
end)

ESX.RegisterServerCallback('ledjo_clé:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(item).count
	cb(quantity)
end)

RegisterServerEvent('ledjo_clé:add')
AddEventHandler('ledjo_clé:add', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if type == 'money' then
		xPlayer.addMoney(amount)
	TriggerClientEvent('esx:showNotification', source, 'Primili ste $'..amount 'success')
	elseif type == 'item' then
		xPlayer.addInventoryItem(name, amount)
	end
end)

RegisterServerEvent('ledjo_clé:remove')
AddEventHandler('ledjo_clé:remove', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if type == 'money' then
		xPlayer.removeMoney(amount)
	elseif type == 'item' then
		xPlayer.removeInventoryItem(name, amount)
	end
end)