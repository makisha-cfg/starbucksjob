fx_version 'adamant'

game 'gta5'
lua54 'yes'

author 'Maki'
description 'Skripta za Starbucks Job'

shared_script {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script {
    'client/*.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}