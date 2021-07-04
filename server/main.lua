ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetRealPlayerName(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		if Config.EnableESXIdentity then
			if Config.OnlyFirstname then
				return xPlayer.get('firstName')
			else
				return xPlayer.getName()
			end
		else
			return xPlayer.getName()
		end
	else
		return GetPlayerName(playerId)
	end
end

AddEventHandler('chatMessage', function(playerId, playerName, message) 
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()
	--local xPlayers = ESX.GetPlayers()
    --for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(playerId)

    if xPlayer.job.name == 'police' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('popo_prefix', playerName), message}, color = {0, 0, 255}})
	elseif xPlayer.job.name == 'ambulance' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('medic_prefix', playerName), message}, color = {255, 0, 0}})
	elseif xPlayer.job.name == 'mechanic' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('mechanic_prefix', playerName), message}, color = {204, 0, 204}})
	elseif xPlayer.job.name == 'mafia' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('mafia_prefix', playerName), message}, color = {32, 32, 32}})
	elseif xPlayer.job.name == 'taxi' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('uber_prefix', playerName), message}, color = {255, 255, 0}})
	elseif xPlayer.job.name == 'admin' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('admin_prefix', playerName), message}, color = {255, 0, 0}})
	elseif xPlayer.job.name == 'unemployed' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'offpolice' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})	
	elseif xPlayer.job.name == 'offambulance' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'offtaxi' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'offmechanic' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'fisherman' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'fueler' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'lumberjack' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})	
	elseif xPlayer.job.name == 'miner' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'reporter' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'slaughterer' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	elseif xPlayer.job.name == 'tailor' then

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('citi_prefix', playerName), message}, color = {255, 255, 255}})
	end
end

--[[RegisterCommand('twt', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('chat:addMessage', -1, {args = {_U('twt_prefix', playerName), args}, color = {0, 153, 204}})
	end
end, false)]]

--[[RegisterCommand('me', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('me_prefix', playerName), args, {255, 0, 0})
	end
end, false)]]

--[[RegisterCommand('do', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('do_prefix', playerName), args, {0, 0, 255})
	end
end, false)]]


end)