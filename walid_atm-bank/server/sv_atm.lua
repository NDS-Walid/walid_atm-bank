ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('deposer')
AddEventHandler('deposer', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 500
    local xMoney = xPlayer.getMoney()
    
    if xMoney >= price then
    
    xPlayer.addAccountMoney('bank', price)
    xPlayer.removeMoney(price)
          TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez déposer ~g~ 500 $ ~w~ en banque !", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas tout cette d\'argent !")
    end    
end)

RegisterNetEvent('deposer2')
AddEventHandler('deposer2', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 1000
    local xMoney = xPlayer.getMoney()
    
    if xMoney >= price then
    
    xPlayer.addAccountMoney('bank', price)
    xPlayer.removeMoney(price)
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez déposer ~g~ 1 000 $ ~w~ en banque !", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas tout cette ~r~d\'argent !")
    end    
end)

RegisterNetEvent('deposer3')
AddEventHandler('deposer3', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 2000
    local xMoney = xPlayer.getMoney()
    
    if xMoney >= price then
    
    xPlayer.addAccountMoney('bank', price)
    xPlayer.removeMoney(price)
          TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez déposer ~g~ 2 000 $ ~w~ en banque !", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas tout cette ~r~d\'argent !")
    end    
end)

RegisterServerEvent('retire')
AddEventHandler('retire', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 500
    local xMoney = xPlayer.getBank()
    
    if xMoney >= price then
    
    xPlayer.removeAccountMoney('bank', price)
    xPlayer.addMoney(price)
          TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez retiré ~g~ "..price.." $ ~w~.", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas tout cette ~r~d\'argent !")
    end    
end)

RegisterServerEvent('retire2')
AddEventHandler('retire2', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 1000
    local xMoney = xPlayer.getBank()
    
    if xMoney >= price then
    
    xPlayer.removeAccountMoney('bank', price)
    xPlayer.addMoney(price)
          TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez retiré ~g~ "..price.." $ ~w~.", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas tout cette ~r~d\'argent !")
    end    
end)

RegisterServerEvent('retire3')
AddEventHandler('retire3', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 2000 
    local xMoney = xPlayer.getBank()
    
    if xMoney >= price then
     
    xPlayer.removeAccountMoney('bank', price)
    xPlayer.addMoney(price)
          TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Vous avez retiré ~g~ "..price.." $ ~w~.", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas tout cette ~r~d\'argent !")
    end    
end)

RegisterServerEvent('solde')
AddEventHandler('solde', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    balance = xPlayer.getAccount('bank').money
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FL~g~EE~s~CA', "~b~Votre solde banquaire : ~g~".. balance .."", 'CHAR_BANK_FLEECA', 8)
end)
 
ESX.RegisterUsableItem('cartebanque', function(source)
    TriggerClientEvent('atm:utiliser', source)
 end)   