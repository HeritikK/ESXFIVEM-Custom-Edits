hasWeapons = false
drunkq = {}
---------------------------------------------------------------
--FOOT QUESTIONS-------

--Have you been drinking
RegisterNetEvent('f1')
AddEventHandler('f1', function()
			local gametime = GetClockHours()
			
			if gametime > 21 or gametime < 5 then
			drunkq = {"Not that I know of..","No sir.","Only one","Nope","Yeah, a while ago.","I don't drink.","Just because its dark doesn't mean I am drunk..","I had a few earlier","Why do you care?","I don't want to answer that","No officer."}
			else
			drunkq = {"Yeah right, who drinks during the day.", "I wish buddy.","No Sir.","No Officer.","Bruh why would I be during the day.","Like at 1 in the morning today.","You really going to ask that at this time of day?!?!"} 
			end
			ShowNotification("~y~You: ~w~Have you had anything to drink today?")
			Wait(1000)
			ShowNotification("~o~Citizen: ~w~"..drunkq[math.random(#drunkq)])
			

end)
--
RegisterNetEvent('f2')
AddEventHandler('f2', function()
			local gametime = GetClockHours()
			
			if gametime > 21 or gametime < 5 then
			drunkq = {"Not that I know of..","No sir.","Only my daily meds","Nope","Yeah, a while ago I took asprin.","I don't do that.","Do I look like a crack head to you?..","Noooo..","Why do you care?","I don't wish to answer that","No officer."}
			else
			drunkq = {"Why you got any?", "I wish buddy.","No Sir.","No Officer.","Im no meth addict.","Ill be straight with you, NO!","You really going to ask that? No."} 
			end
			ShowNotification("~y~You: ~w~Have you consumed any drugs recently?")
			Wait(1000)
			ShowNotification("~o~Citizen: ~w~"..drunkq[math.random(#drunkq)])
			

end)


RegisterCommand("testd", function()
TriggerEvent('f2')
end)



