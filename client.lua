-- Nom du fichier : client.lua
-- Description : Reçoit l'ordre du serveur et le transmet à l'interface (NUI).

-- Enregistre un événement réseau que le serveur peut appeler
RegisterNetEvent('cyberAnnonce:afficher')

-- Cette fonction est appelée lorsque le serveur déclenche l'événement 'cyberAnnonce:afficher'
AddEventHandler('cyberAnnonce:afficher', function(message)
    -- Envoie un message à l'interface NUI (le fichier HTML)
    -- avec l'action 'afficher' et le contenu du message.
    SendNUIMessage({
        action = "afficher",
        texte = message
    })
end)

