ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(500)
    end
end)

spawnCar = function(car)

    local car = GetHashKey(car)



    RequestModel(car)

    while not HasModelLoaded(car) do

        RequestModel(car)

        Citizen.Wait(1)

    end


    local vehicle = CreateVehicle(car, -230.85, -974.260, 28.68, 158.159, true, false)

    SetEntityAsMissionEntity(vehicle, true, true) 
    SetVehicleNumberPlateText(vehicle, "LOCATION")
end

Citizen.CreateThread(function()
    local hash = GetHashKey("s_m_m_strpreach_01")
    
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end

    ped = CreatePed("PED_TYPE_CIVFEMALE", "s_m_m_strpreach_01", -233.55, -975.15, 28.28, 161.84, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)

local Location_Location = {
Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {250, 0, 0}, Title = "Location De Véhicules" },
    Data = { currentMenu = "~b~Location" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)

            if btn.name == "Voiture" then

                TriggerServerEvent('Location_Location:BuyBlista')

                ESX.ShowNotification('Vous avez payé ~r~$800')

                Citizen.Wait(1)

                spawnCar("kalahari")

                ESX.ShowAdvancedNotification("LS Location", "Bonne route !", "Le véhicule est à votre disposition !", "CHAR_PEGASUS_DELIVERY", 1)    

                end

            if btn.name == "Moto" then

                TriggerServerEvent('Location_Location:BuyVespa')

                ESX.ShowNotification('Vous avez payé ~r~$500')

                Citizen.Wait(0)

                spawnCar("faggio2")

                ESX.ShowAdvancedNotification("LS Location", "Bonne route !", "Le véhicule est à votre disposition !", "CHAR_PEGASUS_DELIVERY", 1)    

            elseif btn.name == "~r~Fermer Le Menu" then
                self:CloseMenu(true)


            end

        end,

    },

    Menu = {

        ["~b~Location"] = {
            b = {
                {name = "----------------------------- Location ----------------------------", ask = "", askX = true},
                {name = "~h~~o~Véhicules à loués", ask = "~h~~o~>>>", askX = true},
                              
            }
        },

        ["~h~~o~véhicules à loués"] = {
            b = {
                {name = "----------------------------- Véhicules ---------------------------", ask = "", askX = true},
                {name = "Voiture", ask = "~r~800$", askX = true},
                {name = "Moto", ask = "~r~500$", askX = true},                
                {name = "~h~~r~Fermer Le Menu", ask = "~h~~r~>>>", askX = true},

            }
        },
    }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if Vdist2(GetEntityCoords(PlayerPedId(), false), -233.55, -975.15, 29.28) < 2.0 then
            ESX.ShowHelpNotification('~r~Appuyer sur [E] pour parler au vendeur de véhicules de location.')
            if IsControlJustPressed(1,51) then 
               CreateMenu(Location_Location)
            end
        end
    end
end)

local blips = {
    {title="Location De Véhicules", colour=37, id=50, x = -233.55, y = -975.15, z = 29.28}
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, 50)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.7)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)