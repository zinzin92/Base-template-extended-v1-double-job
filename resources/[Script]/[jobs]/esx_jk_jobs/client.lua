local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(Config.Marker.type, Config.Marker.x, Config.Marker.y, Config.Marker.z, 0, 0, 0, 0, 0, 0, 2.0001,2.0001,2.0001, 0, Config.Color.r, Config.Color.g, Config.Color.b, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),  -264.45,-959.98,31.22313117981, true) < 1 then
			DisplayHelpText("Appuyez sur ~g~E~s~ pour ouvrir l'agence d'intérim")
		 if (IsControlJustReleased(1, 51)) then
			SetNuiFocus( true, true )
			SendNUIMessage({
				ativa = true
			})
		 end
		end
	end
end)

RegisterNUICallback('1', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobt')
  	cb('ok')
end)



RegisterNUICallback('3', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobp')
  	cb('ok')
end)

RegisterNUICallback('4', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobn')
  	cb('ok')
end)

RegisterNUICallback('5', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobb')
  	cb('ok')
end)

RegisterNUICallback('6', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJoba')
  	cb('ok')
end)

RegisterNUICallback('7', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobe')
  	cb('ok')
end)

RegisterNUICallback('8', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobf')
  	cb('ok')
end)

RegisterNUICallback('9', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobg')
  	cb('ok')
end)

RegisterNUICallback('10', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobh')
  	cb('ok')
end)

RegisterNUICallback('11', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobi')
  	cb('ok')
end)

RegisterNUICallback('12', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobj')
  	cb('ok')
end)

RegisterNUICallback('13', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobk')
  	cb('ok')
end)

RegisterNUICallback('fechar', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
	ativa = false
	})
  	cb('ok')
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

---------------------------------
--------- ikNox#6088 ------------
---------------------------------

-----------------------ajout PNJ--------------------------

local v1 = vector3(-267.34, -959.99, 32.28)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

local distance = 20

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Tu veux Bosser Beau Goss ?")
        end
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("s_f_y_clubbar_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "s_f_y_clubbar_01", -267.34, -959.99, 30.22, 207.63, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
	for i=1, #Config.Zones, 1 do
		local blip = AddBlipForCoord(Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z)
		SetBlipSprite (blip, 407)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 1.2)
		SetBlipColour (blip, 27)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('job_center'))
		EndTextCommandSetBlipName(blip)
	end
end)