CreateThread(function()
    for i = 1, #Config.paradiseCoffre do
        exports.qtarget:AddBoxZone(i .. "_paradisecoffre_menu", Config.paradiseCoffre[i].coords, 1.0, 1.0, {
            name = i .. "_paradisecoffre_menu",
            heading = Config.paradiseCoffre[i].heading,
            debugPoly = false,
            minZ = Config.paradiseCoffre[i].coords.z - 1.5,
            maxZ = Config.paradiseCoffre[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'coffreparadise',
                    icon = Config.paradiseCoffre[i].icon,
                    label = Config.paradiseCoffre[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end)

CreateThread(function()
    for i = 1, #Config.paradisePatron do
        exports.qtarget:AddBoxZone(i .. "_paradisepatron_menu", Config.paradisePatron[i].coords, 1.0, 1.0, {
            name = i .. "_paradisepatron_menu",
            heading = Config.paradisePatron[i].heading,
            debugPoly = false,
            minZ = Config.paradisePatron[i].coords.z - 1.5,
            maxZ = Config.paradisePatron[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'menupatronparadise',
                    icon = Config.paradisePatron[i].icon,
                    label = Config.paradisePatron[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end)

CreateThread(function()
    for i = 1, #Config.paradiseFacture do
        exports.qtarget:AddBoxZone(i .. "_paradisefacture_menu", Config.paradiseFacture[i].coords, 1.0, 1.0, {
            name = i .. "_paradisefacture_menu",
            heading = Config.paradiseFacture[i].heading,
            debugPoly = false,
            minZ = Config.paradiseFacture[i].coords.z - 1.5,
            maxZ = Config.paradiseFacture[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'paradise:sendbill',
                    icon = Config.paradiseFacture[i].icon,
                    label = Config.paradiseFacture[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end) 

CreateThread(function()
    for i = 1, #Config.paradiseCommande do
        exports.qtarget:AddBoxZone(i .. "_paradisecommande_menu", Config.paradiseCommande[i].coords, 1.0, 1.0, {
            name = i .. "_paradisecommande_menu",
            heading = Config.paradiseCommande[i].heading,
            debugPoly = false,
            minZ = Config.paradiseCommande[i].coords.z - 1.5,
            maxZ = Config.paradiseCommande[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'commandeparadise',
                    icon = Config.paradiseCommande[i].icon,
                    label = Config.paradiseCommande[i].labeltarget,
                }
            },
            distance = 1.5
        })
    end
end) 

CreateThread(function()
    for i = 1, #Config.paradiseAlcool do
        exports.qtarget:AddBoxZone(i .. "_paradisealcool_menu", Config.paradiseAlcool[i].coords, 1.0, 1.0, {
            name = i .. "_paradisealcool_menu",
            heading = Config.paradiseAlcool[i].heading,
            debugPoly = false,
            minZ = Config.paradiseAlcool[i].coords.z - 1.5,
            maxZ = Config.paradiseAlcool[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'menualcoolparadise',
                    icon = Config.paradiseAlcool[i].icon,
                    label = Config.paradiseAlcool[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end) 

CreateThread(function()
    for i = 1, #Config.paradiseCasseGeul do
        exports.qtarget:AddBoxZone(i .. "_paradisegeul_menu", Config.paradiseCasseGeul[i].coords, 1.0, 1.0, {
            name = i .. "_paradisegeul_menu",
            heading = Config.paradiseCasseGeul[i].heading,
            debugPoly = false,
            minZ = Config.paradiseCasseGeul[i].coords.z - 1.5,
            maxZ = Config.paradiseCasseGeul[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'paradisecassegeul',
                    icon = Config.paradiseCasseGeul[i].icon,
                    label = Config.paradiseCasseGeul[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end) 

CreateThread(function()
    for i = 1, #Config.paradiseVetement do
        exports.qtarget:AddBoxZone(i .. "_paradisevetement_menu", Config.paradiseVetement[i].coords, 1.0, 1.0, {
            name = i .. "_paradisevetement_menu",
            heading = Config.paradiseVetement[i].heading,
            debugPoly = false,
            minZ = Config.paradiseVetement[i].coords.z - 1.5,
            maxZ = Config.paradiseVetement[i].coords.z + 1.5
        }, {
            options = {
                {
                    event = 'paradisevetement',
                    icon = Config.paradiseVetement[i].icon,
                    label = Config.paradiseVetement[i].labeltarget,
                    job = "paradise",
                }
            },
            distance = 1.5
        })
    end
end) 