resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Walid ATM/BANK'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'server/sv_atm.lua'

}

client_scripts {
	'@es_extended/locale.lua',
    '@MenuUi/cl_menu.lua',
	'locales/fr.lua',
	'config.lua',
	'client/cl_atm.lua',
	'cl_menu.lua'
}

dependency 'es_extended'