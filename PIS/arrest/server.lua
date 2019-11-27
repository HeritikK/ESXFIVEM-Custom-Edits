
--[[RegisterServerEvent('grabServer')
AddEventHandler('grabServer', function(infrontPed, source)
  TriggerClientEvent('grab', infrontPed , source)
end)]]

pedinv = {}
vehinv = {}
local mpass = "test"  --Change this to what you want as the password (I know its not secure but it works)
AddEventHandler('chatMessage', function(source, color, message)
  args = stringsplit(message, " ")
  if (args[1] == "/setpedinv") then
    CancelEvent()
    if (args[2] ~= nil) then
	  local argslength = tablelength(args)
	  if (argslength ~= nil) then
	    local i
		local fullstring = ""
	    for i=2,argslength do
	      fullstring = (fullstring .. " " .. args[i])
	    end
		pedinv[source] = fullstring
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Inventory set to: "..fullstring)
    end
    else
      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /setpedinv [items]")
    end
  end
  
  if (args[1] == "/searchped") then
    CancelEvent()
    if (args[2] ~= nil) then
	  if (tonumber(args[2]) ~= nil) then
	    if (pedinv[tonumber(args[2])] ~= nil) then
          fullstring = pedinv[tonumber(args[2])] 
	      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "You found: "..fullstring)
	    else
	      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "This person's inventory was not set up")
	    end
	  else
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /searchped [id]")
	  end
    else
      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /searchped [id]")
    end
  end
  
  if (args[1] == "/setvehinv") then
    CancelEvent()
    if (args[2] ~= nil) then
	  local argslength = tablelength(args)
	  if (argslength ~= nil) then
	    local i
		local fullstring = ""
	    for i=2,argslength do
	      fullstring = (fullstring .. " " .. args[i])
	    end
		vehinv[source] = fullstring
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Vehicle inventory set to: "..fullstring)
    end
    else
      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /setvehinv [items]")
    end
  end
  
  if (args[1] == "/searchveh") then
    CancelEvent()
    if (args[2] ~= nil) then
	  if (tonumber(args[2]) ~= nil) then
	    if (vehinv[tonumber(args[2])] ~= nil) then
          fullstring = vehinv[tonumber(args[2])] 
	      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "You found: "..fullstring)
	    else
	      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "This vehicle's inventory was not set up")
	    end
	  else
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /searchveh [id]")
      end
    else
      TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /searchveh [id]")
    end
  end
  
  if (args[1] == "/clearinv") then
    CancelEvent()
	pedinv[source] = nil
	vehinv[source] = nil
	TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Your inventory has been cleared")
  end
  
  -- "Administrator" commands below here
  
  if (args[1] == "/clearallinv") then
    CancelEvent()
    if (args[2] ~= nil) then
	  if (args[2] == mpass) then
	    pedinv = {}
		vehinv = {}
		TriggerClientEvent('chatMessage', -1, "Search", {244, 155, 66}, "All inventories have been cleared")
	  else
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Incorrect password")
	  end
	else
	  TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /clearallinv [password]")
	end
  end
  
  if (args[1] == "/clearoneinv") then
    CancelEvent()
	if (args[3] ~= nil) then
	  if (tonumber(args[2]) ~= nil) then
	    if (args[3] == mpass) then
	      pedinv[tonumber(args[2])] = nil
		  vehinv[tonumber(args[2])] = nil
		  TriggerClientEvent('chatMessage', -1, "Search", {244, 155, 66}, "Playerid "..args[2].."'s inventory has been cleared")
		else
		  TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Incorrect password")
		end
	  else
	    TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /clearoneinv [id] [password]")
	  end
	else
	  TriggerClientEvent('chatMessage', source, "Search", {244, 155, 66}, "Usage: /clearoneinv [id] [password]")
	end
  end
end)

AddEventHandler('playerDropped', function() -- upon player leaving
  pedinv[source] = nil
  vehinv[source] = nil
  print("The playerid "..source.."'s inventory has been reset automatically")
end)

function stringsplit(inputstr, sep)
  if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end