


--MySQL:open(“IP”, “databasename”, 'user', 'password')


gamedate = nil
RegisterServerEvent('getdate')
AddEventHandler('getdate', function()
gamedate = os.date()
TriggerClientEvent('setdate',source,gamedate)
end)

--MySQL.Sync.execute("UPDATE player SET name=@name WHERE id=@id", {['@id'] = 10, ['@name'] = 'foo'})
pednames = {}

alpp = {}

RegisterServerEvent('addnames')
AddEventHandler('addnames', function(netd,pename)

pednames[netd] = pename
TriggerClientEvent('chatMessage', source, "Name", {0, 0, 255},pednames[netd])
end)
RegisterServerEvent('getnames')
AddEventHandler('getnames', function(netdd)

susname = pednames[netdd]
TriggerClientEvent('chatMessage', source, "Name", {0, 0, 255},pednames[netdd])
TriggerClientEvent('GetDL',source,susname)
end)

RegisterServerEvent('noice')
AddEventHandler('noice', function(divv)
sou = source

alpp[sou] = divv


end)

RegisterServerEvent('slowtraffic')
AddEventHandler('slowtraffic', function()



end)



RegisterServerEvent('units')
AddEventHandler('units', function()
 
 
 for i = 1 , 200 do
 Wait(0)
 if alpp[i] ~= nil then
  TriggerClientEvent('chatMessage', -1, "Roster", {0, 0, 255}, alpp[i])
  end
end

end)
AddEventHandler('playerDropped', function() -- upon player leaving
  alpp[source] = nil
  print("The playerid "..source.."'s BAC has been reset automatically")
end)
RegisterServerEvent('findhex')
AddEventHandler('findhex', function()
 pppp = source
 
 print(GetPlayerIdentifiers(pppp)[1])

end)

RegisterServerEvent('servertext')
AddEventHandler('servertext', function(servtext)
 pppp = source
  TriggerClientEvent('chatMessage', -1, "Server", {0, 255, 0}, servtext)


end)

RegisterServerEvent('pullem')
AddEventHandler('pullem', function()

  TriggerClientEvent('revenge', -1)
 

end)




availl = 0
availll = 0



local pisVersion = "1.5"

print("")
print("----------------LSPDFR Online----------------")
print("LSPDFROnline - LSPDFROnline SUCCESFULLY LOADED")
print("LSPDFROnline - RUNNING ON v" .. pisVersion)
print("---------------------------------------")

TriggerClientEvent('chatMessage', -1, "PIS ^6v" .. pisVersion, { 0, 0, 0}, " SUCCESFULLY LOADED!")


onduty = {""}
status = {""}


pedids = {""}
pednames = {""}
pedgenders = {""}
peddobs = {""}
currentid = 0





AddEventHandler('playerDropped', function() -- upon player leaving
 
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

