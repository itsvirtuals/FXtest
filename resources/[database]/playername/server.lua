--Darkzy
RegisterServerEvent('cp:spawnplayer')
AddEventHandler('cp:spawnplayer', function()
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local player = user.getIdentifier()
	MySQL.Async.execute("UPDATE users SET Name=@name WHERE identifier=@username", {['@name'] = GetPlayerName(source), ['@username'] = player}, function(oof)
		Citizen.Wait(0)
	MySQL.Async.execute("UPDATE user_weapons SET Name=@name WHERE identifier=@username", {['@name'] = GetPlayerName(source), ['@username'] = player}, function(weapons)
		end)
	end)
  end)
end)