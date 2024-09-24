
-- stop using chatgpt to make scripts, learn from chatgpt

fx_version 'cerulean'
game 'gta5'

author 'notspartagt'
description 'Leave Engine Running Script with qb-core and multiple fuel system support'
version '1.2.0'

shared_script 'config.lua'

client_scripts {
    'client/main.lua',
}

shared_scripts {
    'config.lua'
}
server_scripts {
    'server/main.lua',
}

dependencies {
    'qb-core'
}
