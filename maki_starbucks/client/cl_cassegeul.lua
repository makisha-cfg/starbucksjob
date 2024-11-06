AddEventHandler('paradisecassegeul', function()
    lib.registerContext({
        id = 'menucassegeulparadise',
        title = "Meni Grickalica",
        options = {
            {
                title = "Sendvic",
                icon = "fas fa-hand-paper",
                description = "Napravi sendvic",
                event = 'chipsparadise'
            },
            {
                title = "Hotdog",
                icon = "fas fa-hand-paper",
                description = "Napravi hotdog",
                event = 'peanutparadise'
            },
            {
                title = "Milka",
                icon = "fas fa-hand-paper",
                description = "Napravi milku",
                event = 'gateauparadise'
            },
        }
    })
    lib.showContext('menucassegeulparadise')
end)

RegisterNetEvent('chipsparadise')
AddEventHandler('chipsparadise', function()
    local input = lib.inputDialog('Sendvic', {
        { type = 'input', label = 'Kolicina', description = 'Napravite sendvic' },
    })
    if input then
        local montantchips = tonumber(input[1])
        if montantchips == nil or montantchips < 0 then
            ESX.ShowNotification("montant invalide")
        else
            local chipsPrice = Config.PriceChips
            local totalPrice2 = chipsPrice * montantchips
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravjenje sendvica u toku',
                useWhileDead = false,
                canCancel = true,
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('ledjoooparadise:RemoveAccount', totalPrice2)
            TriggerServerEvent('ledjoooparadise:add', 'item', montantchips, 'sendvic')
            ESX.ShowNotification('Napravili ste ' .. montantchips .. ' sendvic, za sastojke ste dali ' .. Config.PriceChips .. ' $ Sada prodajte proizvod.')
        end
    end
end)

RegisterNetEvent('peanutparadise')
AddEventHandler('peanutparadise', function()
    local input = lib.inputDialog('Hotdog', {
        { type = 'input', label = 'Kolicina', description = 'Kolicina hotdog' },
    })
    if input then
        local montantpeanut = tonumber(input[1])
        if montantpeanut == nil or montantpeanut < 0 then
            ESX.ShowNotification("montant invalide")
        else
            local peanutPrice = Config.PricePeanuts
            local totalPrice3 = peanutPrice * montantpeanut
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravljenje hotdog u toku',
                useWhileDead = false,
                canCancel = false,
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('ledjoooparadise:RemoveAccount', totalPrice3)
            TriggerServerEvent('ledjoooparadise:add', 'item', montantpeanut, 'hotdog')
            ESX.ShowNotification('Napravili ste ' .. montantpeanut .. ' hotdog, za sastojke ste dali ' .. Config.PricePeanuts .. ' $ Sada prodajte proizvod.')
        end
    end
end)

RegisterNetEvent('gateauparadise')
AddEventHandler('gateauparadise', function()
    local input = lib.inputDialog('Milka', {
        { type = 'input', label = 'Kolicina', description = 'Kolicina milke' },
    })
    if input then
        local montantgateau = tonumber(input[1])
        if montantgateau == nil or montantgateau < 0 then
            ESX.ShowNotification("montant invalide")
        else
            local gateauPrice = Config.PriceGateau
            local totalPrice3 = gateauPrice * montantgateau
            FreezeEntityPosition(PlayerPedId(), true)
            lib.progressBar({
                duration = 5000,
                label = 'Pravljenje milke u toku',
                useWhileDead = false,
                canCancel = false,
            })
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerServerEvent('ledjoooparadise:RemoveAccount', totalPrice3)
            TriggerServerEvent('ledjoooparadise:add', 'item', montantgateau, 'milka')
            ESX.ShowNotification('Napravili ste ' .. montantgateau .. ' milka, za sastojke ste dali ' .. Config.PriceGateau .. ' $ Sada prodajte proizvod.')
        end
    end
end)