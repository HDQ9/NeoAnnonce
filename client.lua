RegisterNetEvent('cyberAnnonce:afficher')

AddEventHandler('cyberAnnonce:afficher', function(message)
    SendNUIMessage({
        action = "afficher",
        texte = message
    })
end)


