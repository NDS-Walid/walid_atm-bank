ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)




local Atm = {
    	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "FLEECA"},
    Data = { currentMenu = "Bienvenue sur le ATM de la FLEECA" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
            if btn.name == "1 | Déposer" then

                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000) 
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('deposer')
                
                end

            if btn.name == "2 | Déposer" then
            
                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('deposer2')

                end

            if btn.name == "3 | Déposer" then
            
                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('deposer3')

                end

            if btn.name == "1 | Retiré" then
            
                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('retire')

                end


            if btn.name == "2 | Retiré" then
            
                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('retire2')

                end

            if btn.name == "3 | Retiré" then
            
                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('retire3')

                end

                if btn.name == "Regarder votre" then
            
                    TriggerServerEvent('solde')
    
                    end
                    if btn.name == "Déposer une somme personnaliser" then
                        startScenario('PROP_HUMAN_ATM')
        
                        Citizen.Wait(7000)
                        ClearPedTasksImmediately(PlayerPedId())
                        depot_argent()
            
                        end
        
                    if btn.name == "Retiré une somme personnaliser" then
                        
                        startScenario('PROP_HUMAN_ATM')
        
                        Citizen.Wait(7000)
                        ClearPedTasksImmediately(PlayerPedId())
                        retire_argent()
            
                        end 

        end,
    },

    Menu = {

        ["Bienvenue sur le ATM de la FLEECA"] = {
            b = {
                {name = "Regarder votre", ask = "~g~Solde", askX = true},
                {name = "Déposer votre argent", ask = "~w~>", askX = true},
                {name = "Retiré votre argent", ask = "~w~>", askX = true},
            } 
        },

        ["déposer votre argent"] = {
            b = {
            	{name = "1 | Déposer", ask = "~w~500$", askX = true},
                {name = "2 | Déposer", ask = "~w~1 000$", askX = true},
                {name = "3 | Déposer", ask = "~w~2 000$", askX = true},
                {name = "Déposer une somme personnaliser", ask = "~w~>", askX = true},
            }
        },

        ["retiré votre argent"] = {
            b = {
            	{name = "1 | Retiré", ask = "500$", askX = true},
                {name = "2 | Retiré", ask = "1 000$", askX = true},
                {name = "3 | Retiré", ask = "2 000$", askX = true},
                {name = "Retiré une somme personnaliser", ask = "~w~>", askX = true},
            }
        },
    }
}

--- Parler au ped

local positionATM = {
    {x = 33.12, y = -1347.96, z = 29.5}, 
    {x = 147.59, y = -1035.76, z = 29.34}, 
    {x = 145.98, y = -1035.2, z = 29.34},
    {x = 149.92, y = -1040.83, z = 29.37}, 
	{x=-1212.980, y=-330.841, z=37.56},
	{x=-2962.582, y=482.627, z=15.703},
	{x=-112.202, y=6469.295, z=31.626},
	{x=314.187, y=-278.621, z=54.170},
	{x=-351.534, y=-49.529, z=49.042},
	{x=246.59, y=223.51, z=106.29},
	{x=1175.0643310547, y=2706.6435546875, z=38.094036102295}, 
}





RegisterNetEvent('atm:utiliser')
AddEventHandler('atm:utiliser', function(id)
    while true do
        Citizen.Wait(0) 

        for k in pairs(positionATM) do 

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionATM[k].x, positionATM[k].y, positionATM[k].z)

            if dist <= 0.6 then
                  
            
            CreateMenu(Atm)
            Citizen.Wait(500000) 
                
                   
				end
            end
        end 
      

     
end) 

-- Function Animations

function startScenario(anim)
    TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end