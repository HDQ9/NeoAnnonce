RegisterCommand('annonce', function(source, args, rawCommand)
    local message = table.concat(args, " ")

    if message and message ~= "" then
        TriggerClientEvent('cyberAnnonce:afficher', -1, message)
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            args = {"[Annonce]", "Erreur : vous devez spécifier un message. Usage : /annonce [votre message]"}
        })
    end
end, false)

TriggerEvent('chat:addSuggestion', '/annonce', 'Envoyer une annonce à tous les joueurs', {
    { name="message", help="Le message à annoncer" }
})
