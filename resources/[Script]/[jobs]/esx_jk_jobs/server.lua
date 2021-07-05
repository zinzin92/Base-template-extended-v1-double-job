ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_jk_jobs:setJobt')
AddEventHandler('esx_jk_jobs:setJobt', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("slaughterer", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)



RegisterServerEvent('esx_jk_jobs:setJobp')
AddEventHandler('esx_jk_jobs:setJobp', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("lumberjack", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé  ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobn')
AddEventHandler('esx_jk_jobs:setJobn', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("tailor", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé  ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_jk_jobs:setJoba')
AddEventHandler('esx_jk_jobs:setJoba', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("miner", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé  ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobb')
AddEventHandler('esx_jk_jobs:setJobb', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("unemployed", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé  ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_jk_jobs:setJobe')
AddEventHandler('esx_jk_jobs:setJobe', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("pompiste", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobf')
AddEventHandler('esx_jk_jobs:setJobf', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("fruitier", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobg')
AddEventHandler('esx_jk_jobs:setJobg', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("journaliste", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)



RegisterServerEvent('esx_jk_jobs:setJobj')
AddEventHandler('esx_jk_jobs:setJobj', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("gopostal", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobk')
AddEventHandler('esx_jk_jobs:setJobk', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("busdriver", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_jk_jobs:setJobh')
AddEventHandler('esx_jk_jobs:setJobh', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("salvage", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été engagé ~g~' .. xPlayer.getName())
end)

---------------------------------
--- Copyright by ikNox#6088 ---
---------------------------------