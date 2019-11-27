ActiveCalls = {
}

RegisterServerEvent('AddActiveCall')
AddEventHandler('AddActiveCall', function(callnum)
ActiveCalls[callnum] = true
end)
RegisterServerEvent('RemoveActiveCall')
AddEventHandler('RemoveActiveCall', function(callnum)
ActiveCalls[callnum] = false
end)
RegisterServerEvent('GetActiveCalls')
AddEventHandler('GetActiveCalls', function()
TriggerClientEvent('updateCalls',-1,ActiveCalls)
end)
RegisterServerEvent('repit')
AddEventHandler('repit', function()
ActiveCalls = {}
TriggerClientEvent('chatMessage', -1 , 'Server', { 255, 255, 255 }, "Calls have been reset!")
end)
RegisterServerEvent('unitdis')
AddEventHandler('unitdis', function(playername)
--TriggerClientEvent('chatMessage', -1 , 'Dispatch', { 255, 255, 255 }, "Calls have been reset!")
end)

