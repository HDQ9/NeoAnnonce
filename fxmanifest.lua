-- Nom du fichier : fxmanifest.lua
-- Description : Fichier de manifeste qui définit la ressource pour FiveM.

fx_version 'cerulean'
game 'gta5'

author 'VotreNom'
description 'Système d\'annonce cyberpunk avec synthèse vocale'
version '1.0.0'

-- Fichier principal de l'interface utilisateur
ui_page 'html/index.html'

-- Fichiers que l'interface utilisateur doit charger
files {
    'html/index.html'
}

-- Scripts côté client et serveur
client_script 'client.lua'
server_script 'server.lua'
