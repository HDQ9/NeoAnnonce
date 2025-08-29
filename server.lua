-- Nom du fichier : server.lua
-- Description : Gère l'enregistrement de la commande et la diffusion à tous les joueurs.

RegisterCommand('annonce', function(source, args, rawCommand)
    -- Concatène tous les arguments pour former le message complet
    local message = table.concat(args, " ")

    -- Vérifie si un message a été fourni
    if message and message ~= "" then
        -- Déclenche un événement sur le client de TOUS les joueurs (-1)
        -- pour afficher l'annonce.
        TriggerClientEvent('cyberAnnonce:afficher', -1, message)
    else
        -- Envoie un message d'erreur uniquement au joueur qui a tapé la commande
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            args = {"[Annonce]", "Erreur : vous devez spécifier un message. Usage : /annonce [votre message]"}
        })
    end
end, false) -- Mettre 'false' pour que tout le monde puisse utiliser la commande.

-- Optionnel : Vous pouvez ajouter une aide pour la commande dans le chat
TriggerEvent('chat:addSuggestion', '/annonce', 'Envoyer une annonce à tous les joueurs', {
    { name="message", help="Le message à annoncer" }
})