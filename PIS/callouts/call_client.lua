
calls = false
crashcalls = false
citycalls = false
ccalls = false
hcalls = false
curhour = GetClockHours()
activeCalls = {}
callx = 0.0
callz = 0.0
calltype = ""

Status = 7
CallsEnabled = false

RegisterNetEvent('updateCalls')
AddEventHandler('updateCalls', function(allcalls)
activeCalls = allcalls

end)

RegisterNetEvent('changestatus')
AddEventHandler('changestatus', function(status)

if status == 8 then
Status = 8
elseif status == 7 then
Status = 7
elseif status == 6 then
Status = 6
end


end)

Citizen.CreateThread(function()
	while true do
		Wait(1000)
		TriggerServerEvent('GetActiveCalls')
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(3000)
			if Status == 8 and CallsEnabled == false then
			CallsEnabled = true
			print("8")
			elseif Status == 7 then
			CallsEnabled = false
			elseif Status == 6 then
			CallsEnabled = false
			print("6")
			end
	end
end)

allcalls = {
"Paleto1",


}


CallSelect = 0
Citizen.CreateThread(function()
	while true do
		Wait(500)
		--print(GetClockMinutes())
		if CallsEnabled == true then
		
		math.randomseed(GetClockMinutes())
		CallSelect = math.random(1,4)
		CallSelect = math.random(1,4)
		CallSelect = math.random(1,4)
		
		--ShowNotification(CallSelect)
		
		if activeCalls[CallSelect] == true then
		--ShowNotification("Faggot")
		ShowNotification("Call already exists, regenerating")
		else
		Status = 6
		CallsEnabled = false
		--ShowNotification("~g~Your status has been updated.")
		
		TriggerServerEvent('AddActiveCall',CallSelect)
		if CallSelect == 1 then
		TriggerEvent('Paleto1')
		elseif CallSelect == 2 then
		TriggerEvent('Paleto2')
		elseif CallSelect == 3 then
		TriggerEvent('Paleto3')
		elseif CallSelect == 4 then
		TriggerEvent('Paleto4')
		end
		
		RandTime = math.random(10*60000,25*60000)
		print("Next call in "..(RandTime/1000)/60 .." Minutes")
		print("Next call in "..(RandTime/1000).." Seconds")
		Wait(RandTime)
		if activeCalls[CallSelect] == true then
		TriggerEvent('Code4')
		end
		end
		end
	end
end)

RegisterNetEvent('Code4')
AddEventHandler('Code4', function()
if activeCalls[CallSelect] == true then
TriggerServerEvent('RemoveActiveCall',CallSelect)
--ShowNotification("~g~Call is Code 4")
PlayerName = GetPlayerName(PlayerId())
TriggerServerEvent('code4',PlayerName)
else
ShowNotification("~y~Call is already Code 4")
end

end)


--cname,cstreet1,cpostal,cstreet3,cnar
 RegisterCommand('CallTest', function()
TriggerEvent('Paleto1')
--ShowNotification("Nice try buster")
end)

Citizen.CreateThread(function()
	--ShowNotification("Noice")
	for i = 1,#PedHashBoth do
	Wait(10)
    RequestModel(GetHashKey(PedHashBoth[i]))
	
    while not HasModelLoaded(GetHashKey(PedHashBoth[i])) do
        Wait(1)
    end
	print("~g~Loaded ~w~"..PedHashBoth[i])
	end
	print("All Human models loaded")
	end)
	
	Citizen.CreateThread(function()
	--ShowNotification("Noice")
	for i = 1,#PedHashDog do
	Wait(10)
    RequestModel(GetHashKey(PedHashDog[i]))
	
    while not HasModelLoaded(GetHashKey(PedHashDog[i])) do
        Wait(1)
    end
	print("~g~Loaded ~w~"..PedHashDog[i])
	end
	print("All Dog models loaded")
	end)
	
	Citizen.CreateThread(function()
	--ShowNotification("Noice")
	for i = 1,#Vehicle4door do
	Wait(10)
    RequestModel(GetHashKey(Vehicle4door[i]))
	
    while not HasModelLoaded(GetHashKey(Vehicle4door[i])) do
        Wait(1)
    end
	print("~g~Loaded ~w~"..Vehicle4door[i])
	end
	print("All Vehicles models loaded")
	end)

ScenList = {
"WORLD_HUMAN_AA_SMOKE",
"WORLD_HUMAN_DRINKING",
"WORLD_HUMAN_DRUG_DEALER",
"WORLD_HUMAN_DRUG_DEALER_HARD",
"WORLD_HUMAN_SMOKING_POT",
"WORLD_HUMAN_STAND_IMPATIENT",
"CODE_HUMAN_STAND_COWER",
}

PedHashMale = {
"a_m_m_afriamer_01",
"a_m_m_beach_01",
"a_m_m_bevhills_01",
"a_m_m_eastsa_01",
"a_m_m_farmer_01",
}
PedHashFemale = {
"a_f_m_business_02",
"a_f_m_downtown_01",
"a_f_m_fatbla_01",
"a_f_m_ktown_01",
}
PedHashBoth = {
"a_f_m_business_02",
"a_f_m_downtown_01",
"a_f_m_fatbla_01",
"a_f_m_ktown_01",
"a_m_m_afriamer_01",
"a_m_m_beach_01",
"a_m_m_bevhills_01",
"a_m_m_eastsa_01",
"a_m_m_farmer_01",
}
PedHashDog = {
"a_c_chop",
"a_c_husky",
"a_c_poodle",
"a_c_pug",
"a_c_retriever",
}
Vehicle4door = {
"emperor",
"emperor2",
"fugitive",
"glendale",
"primo",
}

Paleto1Domestic1 = {
vector3(-98.573364257813,6347.3056640625,31.575895309448),
vector3(-102.473364257813,6344.5,35.575895309448),
vector3(-104.0,6331.7,31.5),

}
Paleto1Domestic2 = {
vector3(-98.573364257813,6347.3056640625,31.575895309448),
vector3(-101.2,6345.8056640625,35.575895309448),
vector3(-102.3,6330.7,31.5),

}
Paleto1Susp = {
vector3(-130.3646697998,6331.0288085938,31.49037361145), 
vector3(-129.40155029297,6337.337890625,31.490371704102), 
vector3(-116.88446807861,6349.9575195313,31.49037361145), 
vector3(-118.68290710449,6356.2080078125,31.490375518799), 
vector3(-95.741737365723,6369.6904296875,31.490348815918), 
vector3(-90.723350524902,6373.3383789063,31.490375518799), 
vector3(-111.3674621582,6358.3666992188,31.490371704102), 

}

Paleto1Fight1 = {
vector3(-68.059364318848,6355.7641601563,31.490375518799), 
vector3(-78.154029846191,6323.9497070313,31.490335464478), 
vector3(-100.70879364014,6336.9604492188,31.490375518799), 
vector3(-87.545120239258,6352.7729492188,31.49036026001), 
vector3(-82.642448425293,6343.6328125,31.49037361145),
vector3(-104.86368560791,6312.033203125,31.49037361145),
}
Paleto1Fight2 = {
vector3(-65.655075073242,6353.46875,31.49037361145), 
vector3(-81.152694702148,6320.8374023438,31.490346908569), 
vector3(-99.141151428223,6340.349609375,31.490369796753),
vector3(-85.799598693848,6354.7231445313,31.49036026001),
vector3(-81.31568145752,6341.4350585938,31.49037361145),
vector3(-107.02667999268,6312.3549804688,31.49037361145), 
}
Paleto1Dog = {
vector3(-61.107486724854,6343.8950195313,30.992160797119), 
vector3(-72.850273132324,6357.7055664063,30.992321014404), 
vector3(-81.673896789551,6343.2875976563,30.992376327515), 
vector3(-106.72714233398,6310.8002929688,30.98875617981), 
vector3(-77.301872253418,6324.009765625,30.992347717285), 

}



RegisterNetEvent('Paleto1')
AddEventHandler('Paleto1', function()
	Scenario = math.random(1,3)
	Scenario = math.random(1,3)
	Scenario = math.random(1,3)
	--Scenario = 4
	callloc = "motel"
	if Scenario == 1 then
	callt = "domestic"
   cname = "Domestic Dispute"
   cstreet1 = "Pynite Avenue"
   cpostal = "Postal 1024"
   cstreet3 = "Dram View Motel"
   cnar = "Caller reports a disturbance at the Motel"
   PlayerName = GetPlayerName(PlayerId())
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
   dchance = math.random(#Paleto1Domestic1)
   d1 = Paleto1Domestic1[dchance]
   d2 = Paleto1Domestic2[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
   d2p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
  if DoesEntityExist(d2ped) then
  DeleteEntity(d2ped)
  end
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  RequestModel(GetHashKey(d2p))
    while not HasModelLoaded(GetHashKey(d2p)) do
        Wait(1)
    end
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   d2ped = CreatePed(26, d2p,d2, 45.0, true, true)
   SetEntityAsMissionEntity(d1ped)
   SetEntityAsMissionEntity(d2ped)
   TaskTurnPedToFaceEntity(d1ped,d2ped,-1)
    TaskTurnPedToFaceEntity(d2ped,d1ped,-1)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",4)
   DecorSetInt(d2ped,"Intent",4)
   
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   
   elseif Scenario == 2 then
   callt = "susp"
   cname = "Suspicious Activity"
   cstreet1 = "Pynite Avenue"
   cpostal = "Postal 1024"
   cstreet3 = "Dram View Motel"
   cnar = "Caller reports seeing a person hanging out behind the motel."
   PlayerName = GetPlayerName(PlayerId())
    dchance = math.random(#Paleto1Susp)
   d1 = Paleto1Susp[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
  if DoesEntityExist(d2ped) then
  DeleteEntity(d2ped)
  end
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	rscen = ScenList[math.random(#ScenList)]
	
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   SetEntityAsMissionEntity(d1ped)
   TaskStartScenarioInPlace(d1ped,rscen,0,1)
   if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
   cnar = "Caller reports seeing a Male hanging out behind the motel."
   else
    cnar = "Caller reports seeing a Female hanging out behind the motel."
   end
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",3)
  TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
   elseif Scenario == 3 then
   callt = "fight"
   cname = "Fight In Progress"
   cstreet1 = "Pynite Avenue"
   cpostal = "Postal 1024"
   cstreet3 = "Dram View Motel"
   cnar = "Caller reports a fight broke out in the parking lot."
   PlayerName = GetPlayerName(PlayerId())
    dchance = math.random(#Paleto1Fight1)
   d1 = Paleto1Fight1[dchance]
   d2 = Paleto1Fight2[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
   d2p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  DeleteEntity(d1veh)
  end
   if DoesEntityExist(d1veh) then
  DeleteEntity(d1veh)
  end
  if DoesEntityExist(d2ped) then
  DeleteEntity(d2ped)
  end
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  RequestModel(GetHashKey(d2p))
    while not HasModelLoaded(GetHashKey(d2p)) do
        Wait(1)
    end
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   d2ped = CreatePed(26, d2p,d2, 45.0, true, true)
   SetEntityAsMissionEntity(d1ped)
   SetEntityAsMissionEntity(d2ped)
   TaskTurnPedToFaceEntity(d1ped,d2ped,-1)
    TaskTurnPedToFaceEntity(d2ped,d1ped,-1)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",4)
   DecorSetInt(d2ped,"Intent",4)
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
   AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	SetPedCombatAttributes(d1ped, 5, true)
	SetPedCombatAttributes(d2ped, 5, true)
	SetPedCombatAbility(d1ped, 100)
	SetPedCombatAbility(d2ped, 100)
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(d1ped, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(d2ped, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(d1ped, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(d2ped, false, GetHashKey("fighter1"))
  
  elseif Scenario == 4 then
   callt = "dog"
   cname = "Dog locked in car"
   cstreet1 = "Pynite Avenue"
   cpostal = "Postal 1024"
   cstreet3 = "Dram View Motel"
   cnar = "Caller reports seeing a dog locked in a car."
   PlayerName = GetPlayerName(PlayerId())
    dchance = math.random(#Paleto1Dog)
   d1 = Paleto1Dog[dchance]
   d1p = PedHashDog[math.random(#PedHashDog)]
   v1 = Vehicle4door[math.random(#Vehicle4door)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
  if DoesEntityExist(d2ped) then
  DeleteEntity(d2ped)
  end
    if DoesEntityExist(d1veh) then
	DeleteEntity(d1veh)
	end
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	rscen = ScenList[math.random(#ScenList)]
	d1veh = CreateVehicle(v1,d1, 0.0, true, false)
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   SetEntityAsMissionEntity(d1ped)
   SetEntityAsMissionEntity(d1veh)
   SetPedIntoVehicle(d1ped,d1veh,math.random(0,2))
   SetVehicleDoorsLockedForAllPlayers(d1veh,true)
   --TaskStartScenarioInPlace(d1ped,rscen,0,1)
   
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   
  TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
   end
  end)
  
  Paleto2Tres = {
  vector3(-759.82080078125,5575.642578125,36.70964050293), 
vector3(-760.16265869141,5600.3452148438,36.706226348877), 
vector3(-738.09356689453,5559.5888671875,36.70964050293), 
vector3(-748.44976806641,5551.7900390625,33.604915618896), 
vector3(-781.81860351563,5568.177734375,33.485721588135), 
vector3(-774.74865722656,5592.4135742188,33.595283508301), 
vector3(-768.91400146484,5596.2646484375,33.605834960938), 

  }
  --[[The MIT License (MIT)
Copyright (c) 2017 IllidanS4
Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:
The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
]]
 RegisterCommand('getped', function()
 TriggerServerEvent('testit')
end)


  
  
  RegisterNetEvent('Paleto2')
AddEventHandler('Paleto2', function()
	callloc = "plaza"
	Scenario = math.random(1,3)
	Scenario = math.random(1,3)
	Scenario = math.random(1,2)
	--Scenario = 2
	if Scenario == 1 then
	callt = "loiter"
   cname = "Loitering"
   cstreet1 = "Route 1"
   cpostal = "Postal 1080"
   cstreet3 = "Bay Plaza"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto2Tres)
   d1 = Paleto2Tres[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been loitering for over "..math.random(20,60).." Minutes"
	else
		cnar = "Caller reports a Female that has been loitering for over "..math.random(20,60).." Minutes"
	end
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   
   elseif Scenario == 2 then
   callt = "susp"
   cname = "Suspicious Person"
   cstreet1 = "Route 1"
   cpostal = "Postal 1080"
   cstreet3 = "Bay Plaza"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto2Tres)
   d1 = Paleto2Tres[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	--TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been walking around the area for over "..math.random(20,120).." Minutes"
	else
		cnar = "Caller reports a Female that has been walking around the area for over "..math.random(20,120).." Minutes"
	end
	TaskWanderStandard(d1ped, 1.0, 10)
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   end
  
  end)
  
  Paleto3Tres = {
  vector3(1730.1682128906,6409.916015625,35.000648498535), 
vector3(1735.3958740234,6408.5366210938,35.000648498535), 
vector3(1738.2482910156,6406.9682617188,34.942028045654), 
vector3(1726.1975097656,6412.13671875,35.000644683838), 
vector3(1720.9193115234,6411.1440429688,33.954978942871), 
vector3(1730.1987304688,6411.0043945313,35.000652313232), 

  
  }
  Paleto2Shop = {
  vector3(1733.7888183594,6414.2119140625,35.037220001221), 
vector3(1731.0576171875,6415.671875,35.037220001221), 
vector3(1736.900390625,6412.958984375,35.037220001221), 
vector3(1735.8884277344,6411.52734375,35.037220001221), 
vector3(1730.8048095703,6419.080078125,35.037220001221), 

  
  }
  
  RegisterNetEvent('Paleto3')
AddEventHandler('Paleto3', function()
	Scenario = math.random(1,2)
	Scenario = math.random(1,2)
	Scenario = math.random(1,2)
	callloc = "247"
	if Scenario == 1 then
	callt = "loiter"
   cname = "Loitering"
   cstreet1 = "Route 1"
   cpostal = "Postal 1000"
   cstreet3 = "24/7"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto3Tres)
   d1 = Paleto3Tres[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been loitering for over "..math.random(20,60).." Minutes"
	else
		cnar = "Caller reports a Female that has been loitering for over "..math.random(20,60).." Minutes"
	end
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   
   elseif Scenario == 2 then
   callt = "shoplift"
   cname = "Shoplifting"
   cstreet1 = "Route 1"
   cpostal = "Postal 1000"
   cstreet3 = "24/7"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto2Shop)
   d1 = Paleto2Shop[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 250.2, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	--TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been shoplifting."
	else
		cnar = "Caller reports a Female that has been shoplifting."
	end
	fchance = math.random(1,2)
	if fchance == 1 then
	cnar = cnar.." They are in the store still."
	Wait(1000)
	TaskStartScenarioInPlace(d1ped,"PROP_HUMAN_ATM",0,1)
	else
	cnar = cnar.." They have just left the store and are walking away."
	TaskWanderStandard(d1ped, 1.0, 10)
	end
	
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   end
  
  end)
  Paleto4Loiter = {
  vector3(104.0362701416,6553.8198242188,31.50997543335), 
vector3(37.322681427002,6549.4306640625,31.425592422485), 
vector3(60.837368011475,6497.6352539063,31.539266586304), 
vector3(85.055717468262,6574.7309570313,31.40704536438), 
vector3(53.785118103027,6556.4028320313,31.900239944458), 
vector3(39.2112159729,6520.0961914063,33.727058410645), 
vector3(54.227577209473,6545.2333984375,30.920415878296), 
}

   RegisterNetEvent('Paleto4')
AddEventHandler('Paleto4', function()
	Scenario = math.random(1,2)
	Scenario = math.random(1,2)
	Scenario = math.random(1,2)
	callloc = "construction"
	if Scenario == 1 then
	callt = "loiter"
   cname = "Loitering"
   cstreet1 = "Route 1"
   cpostal = "Postal 1014"
   cstreet3 = "Construction Site"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto4Loiter)
   d1 = Paleto4Loiter[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been loitering for over "..math.random(20,60).." Minutes"
	else
		cnar = "Caller reports a Female that has been loitering for over "..math.random(20,60).." Minutes"
	end
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   
   elseif Scenario == 2 then
   callt = "susp"
   cname = "Suspicious Person"
   cstreet1 = "Route 1"
   cpostal = "Postal 1014"
   cstreet3 = "Construction Site"
   cnar = "Caller reports a person that has been loitering for over "..math.random(20,60).." Minutes"
   PlayerName = GetPlayerName(PlayerId())
  
   dchance = math.random(#Paleto4Loiter)
   d1 = Paleto4Loiter[dchance]
   d1p = PedHashBoth[math.random(#PedHashBoth)]
  if DoesEntityExist(d1ped) then
  DeleteEntity(d1ped)
  end
 
  RequestModel(GetHashKey(d1p))
    while not HasModelLoaded(GetHashKey(d1p)) do
        Wait(1)
    end
	
  
   d1ped = CreatePed(26, d1p,d1, 45.0, true, true)
   
   SetEntityAsMissionEntity(d1ped)
   --PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   DecorSetInt(d1ped,"Intent",math.random(1,4))
   rscen = ScenList[math.random(#ScenList)]
	--TaskStartScenarioInPlace(d1ped,rscen,0,1)
    if GetPedType(d1ped) == 4 then
  -- ShowNotification("Male")
	cnar = "Caller reports a Male that has been walking around the area for over "..math.random(20,120).." Minutes"
	else
		cnar = "Caller reports a Female that has been walking around the area for over "..math.random(20,120).." Minutes"
	end
	TaskWanderStandard(d1ped, 1.0, 10)
   TriggerServerEvent('addcall',cname,cstreet1,cpostal,cstreet3,cnar,PlayerName,callt,callloc)
  -- ShowNotification("Spawned")
   --Wait(1000)
  -- PlayAmbientSpeechWithVoice(d1ped, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
   end
  
  end)
  
    RegisterNetEvent('payem')
AddEventHandler('payem', function(monn)
TriggerEvent('addcash',monn)

end)
  
  
  RegisterNetEvent('recash')
AddEventHandler('recash', function(moneyy)

  TriggerServerEvent("rekm",moneyy)
  ShowNotification("Money removed from your account "..moneyy)
  
  
  end)

  
  
  
 
  
RegisterNetEvent('callinfo')
AddEventHandler('callinfo', function(callinfo)

calltype = callinfo

if calltype == "aband" then
callx = -3015.2
callz = 187.1
elseif calltype == "hwycrash" then
callx = 2244.2
callz = 5990.2
elseif calltype == "suicide" then
callx = -1911.2
callz = 4625.7
elseif calltype == "cshots" then
callx = 52.1
callz = 3713.1
elseif calltype == "clothes" then
callx = 614.38
callz = 2765.1
elseif calltype == "rocks" then
callx = 2706.6
callz = 4866.8
elseif calltype == "drunk" then
callx = 1966.3
callz = 3745.8
elseif calltype == "deal" then
callx = 1508.5
callz = 3753.8
end




end)



 RegisterCommand('hex', function()
TriggerServerEvent('findhex')
end)

Citizen.CreateThread(function()
	while true do
		Wait(3000)
	--SetEntityMaxSpeed(GetPlayerPed(-1),1.0)
		playerPed = GetPlayerPed(-1)
		car = GetVehiclePedIsIn(playerPed, false)
		cspeed = (GetEntitySpeed(car)* 2.236936)
		--print(cspeed)
		if car and cspeed > 75.0 then
			if GetVehicleClass(car) == 18 and IsVehicleSirenOn(car) == false then
			pnamer = GetPlayerName(PlayerId())
			TriggerServerEvent('speeder',pnamer)
			end
			
		end
	end
end)
--County Locations
-- 1606.5, 3599.73, 35.14  In Front Of Motel
-- 1529.7, 3555.3, 35.36 Rear of Motel By Pool
-- 1963.4, 3744.3, 32.3 Sandy Shores 24/7 Inside
-- 1983.6, 3769.0, 32.1 SandyShores Gas Station(Next to 24/7)
-- 1458.9, 3725.9, 33.65 SanyShore Boat House Parkinglot
-- 590.6, 2737.57, 42.04 SandyShores DollarPills 4020
-- 1122.0, 2652.9, 37.99 SandyShore Motel 4025
-- 2706.0, 4865.0, 44.63 Sandy Shores Overpass 2054
-- 58.6, 3714.7, 39.7 Stab City
-- 236.0, 1162.6, 225.5 Theater 5026
-- 281.64, 2850.5, 43.64 Mine 4014
-- -1898.7, 2028.34, 140.7 5009

--Time
--Day 6 - 20
--Night 0-5,21-23

--2706.6, 4867.4, 44.6, heading 99.8 leaning a_m_m_hillbilly_02
--2706.0, 4864.7, 44.6  heading 280.4 Partying  a_m_m_skater_01

--emperor2  1511.0, 3752.0, 33.5, 63.0
--baller3  1508.6, 3748.3, 34.0, 241.1
-- 1508.5, 3753.8, 33.9, 130.2 a_m_m_mexlabor_01 WORLD_HUMAN_DRUG_DEALER
-- 1506.6, 3750.7, 34.0, 331.9 a_m_m_og_boss_01  WORLD_HUMAN_DRUG_DEALER_HARD

--1966.3, 3745.8, 32.3, 209.1  a_m_m_hillbilly_02 WORLD_HUMAN_SUNBATHE_BACK

--52.1, 3713.1, 39.75, 308.2
--68.6, 3729.3, 39.6, 144.9 

 RegisterCommand('testcall', function()
TriggerServerEvent('AbandonVeh')
end)

RegisterNetEvent('AbandonVeh')
AddEventHandler('AbandonVeh', function()
	
	DeleteEntity(v5)
	
	nee = "burrito3"
    drug2hash = GetHashKey(nee)
    RequestModel(drug2hash)
	
	

    while   not HasModelLoaded(drug2hash) do
        Wait(1)
    end
	
	Wait(1000)
    
	v5 = CreateVehicle(drug2hash, -3015.2, 187.1, 15.9, 14.8, true, false)
	
end)

RegisterNetEvent('HwyCrash1')
AddEventHandler('HwyCrash1', function()
	
	DeleteEntity(sus4)
	DeleteEntity(v4)
	
	sus11Model = "a_m_m_bevhills_01"
    sus11ModelHash = GetHashKey(sus11Model)
    RequestModel(sus11ModelHash)
	
	ne = "baller3"
    drug2hash = GetHashKey(ne)
    RequestModel(drug2hash)
	
	

    while  not HasModelLoaded(sus11ModelHash) and not HasModelLoaded(drug2hash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus4 = CreatePed(26, sus11ModelHash, 2244.2, 5990.2, 50.5, 43.4, true, false)
	v4 = CreateVehicle(drug2hash, 2247.6, 5991.21, 56.4, 50.0, true, false)
	
	TaskStartScenarioInPlace(sus4,"WORLD_HUMAN_SUNBATHE_BACK", 0, 1)
	
end)


RegisterNetEvent('CountyShots')
AddEventHandler('CountyShots', function()
	
	DeleteEntity(sus11)
	DeleteEntity(sus22)
	
	sus11Model = "a_m_m_rurmeth_01"
    sus11ModelHash = GetHashKey(sus11Model)
    RequestModel(sus11ModelHash)
	
	sus22Model = "a_m_m_rurmeth_01"
    sus22ModelHash = GetHashKey(sus22Mode1)
    RequestModel(sus22ModelHash)
	
	

    while  not HasModelLoaded(sus22ModelHash) and not HasModelLoaded(sus11ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus1 = CreatePed(26, sus11Model, 52.1, 3713.1, 39.75, 308.2, true, false)
	--Wait(1000)
    sus2 = CreatePed(26, sus22Model, 68.6, 3729.3, 39.6, 144.9 , true, false)
	weapon2 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
		
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
		
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	SetPedCombatAttributes(d1ped, 5, true)
	SetPedCombatAttributes(d2ped, 5, true)
	SetPedCombatAbility(d1ped, 100)
	SetPedCombatAbility(d2ped, 100)
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(d1ped, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(d2ped, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(d1ped, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(d2ped, false, GetHashKey("fighter1"))
end)

RegisterNetEvent('HwyBridge')
AddEventHandler('HwyBridge', function()
	
	DeleteEntity(bridge)
	
	
	ClothesWoman1 = "a_m_m_business_01"
    ClothesWoman1hash = GetHashKey(ClothesWoman1)
    RequestModel(ClothesWoman1hash)
 
    while not HasModelLoaded(ClothesWoman1hash)  do
        Wait(500)
    end
	
	Wait(1000)
	
    bridge = CreatePed(26, ClothesWoman1hash,-1911.2, 4625.7, 58.5, 45.2, true, false)
	Wait(2000)
	TaskStartScenarioInPlace(bridge,"WORLD_HUMAN_AA_SMOKE", 0, 1)
	
	
	
end)

RegisterNetEvent('CountyDrunk')
AddEventHandler('CountyDrunk', function()
	
	DeleteEntity(billy)
	
	
	ClothesWoman1 = "a_m_m_hillbilly_01"
    ClothesWoman1hash = GetHashKey(ClothesWoman1)
    RequestModel(ClothesWoman1hash)
 
    while not HasModelLoaded(ClothesWoman1hash)  do
        Wait(500)
    end
	
	Wait(1000)
	
    billy = CreatePed(26, ClothesWoman1hash,1966.3, 3745.8, 32.3, 209.1, true, false)
	Wait(2000)
	TaskStartScenarioInPlace(billy,"WORLD_HUMAN_SUNBATHE_BACK", 0, 1)
	
	
	
end)
 
RegisterNetEvent('CountyDeal')
AddEventHandler('CountyDeal', function()
	
	DeleteEntity(mex1)
	DeleteEntity(boss1)
	DeleteEntity(drugv1)
	DeleteEntity(drugv2)
	
	mex1 = "a_m_m_mexlabor_01"
    mex1hash = GetHashKey(mex1)
    RequestModel(mex1hash)
	
	boss1 = "a_m_m_og_boss_01"
    boss1hash = GetHashKey(boss1)
    RequestModel(boss1hash)
	
	drug1 = "emperor2"
    drug1hash = GetHashKey(drug1)
    RequestModel(drug1hash)
	
	drug2 = "baller3"
    drug2hash = GetHashKey(drug2)
    RequestModel(drug2hash)
	
 
    while not HasModelLoaded(mex1hash) and not HasModelLoaded(boss1hash) and not HasModelLoaded(drug1hash) and not HasModelLoaded(drug2hash) do
        Wait(500)
    end
	
	Wait(1000)
	
    drugp1 = CreatePed(26, mex1hash, 1508.5, 3753.8, 33.9, 130.2, true, false)
    drugp2 = CreatePed(26, boss1hash, 1506.6, 3750.7, 34.0, 331.9, true, false)
	drugv1 = CreateVehicle(drug1hash, 1511.0, 3752.0, 33.5, 63.0, true, false)
	drugv2 = CreateVehicle(drug2hash, 1508.6, 3748.3, 34.0, 241.1, true, false)
	Wait(2000)
	TaskStartScenarioInPlace(drugp1,"WORLD_HUMAN_DRUG_DEALER", 0, 1)
	TaskStartScenarioInPlace(drugp2,"WORLD_HUMAN_DRUG_DEALER_HARD", 0, 1)
	SetVehicleLights(drugv1, 2)
	SetVehicleLights(drugv2, 2)
	
end)
 
 
RegisterNetEvent('CountyRocks')
AddEventHandler('CountyRocks', function()
	
	DeleteEntity(teen1)
	DeleteEntity(teen2)
	
	teenager1 = "a_m_m_hillbilly_02"
    teen1hash = GetHashKey(teenager1)
    RequestModel(teen1hash)
	
	teenager2 = "a_m_m_skater_01"
    teen2hash = GetHashKey(teenager2)
    RequestModel(teen2hash)
 
    while not HasModelLoaded(teen1hash) and not HasModelLoaded(teen2hash) do
        Wait(500)
    end
	
	Wait(1000)
	
    teen1 = CreatePed(26, teen1hash, 2706.6, 4866.8, 44.6, 99.8, true, false)
    teen2 = CreatePed(26, teen2hash, 2706.0, 4864.7, 44.6, 280.4, true, false)
	Wait(2000)
	TaskStartScenarioInPlace(teen1,"WORLD_HUMAN_LEANING", 0, 1)
	TaskStartScenarioInPlace(teen2,"WORLD_HUMAN_PARTYING", 0, 1)
	
	
end)

RegisterNetEvent('CountyClothes')
AddEventHandler('CountyClothes', function()
	
	DeleteEntity(Cloth1)
	
	
	ClothesWoman1 = "a_f_m_fatwhite_01"
    ClothesWoman1hash = GetHashKey(ClothesWoman1)
    RequestModel(ClothesWoman1hash)
 
    while not HasModelLoaded(ClothesWoman1hash)  do
        Wait(500)
    end
	
	Wait(1000)
	
    Cloth1 = CreatePed(26, ClothesWoman1hash, 614.38, 2765.1, 42.0, 183.2, true, false)
	Wait(2000)
	TaskStartScenarioInPlace(Cloth1,"WORLD_HUMAN_STAND_MOBILE", 0, 1)
	
	
	
end)





RegisterCommand('TowelCalls', function()

if ccalls == true then
ccalls = false
countycalls = false
ShowNotification("County Calls Disabled")

elseif ccalls == false then
ccalls = true
countycalls = true
ShowNotification("County Calls Enabled")
end
--TriggerServerEvent('mess')

end)


--County sus1, sus2, suspect1, suspect2, veh1, veh2,
--City sus11, sus22, suspect11, suspect22, veh11, veh22




c1 = false
c2 = false
c3 = false
c4 = false
c5 = false
h1 = false
	h2 = false
	h3 = false
minn = 900000
high = 3600000
kk = ""
 RegisterCommand('SlowNight', function()
minn = 1500000   
high = 5400000
ShowNotification("Calls will happen between 25 Min to 90 Min")
end)
 RegisterCommand('ModerateNight', function()
minn = 900000
high = 3600000
ShowNotification("Calls will happen between 15 Min to 60 Min")
end)
 RegisterCommand('BusyNight', function()
minn = 300000
high = 1000000
ShowNotification("Calls will happen between 5 Min to 30 Min")
end)
c1 = false
	c2 = false
	c3 = false
	c4 = false
	c5 = false
	c6 = false
	c7 = false
	c8 = false
	c9 = false
	c10 = false
	c11 = false
	c12 = false
	c13 = false
	c14 = false
	c15 = false
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	--Wait(30000)
	---------------------------------County
	if ccalls == true then
	--Wait(20000)
	waittt = math.random(minn,high)
	waittt = math.random(minn,high)
	waittt = math.random(minn,high)
	waittt = math.random(minn,high)
	
	calll = math.random(1,15)
	calll = math.random(1,15)
	calll = math.random(1,15)
	calll = math.random(1,15)
	calll = math.random(1,15)
	print(calll)
	if c1 == true and c2 == true and c3 == true and c4 == true and c5 == true and c6 == true and c7 == true and c8 == true and c9 == true and c10 == true and c11 == true and c12 == true and c13 == true and c14 == true and c15 == true then
	c1 = false
	c2 = false
	c3 = false
	c4 = false
	c5 = false
	c6 = false
	c7 = false
	c8 = false
	c9 = false
	c10 = false
	c11 = false
	c12 = false
	c13 = false
	c14 = false
	c15 = false
	ShowNotification("Restarting Call Loop")
	end
	if calll == 1 and c1 == false then
	TriggerServerEvent('call1')
	c1 = true
	elseif calll == 2 and c2 == false then
	TriggerServerEvent('call2')
	c2 = true
	elseif calll == 3 and c3 == false then
	TriggerServerEvent('call3')
	c3 = true
	elseif calll == 4 and c4 == false then
	TriggerServerEvent('call4')
	c4 = true
	elseif calll == 5 and c5 == false then
	TriggerServerEvent('call5')
	c5 = true
	elseif calll == 6 and c6 == false then
	TriggerServerEvent('call6')
	c6 = true
	elseif calll == 7 and c7 == false then
	TriggerServerEvent('call7')
	c7 = true
	elseif calll == 8 and c8 == false then
	TriggerServerEvent('call8')
	c8 = true
	elseif calll == 9 and c9 == false then
	TriggerServerEvent('call9')
	c9 = true
	elseif calll == 10 and c10 == false then
	TriggerServerEvent('call10')
	c10= true
	elseif calll == 11 and c11 == false then
	TriggerServerEvent('call11')
	c11 = true
	elseif calll == 12 and c12 == false then
	TriggerServerEvent('CountyClothes')
	c12 = true
	elseif calll == 13 and c13 == false then
	TriggerServerEvent('CountyDeal')
	c13 = true
	elseif calll == 14 and c14 == false then
	TriggerServerEvent('CountyDrunk')
	c14 = true
	elseif calll == 15 and c15 == false then
	TriggerServerEvent('CountyRocks')
	c15 = true
	else
	waittt = 1000
	end
	
	print(waittt)
	Wait(waittt)
	--break
	
  end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	--Wait(30000)
	---------------------------------County
	if crashcalls == true then
	--Wait(20000)
	waitt = math.random(1500000,5400000)
	waitt = math.random(1500000,5400000)
	waitt = math.random(1500000,5400000)
	waitt = math.random(1500000,5400000)
	
	call = math.random(1,3)
	call = math.random(1,3)
	call = math.random(1,3)
	call = math.random(1,3)
	call = math.random(1,3)
	print(call)
	if h1 == true and h2 == true and h3 == true  then
	h1 = false
	h2 = false
	h3 = false
	
	ShowNotification("Restarting Call Loop")
	end
	if call == 1 and h1 == false then
	TriggerServerEvent('HwyBridge')
	h1 = true
	
	elseif call == 2 and h2 == false then
	TriggerServerEvent('AbandonVeh')
	h2 = true
	elseif call == 3 and h3 == false then
	TriggerServerEvent('HwyCrash1')
	h3 = true
	
	else
	waitt = 2000
	end
	
	print(waitt)
	Wait(waitt)
	--break
	
  end
  end
end)



patrols = 0
ticketss = 0
arrestss = 0



function DrawText2(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

RegisterNetEvent('call1')
AddEventHandler('call1', function()

	model = "a_m_m_beach_02" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_beach_02" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		if DoesEntityExist(callvic1) or DoesEntityExist(callvic2) then
		NetworkRequestControlOfEntity(callvic1)
		NetworkRequestControlOfEntity(callvic2)
			while not NetworkHasControlOfEntity(callvic1) and not NetworkHasControlOfEntity(callvic2)   do
			Wait(10)
			end
		DeleteEntity(callvic1)
		DeleteEntity(callvic2)
		end
    callvic1 = CreatePed(26, model, -1523.1563720703,1492.7593994141,111.65620422363,66.381439208984, true, true)
	callvic2 = CreatePed(26, model2, -1520.46875,1502.1383056641,111.62115478516,146.86175537109, true, true)
	
	while not DoesEntityExist(callvic1) do
	Wait(1000)
	callvic1 = CreatePed(26, model, -1523.1563720703,1492.7593994141,111.65620422363,66.381439208984, true, true)
	end
	while not DoesEntityExist(callvic2) do
	Wait(1000)
	callvic2 = CreatePed(26, model2, -1520.46875,1502.1383056641,111.62115478516,146.86175537109, true, true)
	end
	
	SetEntityAsMissionEntity(callvic1)
	SetEntityAsMissionEntity(callvic2)
	
	TaskStartScenarioInPlace(callvic1,"WORLD_HUMAN_PARTYING", 0, 1)
	TaskStartScenarioInPlace(callvic2,"WORLD_HUMAN_PARTYING", 0, 1)
	

end)

RegisterNetEvent('call2')
AddEventHandler('call2', function()

	model = "a_m_m_genfat_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call2vic1) then
		NetworkRequestControlOfEntity(call2vic1)
		
			while not NetworkHasControlOfEntity(call2vic1)  do
			Wait(10)
			end
		DeleteEntity(call2vic1)
		
		end
    call2vic1 = CreatePed(26, model, 782.03131103516,1279.4598388672,360.29647827148,99.33618927002, true, true)
	
	
	while not DoesEntityExist(call2vic1) do
	Wait(1000)
	call2vic1 = CreatePed(26, model2, 782.03131103516,1279.4598388672,360.29647827148,99.33618927002, true, true)
	end
	
	
	SetEntityAsMissionEntity(call2vic1)
	
	
	TaskStartScenarioInPlace(call2vic1,"WORLD_HUMAN_TOURIST_MOBILE", 0, 1)
	
	

end)

RegisterNetEvent('call3')
AddEventHandler('call3', function()

	model = "a_m_m_eastsa_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_eastsa_02" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call3vic1) or DoesEntityExist(call3vic2) then
		NetworkRequestControlOfEntity(call3vic1)
		NetworkRequestControlOfEntity(call3vic2)
			while not NetworkHasControlOfEntity(call3vic1) and not NetworkHasControlOfEntity(call3vic2)   do
			Wait(10)
			end
		DeleteEntity(call3vic1)
		DeleteEntity(call3vic2)
		end
    call3vic1 = CreatePed(26, model, 91.484939575195,805.97662353516,211.12084960938,137.24780273438, true, true)
	call3vic2 = CreatePed(26, model2, 89.425926208496,808.14117431641,211.12084960938,141.0912322998, true, true)
	
	while not DoesEntityExist(call3vic1) do
	Wait(1000)
	call3vic1 = CreatePed(26, model, 91.484939575195,805.97662353516,211.12084960938,137.24780273438, true, true)
	end
	while not DoesEntityExist(call3vic2) do
	Wait(1000)
	call3vic2 = CreatePed(26, model2, 89.425926208496,808.14117431641,211.12084960938,141.0912322998, true, true)
	end
	
	SetEntityAsMissionEntity(call3vic1)
	SetEntityAsMissionEntity(call3vic2)
	
	TaskStartScenarioInPlace(call3vic1,"WORLD_HUMAN_STAND_FISHING", 0, 1)
	TaskStartScenarioInPlace(call3vic2,"WORLD_HUMAN_STAND_FISHING", 0, 1)
	

end)

RegisterNetEvent('call4')
AddEventHandler('call4', function()
	vehModel = "phantom"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	vehModel2 = "trailerlogs"
	vehHash2 = GetHashKey(vehModel2)
	RequestModel(vehHash2)
	model = "a_m_m_eastsa_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
while  HasModelLoaded(vehHash) and not HasModelLoaded(vehHash2) do
        Wait(1)
    end
	
	if DoesEntityExist(call4veh) then
	NetworkRequestControlOfEntity(call4veh)
	while not NetworkHasControlOfEntity(call4veh) do
	Wait(10)	
	end
	DeleteEntity(call4veh)
	end
	if DoesEntityExist(call4veh2) then
	NetworkRequestControlOfEntity(call4veh2)
	while not NetworkHasControlOfEntity(call4veh2) do
	Wait(10)	
	end
	DeleteEntity(call4veh2)
	end
	if DoesEntityExist(call4vic1) then
	NetworkRequestControlOfEntity(call4vic1)
	while not NetworkHasControlOfEntity(call4vic1) do
	Wait(10)	
	end
	DeleteEntity(call4vic1)
	end
	
	call4vic1 = CreatePed(26, model, -852.48699951172,5419.7963867188,34.960102081299,260.94036865234, true, true)
	call4veh = CreateVehicle(vehModel, -846.63677978516,5420.5166015625,36.739368438721,48.945602416992, true, true)
	call4veh2 = CreateVehicle(vehModel2,-836.38287353516,5417.17578125,37.097156524658,85.04468536377, true, true)
	while not DoesEntityExist(call4veh) do
	Wait(1000)
	call4veh = CreateVehicle(vehModel, -846.63677978516,5420.5166015625,36.739368438721,48.945602416992, true, true)
	end
	while not DoesEntityExist(call4veh2) do
	Wait(1000)
	call4veh2 = CreateVehicle(vehModel2,-836.38287353516,5417.17578125,37.097156524658,85.04468536377, true, true)
	end
	while not DoesEntityExist(call4vic1) do
	Wait(1000)
	call4vic1 = CreatePed(26, model, -852.48699951172,5419.7963867188,34.960102081299,260.94036865234, true, true)
	end
	
	trot = GetEntityRotation(call4veh2,2)
	
	SetEntityRotation(call4veh2,0.0,170.0,0.0,2,true)
	SetEntityAsMissionEntity(call4veh)
	SetEntityAsMissionEntity(call4veh2)
	SetEntityAsMissionEntity(call4vic1)
	TaskStartScenarioInPlace(call4vic1,"WORLD_HUMAN_SUNBATHE_BACK", 0, 1)
	
	
end)

RegisterNetEvent('call5')
AddEventHandler('call5', function()

	model = "a_m_m_indian_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call5vic1) then
		NetworkRequestControlOfEntity(call5vic1)
		
			while not NetworkHasControlOfEntity(call5vic1)  do
			Wait(10)
			end
		DeleteEntity(call5vic1)
		
		end
    call5vic1 = CreatePed(26, model, 1705.6446533203,4930.0849609375,42.063674926758,135.74530029297, true, true)
	
	
	while not DoesEntityExist(call5vic1) do
	Wait(1000)
	call5vic1 = CreatePed(26, model2, 1705.6446533203,4930.0849609375,42.063674926758,135.74530029297, true, true)
	end
	
	
	SetEntityAsMissionEntity(call5vic1)
	
	
	TaskStartScenarioInPlace(call5vic1,"WORLD_HUMAN_STAND_IMPATIENT", 0, 1)
	
	

end)

RegisterNetEvent('call6')
AddEventHandler('call6', function()

	model = "a_m_m_malibu_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_hillbilly_02" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	model3 = "a_m_m_polynesian_01" --Marine Army Guard
    modelHash3 = GetHashKey(model3)
    RequestModel(modelHash3)
	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) and not HasModelLoaded(modelHash3) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call6vic1) or DoesEntityExist(call6vic2) or  DoesEntityExist(call6vic3) then
		NetworkRequestControlOfEntity(call6vic1)
		NetworkRequestControlOfEntity(call6vic2)
		NetworkRequestControlOfEntity(call6vic3)
			while not NetworkHasControlOfEntity(call6vic1) and not NetworkHasControlOfEntity(call6vic2)  and not NetworkHasControlOfEntity(call6vic3)  do
			Wait(10)
			end
		DeleteEntity(call6vic1)
		DeleteEntity(call6vic2)
		DeleteEntity(call6vic3)
		end
    call6vic1 = CreatePed(26, model, 342.39373779297,4442.6962890625,63.469787597656,174.03344726563, true, true)
	call6vic2 = CreatePed(26, model2, 343.64797973633,4438.6240234375,63.968753814697,54.539630889893, true, true)
	call6vic3 = CreatePed(26, model3, 341.15939331055,4437.275390625,64.51927947998,313.77014160156, true, true)
	
	while not DoesEntityExist(call6vic1) do
	Wait(1000)
	call6vic1 = CreatePed(26, model, 342.39373779297,4442.6962890625,63.469787597656,174.03344726563, true, true)
	end
	while not DoesEntityExist(call6vic2) do
	Wait(1000)
	call6vic2 = CreatePed(26, model2, 343.64797973633,4438.6240234375,63.968753814697,54.539630889893, true, true)
	end
	while not DoesEntityExist(call6vic3) do
	Wait(1000)
	call6vic3 = CreatePed(26, model3, 341.15939331055,4437.275390625,64.51927947998,313.77014160156, true, true)
	end
	
	SetEntityAsMissionEntity(call6vic1)
	SetEntityAsMissionEntity(call6vic2)
	SetEntityAsMissionEntity(call6vic3)
	
	TaskStartScenarioInPlace(call6vic1,"WORLD_HUMAN_SMOKING_POT", 0, 1)
	TaskStartScenarioInPlace(call6vic2,"WORLD_HUMAN_SMOKING_POT", 0, 1)
	TaskStartScenarioInPlace(call6vic3,"WORLD_HUMAN_SMOKING_POT", 0, 1)
	

end)

RegisterNetEvent('call7')
AddEventHandler('call7', function()

	model = "a_m_m_salton_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_og_boss_01" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call7vic1) or DoesEntityExist(call7vic2) then
		NetworkRequestControlOfEntity(call7vic1)
		NetworkRequestControlOfEntity(call7vic2)
			while not NetworkHasControlOfEntity(call7vic1) and not NetworkHasControlOfEntity(call7vic2)   do
			Wait(10)
			end
		DeleteEntity(call7vic1)
		DeleteEntity(call7vic2)
		end
    call7vic1 = CreatePed(26, model, -3169.4294433594,1077.7601318359,20.829183578491,166.33280944824, true, true)
	call7vic2 = CreatePed(26, model2, -3171.7763671875,1074.0833740234,20.829181671143,315.90475463867, true, true)
	
	while not DoesEntityExist(call7vic1) do
	Wait(1000)
	call7vic1 = CreatePed(26, model, -3169.4294433594,1077.7601318359,20.829183578491,166.33280944824, true, true)
	end
	while not DoesEntityExist(call7vic2) do
	Wait(1000)
	call7vic2 = CreatePed(26, model2, -3171.7763671875,1074.0833740234,20.829181671143,315.90475463867, true, true)
	end
	
	SetEntityAsMissionEntity(call7vic1)
	SetEntityAsMissionEntity(call7vic2)
	
	TaskStartScenarioInPlace(call7vic1,"WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", 0, 1)
	TaskStartScenarioInPlace(call7vic2,"WORLD_HUMAN_STAND_MOBILE", 0, 1)
	

end)

RegisterNetEvent('call8')
AddEventHandler('call8', function()

	model = "a_m_m_beach_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call8vic1) then
		NetworkRequestControlOfEntity(call8vic1)
		
			while not NetworkHasControlOfEntity(call8vic1)  do
			Wait(10)
			end
		DeleteEntity(call8vic1)
		
		end
    call8vic1 = CreatePed(26, model, 73.94115447998,6570.978515625,28.44482421875,293.5671081543, true, true)
	
	
	while not DoesEntityExist(call8vic1) do
	Wait(1000)
	call8vic1 = CreatePed(26, model2, 73.94115447998,6570.978515625,28.44482421875,293.5671081543, true, true)
	end
	
	
	SetEntityAsMissionEntity(call8vic1)
	
	
	TaskStartScenarioInPlace(call8vic1,"WORLD_HUMAN_SMOKING", 0, 1)
	
	

end)

RegisterNetEvent('call9')
AddEventHandler('call9', function()
	
	
	
	sus1Model = "a_m_m_socenlat_01"
    sus1ModelHash = GetHashKey(sus1Model)
    RequestModel(sus1ModelHash)
	
	sus2Model = "a_m_m_socenlat_01"
    sus2ModelHash = GetHashKey(sus2Mode1)
    RequestModel(sus2ModelHash)

    while not HasModelLoaded(sus2ModelHash) and not HasModelLoaded(sus1ModelHash) do
        Wait(1)
    end
	
	
	
   if DoesEntityExist(call9vic1) or DoesEntityExist(call9vic2) then
		NetworkRequestControlOfEntity(call9vic1)
		NetworkRequestControlOfEntity(call9vic2)
			while not NetworkHasControlOfEntity(call9vic1) and not NetworkHasControlOfEntity(call9vic2)   do
			Wait(10)
			end
		DeleteEntity(call9vic1)
		DeleteEntity(call9vic2)
		end
    call9vic1 = CreatePed(26, sus1Model, 1995.3432617188,3048.7238769531,47.215267181396,52.037357330322, true, true)
	call9vic2 = CreatePed(26, sus2Model, 1993.4974365234,3049.5698242188,47.215286254883,243.37573242188, true, true)
	
	while not DoesEntityExist(call9vic1) do
	Wait(1000)
	call9vic1 = CreatePed(26, sus1Model, 1995.3432617188,3048.7238769531,47.215267181396,52.037357330322, true, true)
	end
	while not DoesEntityExist(call9vic2) do
	Wait(1000)
	call9vic2 = CreatePed(26, sus1Model2, 1993.4974365234,3049.5698242188,47.215286254883,243.37573242188, true, true)
	end
	
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(call9vic1, 5, true)
	SetPedCombatAttributes(call9vic2, 5, true)
	
	SetPedCombatAbility(call9vic1, 100)
	SetPedCombatAbility(call9vic2, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(call9vic1, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(call9vic2, GetHashKey("fighter2"))
	SetBlockingOfNonTemporaryEvents(call9vic1, false)
	SetBlockingOfNonTemporaryEvents(call9vic2, false)
	SetEntityCanBeDamagedByRelationshipGroup(call9vic1, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(call9vic2, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(call9vic1, 10.0, 0)
	TaskCombatHatedTargetsAroundPed(call9vic2, 10.0, 0)
end)

RegisterNetEvent('call10')
AddEventHandler('call10', function()

	model = "a_m_m_hillbilly_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call10vic1) then
		NetworkRequestControlOfEntity(call10vic1)
		
			while not NetworkHasControlOfEntity(call10vic1)  do
			Wait(10)
			end
		DeleteEntity(call10vic1)
		
		end
    call10vic1 = CreatePed(26, model, 2802.5646972656,3507.4248046875,55.013622283936,338.99224853516, true, true)
	
	
	while not DoesEntityExist(call10vic1) do
	Wait(1000)
	call10vic1 = CreatePed(26, model2, 2802.5646972656,3507.4248046875,55.013622283936,338.99224853516, true, true)
	end
	
	
	SetEntityAsMissionEntity(call10vic1)
	
	
	TaskStartScenarioInPlace(call10vic1,"WORLD_HUMAN_BUM_WASH", 0, 1)
	
	

end)

RegisterNetEvent('call11')
AddEventHandler('call11', function()

	model = "a_m_m_salton_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_bevhills_02" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		if DoesEntityExist(call11vic1) or DoesEntityExist(call11vic2) then
		NetworkRequestControlOfEntity(call11vic1)
		NetworkRequestControlOfEntity(call11vic2)
			while not NetworkHasControlOfEntity(call11vic1) and not NetworkHasControlOfEntity(call11vic2)   do
			Wait(10)
			end
		DeleteEntity(call11vic1)
		DeleteEntity(call11vic2)
		end
    call11vic1 = CreatePed(26, model, 1458.9423828125,-2616.1674804688,48.652935028076,33.722259521484, true, true)
	call11vic2 = CreatePed(26, model2, 1459.9945068359,-2613.5400390625,48.659046173096,113.32418060303, true, true)
	
	while not DoesEntityExist(call11vic1) do
	Wait(1000)
	call11vic1 = CreatePed(26, model, 1458.9423828125,-2616.1674804688,48.652935028076,33.722259521484, true, true)
	end
	while not DoesEntityExist(call11vic2) do
	Wait(1000)
	call11vic2 = CreatePed(26, model2, 1459.9945068359,-2613.5400390625,48.659046173096,113.32418060303, true, true)
	end
	
	SetEntityAsMissionEntity(call11vic1)
	SetEntityAsMissionEntity(call11vic2)
	
	TaskStartScenarioInPlace(call11vic1,"WORLD_HUMAN_SMOKING_POT", 0, 1)
	TaskStartScenarioInPlace(call11vic2,"WORLD_HUMAN_SMOKING_POT", 0, 1)
	

end)
---------------------------------------------NEW CALLS ABOVE------------------------------------------

RegisterCommand('crashcar', function()
TriggerServerEvent('call11')
end)
RegisterNetEvent('crash1')
AddEventHandler('crash1', function()
SetEntityAsMissionEntity(suspect)
SetEntityAsMissionEntity(vehh)
	
	



	
	local player = GetPlayerPed(-1)
	
	
	
    model = "a_f_y_hipster_03" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "g_m_y_ballaorig_01" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	
	vehModel = "blista"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	vehModel2 = "emperor2"
	vehHash2 = GetHashKey(vehModel2)
	RequestModel(vehHash2)
	
    
	
	

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) and not HasModelLoaded(vehHash) and not HasModelLoaded(vehHash2) do
        Wait(1)
    end
    
	
		Wait(1000)
    crashvic1 = CreatePed(26, model, 2624.2, 264.33, 97.6 , 76.1, true, true)
	crashvic2 = CreatePed(26, model2, 2624.2, 264.33 -3.0, 97.6 , 76.1, true, true)
	crashveh1 = CreateVehicle(vehModel, 2619.022, 267.07, 97.7 , 349.3, true, true)
	crashveh2 = CreateVehicle(vehModel2, 2618.5, 262.4, 97.4 , 337.25, true, true)
	Wait(2400000)
	DeleteEntity(crashvic1)
	DeleteEntity(crashvic2)
	DeleteEntity(crashveh1)
	DeleteEntity(crashveh2)
	
	
end)

RegisterNetEvent('crash2')
AddEventHandler('crash2', function()
SetEntityAsMissionEntity(suspect)
SetEntityAsMissionEntity(vehh)
	
	



	
	local player = GetPlayerPed(-1)
	
	
	
    model = "s_m_y_fireman_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	model2 = "a_m_m_socenlat_01" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)
	model3 = "s_m_m_paramedic_01" --Marine Army Guard
    modelHash3 = GetHashKey(model3)
    RequestModel(modelHash3)
	
	vehModel = "seminole"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	vehModel2 = "ambulance"
	vehHash2 = GetHashKey(vehModel2)
	RequestModel(vehHash2)
	vehModel3 = "firetruk"
	vehHash3 = GetHashKey(vehModel3)
	RequestModel(vehHash3)
	
    
	
	

	
    while not HasModelLoaded(modelHash3) and not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) and not HasModelLoaded(vehHash) and not HasModelLoaded(vehHash2) and not HasModelLoaded(vehHash3) do
        Wait(1)
    end
    
	
		Wait(1000)
    crash2vic1 = CreatePed(26, model, -575.5, 952.4, 242.5 , 325.8, true, true)
	crash2vic2 = CreatePed(26, model2, -573.4, 953.2, 242.6 , 20.3, true, true)
	crash2vic3 = CreatePed(26, model3, -575.5, 952.4 + 2.0, 242.5 , 325.8, true, true)
	crash2veh1 = CreateVehicle(vehModel, -564.17, 939.9, 242.3 , 215.11, true, true)
	crash2veh2 = CreateVehicle(vehModel2, -570.5, 949.00, 242.5 , 226.5, true, true)
	crash2veh3 = CreateVehicle(vehModel3, -578.0, 951.6, 242.5 , 201.5, true, true)
	SetVehicleDoorOpen(vehh2,2,false,true)
	SetVehicleSiren(vehh2, true)
	SetVehicleSiren(vehh3, true)
	firetalk = NetworkGetNetworkIdFromEntity(crash2vic1)
	TriggerServerEvent('synctalk',firetalk)
	
	Wait(2400000)
	DeleteEntity(crash2vic1)
	DeleteEntity(crash2vic2)
	DeleteEntity(crash2vic3)
	DeleteEntity(crash2veh1)
	DeleteEntity(crash2veh2)
	DeleteEntity(crash2veh3)
	
	
end)

RegisterNetEvent('crash2talk')
AddEventHandler('crash2talk', function(firetalkk)
fireman = NetworkGetEntityFromNetworkId(firetalkk)
Citizen.CreateThread(function()

while true do
Wait(1000)
disfire = GetDistanceBetweenCoords(GetEntityCoords(fireman), GetEntityCoords(GetPlayerPed(-1)))
if DoesEntityExist(fireman) == false then

break
end
if disfire <= 4.0 then
person = "Firefighter"
messige = "Car is cleared to be towed."
TriggerServerEvent('mess',person,messige)
person = "Paramedic"
messige = "He is medically cleared with no injuries, we will be leaving shortly."
TriggerServerEvent('mess',person,messige)
Wait(20000)
	DeleteEntity(crash2vic1)
	DeleteEntity(crash2vic3)
	Wait(1000)
	DeleteEntity(crash2veh2)
	DeleteEntity(crash2veh3)
break

end



end


end)

end)




RegisterNetEvent('crash3')
AddEventHandler('crash3', function()
SetEntityAsMissionEntity(suspect)
SetEntityAsMissionEntity(vehh)
	
	



	
	local player = GetPlayerPed(-1)
	
	
	
    model = "a_f_y_hipster_03" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
	vehModel = "panto"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	
	
    
	
	

	
    while not HasModelLoaded(modelHash)  and not HasModelLoaded(vehHash)  do
        Wait(1)
    end
    
	
		Wait(1000)
    crash3vic1 = CreatePed(26, model, 1789.9, 6375.3, 38.74 , 272.1, true, true)
	
	crash3veh1 = CreateVehicle(vehModel,1792.1, 6375.2, 38.04 , 89.3, true, true)
	
	Wait(2400000)
	DeleteEntity(crash3vic1)
	DeleteEntity(crash3veh1)
	
	
	
end)

RegisterNetEvent('crash4')
AddEventHandler('crash4', function()
SetEntityAsMissionEntity(suspect)
SetEntityAsMissionEntity(vehh)
	
	



	
	local player = GetPlayerPed(-1)
	
	
	
    model = "a_f_y_hipster_03" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	
	vehModel = "banshee"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	
	
    
	
	

	
    while not HasModelLoaded(modelHash)  and not HasModelLoaded(vehHash)  do
        Wait(1)
    end
    
	
		Wait(1000)
    crash4vic1 = CreatePed(26, model, -1391.2, 5108.4, 61.1 , 123.8, true, true)
	
	crash4veh1 = CreateVehicle(vehModel,-1386.6, 5114.5, 61.55 , 333.8, true, true)
	Wait(2000)
	TaskStartScenarioInPlace(crash4vic1,"WORLD_HUMAN_SUNBATHE_BACK", 0, 1)
	Wait(2400000)
	DeleteEntity(crash4vic1)
	DeleteEntity(crash4veh1)
	
	
	
end)


RegisterNetEvent('pis:leaves:spawn')
AddEventHandler('pis:leaves:spawn', function()
SetEntityAsMissionEntity(suspect)
	


	
	local player = GetPlayerPed(-1)
	
	
	
    model = "a_f_y_hipster_03" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	model2 = "a_f_y_hipster_02" --Marine Army Guard
    modelHash2 = GetHashKey(model2)
    RequestModel(modelHash2)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		Wait(1000)
    suspect = CreatePed(26, model, 1088.3, -484.4, 65.1 , 76.1, true, true)
	suspect2 = CreatePed(26, model2, 1093.1, -464.3, 66.9 , 80.0, true, true)
	Wait(1000)
	
	
end)

RegisterNetEvent('pis:leaves')
AddEventHandler('pis:leaves', function()

	
	SetBlipCoords(rblip,1090.1, -474.0, 65.1 )
	location = "~o~Postal 6032, Bridge Street~w~"
	callout = "~r~Complaint About Snow~w~"
	response = "~r~Code 1~w~"
	
	hassaid = false
	hassaid2 = false
	SetBlockingOfNonTemporaryEvents(suspect, true)
	SetBlockingOfNonTemporaryEvents(suspect2, true)
	
	local player = GetPlayerPed(-1)
	--local distanceToClerk = GetDistanceBetweenCoords(GetEntityCoords(suspect), GetEntityCoords(GetPlayerPed(-1)))
	while true do
	Wait(100)
	local distanceToClerk = GetDistanceBetweenCoords(1088.3, -484.4, 65.1 ,  GetEntityCoords(GetPlayerPed(-1)))
	local istanceToClerk = GetDistanceBetweenCoords(1093.1, -464.3, 66.9 , GetEntityCoords(GetPlayerPed(-1)))
	local stanceToClerk = GetDistanceBetweenCoords(1090.1, -474.0, 65.1, GetEntityCoords(GetPlayerPed(-1)))
	
	if distanceToClerk < 5 and hassaid == false then
	hassaid = true
	ShowNotification("Caller: MY NEIGHBOR PUT LEAVES INTO MY YARD!")
	Wait(2000)
	ShowNotification("Caller: I ALWAYS HAVE PROBLEMS WITH THIS WITCH AND YOU GUYS DO NOTHING!")
	Wait(2000)
	ShowNotification("Caller: TICKET HER!!")
	end
	
	if istanceToClerk < 5 and hassaid2 == false then
	hassaid2 = true
	ShowNotification("Defendant: I raked some leaves onto the sidewalk..")
	Wait(3000)
	ShowNotification("Defendant: She got mad saying the sidewalk was her yard..")
	Wait(3000)
	ShowNotification("Defendant: I told her it was not and she called you!")
	Wait(3000)
	ShowNotification("Defendant: Does she think she owns the sidewalk!?!?")
	
	Wait(1000)
	end
	
	
	
	
	end
	

	Wait(10000)

	
   
	
	
	
	
end)








RegisterNetEvent('pis:pros')
AddEventHandler('pis:pros', function()
SetEntityAsMissionEntity(suspect)
	DeleteEntity(suspect)


	
	
	local player = GetPlayerPed(-1)
	
	
    model = "s_f_y_hooker_02" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		Wait(1000)
    suspect = CreatePed(26, model, -649.1, -743.4, 26.8 , 282.1, true, true)
	
	Wait(1000)
	
	
end)

RegisterNetEvent('pis:pross')
AddEventHandler('pis:pross', function()
SetEntityAsMissionEntity(suspect)
	
	
	SetBlipCoords(rblip,-649.1, -743.4, 26.8)
	location = "~o~Postal 5034, Los Santos~w~"
	callout = "~r~Suspected Prostitute~w~"
	response = "~r~Code 2~w~"
	SetBlockingOfNonTemporaryEvents(suspect, true)
	local player = GetPlayerPed(-1)
	--local distanceToClerk = GetDistanceBetweenCoords(GetEntityCoords(suspect), GetEntityCoords(GetPlayerPed(-1)))
	while true do
	Wait(100)
	local distanceToClerk = GetDistanceBetweenCoords(-649.1, -743.4, 26.8 , GetEntityCoords(GetPlayerPed(-1)))
	if distanceToClerk < 5 then
	
	runchance = math.random(1,2)
	
	if runchance == 1 then
	
	ShowNotification("Suspect: I am not doing anything")
	
	
	else
	ShowNotification("Suspect: Leave me alone!")
	end
	
	Wait(1000)
	
	
	
	
	
	break
	end
	
	
	end
	

		
   
	
	
	
	
end)





RegisterNetEvent('pis:tresss')
AddEventHandler('pis:tresss', function()
SetEntityAsMissionEntity(suspect)
	DeleteEntity(suspect)



	
	local player = GetPlayerPed(-1)
	
	
	
    model = "g_m_y_ballaorig_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	
		Wait(1000)
    suspect = CreatePed(26, model, 119.1, -2115.3, 11.41 , 7.5, true, true)
	SetEntityAsMissionEntity(suspect)
	Wait(1000)
	
	
end)

RegisterNetEvent('pis:tress')
AddEventHandler('pis:tress', function()
SetEntityAsMissionEntity(suspect)
	SetBlockingOfNonTemporaryEvents(suspect, true)

SetBlipCoords(rblip,119.1, -2115.3, 11.41)
	location = "~o~2204-E, Los Santos~w~"
	callout = "~r~Trespassing~w~"
	response = "~r~Code 2~w~"
	
	local player = GetPlayerPed(-1)
	--local distanceToClerk = GetDistanceBetweenCoords(GetEntityCoords(suspect), GetEntityCoords(GetPlayerPed(-1)))
	while true do
	Wait(100)
	responsetress = {"What do you pigs want?","I dindu nuffin","Why are you always out here harrasing the public"}
	local distanceToClerk = GetDistanceBetweenCoords(119.1, -2115.3, 11.41, GetEntityCoords(GetPlayerPed(-1)))
	if distanceToClerk < 10 then
	
	ShowNotification("Suspect: "..responsetress[math.random(#responsetress)])
	
	break
	end
	
	
	end
	

		
   
	
	
	
	
end)

RegisterNetEvent('q1')
AddEventHandler('q1', function()

local responses = {"Nothing.","Just hanging out.","Why do you care.","Waiting for a friend."}


ShowNotification("~o~Officer: ~w~What are you doing out here?")
Wait(2000)
ShowNotification("~b~Ped: ~w~ "..responses[math.random(#responses)])


end)
RegisterNetEvent('q2')
AddEventHandler('q2', function()

local responses = {"Yes.","I can't afford that!","No I don't need anything.","I will be fine."}

ShowNotification("~o~Officer: ~w~Do you need an ambulance?")
Wait(2000)
ShowNotification("~b~Ped: ~w~ "..responses[math.random(#responses)])


end)
RegisterNetEvent('q3')
AddEventHandler('q3', function()

local responses = {"Just wanted to go on a walk.","Just hanging out.","Looking at the stars.","I could ask the same."}

ShowNotification("~o~Officer: ~w~Why are you here?")
Wait(2000)
ShowNotification("~b~Ped: ~w~ "..responses[math.random(#responses)])


end)
RegisterNetEvent('q4')
AddEventHandler('q4', function()

local responses = {"Slow night?","Because you are bored.","Did that damn guy call you guys on me?!?!","No why?"}

ShowNotification("~o~Officer: ~w~Do you know why I am here?")
Wait(2000)
ShowNotification("~b~Ped: ~w~ "..responses[math.random(#responses)])


end)

RegisterNetEvent('pis:groverob')
AddEventHandler('pis:groverob', function()
SetEntityAsMissionEntity(suspect)
	DeleteEntity(suspect)
if sus1 ~= nil then
	
	DeleteEntity(sus1)
	
	elseif sus2 ~= nil then
	
	DeleteEntity(sus2)
	elseif vehh ~= nil then
	
	DeleteEntity(vehh)
	elseif suspect ~= nil then
	
	DeleteEntity(suspect)
	elseif suspect2 ~= nil then
	
	DeleteEntity(suspect2)
	
	end

	location = "~o~Grove Street, Gas Station~w~"
	callout = "~r~Robbery~w~"
	response = "~r~Code 3~w~"
	
	AddRelationshipGroup("suspect")
	
	SetRelationshipBetweenGroups(5, GetHashKey("suspect"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("suspect"))
	
    model = "g_m_y_ballaorig_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	weapon = "WEAPON_PUMPSHOTGUN"
		Wait(1000)
    suspect = CreatePed(26, model, -43.1, -1749.77, 29.1 , 7.5, true, true)
	SetEntityAsMissionEntity(suspect)
	Wait(1000)
	
	GiveWeaponToPed(suspect, weapon, 1000, 1, 1)
	
	
	SetPedRelationshipGroupHash(suspect, GetHashKey("suspect"))
	
	TaskCombatHatedTargetsAroundPed(suspect, 10.0, 0)
	
	--TaskWanderStandard(suspect, 1.0, 10)
	
	SetPedCombatMovement(suspect, 1)
	
	SetPedCombatAttributes(suspect, 5)
	
	SetPedCombatAbility(suspect, 100)
	
	SetPedArmour(suspect, math.random(100))
end)

RegisterNetEvent('pis:robg')
AddEventHandler('pis:robg', function()

location = "~o~Grove Street, Gas Station~w~"
	callout = "~r~Robbery~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip, -43.1, -1749.77, 29.1)
end)




RegisterNetEvent('pis:hwyshots:spawn')
AddEventHandler('pis:hwyshots:spawn', function()
	SetEntityAsMissionEntity(sus11)
	
	SetEntityAsMissionEntity(sus22)
	
	
	sus11Model = "a_m_m_socenlat_01"
    sus11ModelHash = GetHashKey(sus11Model)
    RequestModel(sus11ModelHash)
	
	sus22Model = "g_m_y_ballaorig_01"
    sus22ModelHash = GetHashKey(sus22Mode1)
    RequestModel(sus22ModelHash)
	
	

    while  not HasModelLoaded(sus22ModelHash) and not HasModelLoaded(sus11ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus11 = CreatePed(26, sus11Model, 87.11 -1, -1941.00 -1, 20.7  , 21.5, true, true)
	--Wait(1000)
    sus22 = CreatePed(26, sus22Model, 79.2 , -1899.1 , 21.8  , 184.0, true, true)
	weapon2 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus22, weapon2, 1000, 1, 1)
		
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus11, weapon1, 1000, 1, 1)
end)





RegisterNetEvent('pis:aVeh')
AddEventHandler('pis:aVeh', function()
	location = "~o~Route 15, Gas Station~w~"
	callout = "~r~Suspicious Vehicle~w~"
	response = "~r~Code 2~w~"
	
    model = "u_m_y_abner" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	vehModel = "BURRITO3"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	
    while not HasModelLoaded(vehHash) and not HasModelLoaded(modelHash) do
        Wait(1)
    end
	
		
	SetEntityAsMissionEntity(susVeh)
	DeleteEntity(susVeh)
	SetEntityAsMissionEntity(body)
	DeleteEntity(body)
	
	rSpawn = math.random(10)
	
	local bodyChance = 100--math.random(100)
	if bodyChance >= 75 then
		suspect = CreatePed(26, model, 2584.12 - rSpawn, 417.6 - rSpawn, 108.45 , 180, true, true)
		SetPedToRagdoll(suspect, -1, -1, 0, true, true, false)
		GiveWeaponToPed(suspect, "WEAPON_COMBATPISTOL", 1000, 1, 1)
		
		SetPedRelationshipGroupHash(suspect, GetHashKey("suspect"))
	
	TaskCombatHatedTargetsAroundPed(suspect, 10.0, 0)
	
	--TaskWanderStandard(suspect, 1.0, 10)
	
	SetPedCombatMovement(suspect, 1)
	
	SetPedCombatAttributes(suspect, 5)
	
	SetPedCombatAbility(suspect, 100)
	
	SetPedArmour(suspect, math.random(100))
	end	
	
	Wait(1000)
	
    susVeh = CreateVehicle(vehModel, 2584.12, 417.6, 108.45 , 180, true, true)
	
	SetVehicleDoorOpen(susVeh, 3, true, true)
	SetVehicleDoorOpen(susVeh, 2, true, true)
	SetVehicleDoorOpen(susVeh, 0, true, true)
	SetVehicleEngineOn(susVeh, true, true, false)
	SetVehicleLights(susVeh, 2)
	SetVehicleWindowTint(susVeh, "WINDOWTINT_PURE_BLACK")
	
	--SetEntityAsNoLongerNeeded(susVeh)
	--SetEntityAsNoLongerNeeded(body)
end)


RegisterNetEvent('pis:mirrorknifeCallout')
AddEventHandler('pis:mirrorknifeCallout', function()
SetEntityAsMissionEntity(suspect11)
	


	location = "~o~24/7, Mirror Park Gas Station~w~"
	callout = "~r~Man With A Knife~w~"
	response = "~r~Code 3~w~"
	
	AddRelationshipGroup("suspect11")
	
	SetRelationshipBetweenGroups(5, GetHashKey("suspec11t"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("suspect11"))
	
    model = "u_m_y_hippie_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	weapon = "WEAPON_MACHETE"
		Wait(1000)
    suspect11 = CreatePed(26, model, 1168.4, -322.8703613281, 69.3 , 180.0, true, true)
	
	Wait(1000)
	
	GiveWeaponToPed(suspec11t, weapon, 1000, 1, 1)
	
	SetPedRelationshipGroupHash(suspect11, GetHashKey("suspect11"))
	
	
	TaskCombatHatedTargetsAroundPed(suspect11, 10.0, 0)
	
	TaskWanderStandard(suspect11, 1.0, 10)
	SetBlockingOfNonTemporaryEvents(suspect11,true)
	--TaskWanderInArea(suspect, 1168.4, -322.8703613281, 69.3, 20.0,5.0,6.0)
	
	SetPedCombatMovement(suspect11, 1)
	
	SetPedCombatAttributes(suspect11, 5)
	
	SetPedCombatAbility(suspect11, 100)
	
	SetPedArmour(suspect11, math.random(100))
end)

RegisterNetEvent('pis:mirrorknifeCallouts')
AddEventHandler('pis:mirrorknifeCallouts', function()
location = "~o~24/7, Mirror Park Gas Station~w~"
	callout = "~r~Man With A Knife~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip,1168.4, -322.8703613281, 69.3, 66.1)

end)

RegisterNetEvent('pis:knifeCallout')
AddEventHandler('pis:knifeCallout', function()
	location = "~o~24/7, Sandy Shores~w~"
	callout = "~r~Armed Man~w~"
	response = "~r~Code 3~w~"
	
	AddRelationshipGroup("suspect1")
	
	SetRelationshipBetweenGroups(5, GetHashKey("suspect1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("suspect1"))
	
    model = "S_M_Y_MARINE_01" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)

	
    while not HasModelLoaded(modelHash) and not HasModelLoaded(modelHash2) do
        Wait(1)
    end
    
	weapon = "WEAPON_MACHETE"
		
    suspect1 = CreatePed(26, model, 1966.8389892578, 3737.8703613281, 32.188823699951 , 180.0, true, true)
	GiveWeaponToPed(suspect1, weapon, 1000, 1, 1)
	
	
	SetPedRelationshipGroupHash(csuspect, GetHashKey("suspect1"))
	
	TaskCombatHatedTargetsAroundPed(suspect1, 10.0, 0)
	
	TaskWanderStandard(suspect1, 1.0, 10)
	
	SetPedCombatMovement(suspect1, 2)
	
	SetPedCombatAttributes(suspect1, 5)
	
	SetPedCombatAbility(suspect1, 100)
	
	SetPedArmour(suspect1, math.random(100))
end)

RegisterCommand('mypos', function()
	local ped = GetPlayerPed(-1)
	local pos = GetEntityCoords(ped, true)
	local heading = GetEntityHeading(ped)

	TriggerEvent('chatMessage', '', {255,255,255}, 'Pos X: ' .. pos.x .. ' Pos Y: ' .. pos.y .. ' Pos Z: ' .. pos.z .. 'Heading: '..heading)
	print(pos.x..", "..pos.y..", "..pos.z)
end)

RegisterNetEvent('pis:abandonedVeh')
AddEventHandler('pis:abandonedVeh', function()
	location = "~o~Sandy Shores~w~"
	callout = "~r~Suspicious Vehicle~w~"
	response = "~r~Code 2~w~"
	
    model = "u_m_y_abner" --Marine Army Guard
    modelHash = GetHashKey(model)
    RequestModel(modelHash)
	
	vehModel = "BURRITO3"
	vehHash = GetHashKey(vehModel)
	RequestModel(vehHash)
	
    while not HasModelLoaded(vehHash) and not HasModelLoaded(modelHash) do
        Wait(1)
    end
		
	SetEntityAsMissionEntity(susVeh)
	DeleteEntity(susVeh)
	SetEntityAsMissionEntity(body)
	DeleteEntity(body)
	
	rSpawn = math.random(10)
	
	local bodyChance = 100--math.random(100)
	if bodyChance >= 75 then
		body = CreatePed(26, model, 2158.0009765625 - rSpawn, 3909.4057617188 - rSpawn, 31.012893676758 + 3, -50.0, true, true)
		SetPedToRagdoll(body, -1, -1, 0, true, true, false)
	end	
	
	Wait(1000)
	
    susVeh = CreateVehicle(vehModel, 2141.2116699219, 3892.1740722656, 33.184062957764 + 3.5, -50.0, true, true)
	
	SetVehicleDoorOpen(susVeh, 3, true, true)
	SetVehicleDoorOpen(susVeh, 2, true, true)
	SetVehicleDoorOpen(susVeh, 0, true, true)
	SetVehicleEngineOn(susVeh, true, true, false)
	SetVehicleLights(susVeh, 2)
	SetVehicleWindowTint(susVeh, "WINDOWTINT_PURE_BLACK")
	
	SetEntityAsNoLongerNeeded(susVeh)
	SetEntityAsNoLongerNeeded(body)
end)

RegisterNetEvent('pis:shoplifting:spawn')
AddEventHandler('pis:shoplifting:spawn', function()
	SetEntityAsMissionEntity(clerk)
	
	SetEntityAsMissionEntity(suspect1)
	
----county
	susModel = "a_m_y_methhead_01"
    susModelHash = GetHashKey(susModel)
    RequestModel(susModelHash)
	
	clerkModel = "u_m_y_burgerdrug_01"
    clerkModelHash = GetHashKey(clerkModel)
    RequestModel(clerkModelHash)

    while not HasModelLoaded(susModelHash) and not HasModelLoaded(clerkModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    suspect1 = CreatePed(26, susModel, -1820.0, 791.00, 138.00 , 311.00, true, true)
	clerk = CreatePed(26, clerkModel, -1820.0, 794.36, 138.0 , 154.00, true, true)
end)

RegisterNetEvent('pis:shoplifting')
AddEventHandler('pis:shoplifting', function()
	location = "~o~Gas Station, Route 11~w~"
	callout = "~r~Shoplifting~w~"
	response = "~r~Code 2~w~"
SetBlipCoords(rblip,-1820.0, 794.36, 138.0 )
	local ClerkPeaceQuotes = {"Get back here!", "Officer! Thats the guy", "He took something!"}
	local ClerkAgressiveQuotes = {"Get back here, you fucker!!", "Officer! Thats the fucker", "That fucker took my shit!", "Motherfucker, get the fuck back!", "Shoot that bitch!", "I'm going to fucking kill him!"}
	local AttitudeLvl = math.random(100)
	local HasSaidQuote = false
	local HasSaidDeathQuote = false
	local IsClerkOnKnees = false
	local weaponChance = math.random(100)
	local suspectWeaponChance = math.random(100)
	local weapon = GetHashKey("WEAPON_PUMPSHOTGUN")
	local susWeapon = GetHashKey("WEAPON_KNIFE")
	
	if weaponChance >= 90 and AttitudeLvl > 50 then
		weapon = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(clerk, weapon, 1000, 1, 1)
	elseif weaponChance > 70 and weaponChance < 90 and AttitudeLvl > 25 then
		weapon = GetHashKey("WEAPON_BAT")
		GiveWeaponToPed(clerk, weapon, 1000, 1, 1)
	end
	
	if suspectWeaponChance >= 90 then
		SetRelationshipBetweenGroups(5, GetHashKey("shoplifter"), GetHashKey("clerk"))
		SetRelationshipBetweenGroups(5, GetHashKey("shoplifter"), GetHashKey("PLAYER"))
		GiveWeaponToPed(suspect1, susWeapon, 1000, 1, 1)
		TaskCombatHatedTargetsAroundPed(suspect1, 10.0, 0)
		SetPedCombatAttributes(suspect1, 5)
		SetPedCombatAttributes(suspect1, 46)
		SetPedCombatAbility(suspect1, 100)
	else
		TaskReactAndFleePed(suspect1, clerk)
		SetPedCombatAbility(suspect1, 0)
	end
	
	--ShowNotification("Wep Chance: " .. weaponChance .. " | AttitudeLvl: " .. AttitudeLvl)
	
	AddRelationshipGroup("clerk")
	AddRelationshipGroup("shoplifter")
	
	SetRelationshipBetweenGroups(5, GetHashKey("clerk"), GetHashKey("shoplifter"))
	SetRelationshipBetweenGroups(1, GetHashKey("clerk"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(3, GetHashKey("shoplifter"), GetHashKey("clerk"))
	
	SetPedRelationshipGroupHash(suspect1, GetHashKey("shoplifter"))
	SetPedRelationshipGroupHash(clerk, GetHashKey("clerk"))
	
	TaskCombatHatedTargetsAroundPed(clerk, 10.0, 0)
	
	while true do
	Citizen.Wait(1000)
		local distanceToClerk = GetDistanceBetweenCoords(GetEntityCoords(clerk), GetEntityCoords(GetPlayerPed(-1)))
		if distanceToClerk <= 5 and HasSaidQuote == false and AttitudeLvl <= 50 and not HasPedGotWeapon(clerk, weapon, false) and not IsEntityDead(clerk) and not IsEntityDead(suspect1) then
			HasSaidQuote = true
			ShowNotification("~o~Clerk: ~w~" .. ClerkPeaceQuotes[math.random(#ClerkPeaceQuotes)])
		elseif distanceToClerk <= 5 and HasSaidQuote == false and AttitudeLvl > 50 and not HasPedGotWeapon(clerk, weapon, false) and not IsEntityDead(clerk) and not IsEntityDead(suspect1) then
			HasSaidQuote = true
			ShowNotification("~o~Clerk: ~w~" .. ClerkAgressiveQuotes[math.random(#ClerkAgressiveQuotes)])
		elseif distanceToClerk <= 10 and HasPedGotWeapon(clerk, weapon, false) and IsEntityOnScreen(clerk) and IsClerkOnKnees == false and not IsEntityDead(clerk) then
			
			ShowNotification("~o~Clerk: ~w~" .. "Officer! Dont shoot! Get that guy!")
			--[[loadAnimDict("random@arrests")
			loadAnimDict("random@arrests@busted")
			ClearPedTasks(clerk)
			ClearPedSecondaryTask(clerk)
			IsClerkOnKnees = true
			
			SetPedDropsInventoryWeapon(clerk, GetSelectedPedWeapon(clerk), GetEntityCoords(clerk), 0)
			ShowNotification("~o~Clerk: ~w~" .. "Officer! Dont shoot! Get that guy!")
			TaskPlayAnim(clerk, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (4000)
			TaskPlayAnim(clerk, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (500)
			TaskPlayAnim(clerk, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (1000)
			TaskPlayAnim(clerk, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0)]]
		elseif distanceToClerk <= 5 and IsEntityDead(suspect) and HasSaidDeathQuote == false then
			local ClerkSympathy = math.random(2)
			local ClerkSympathyQuotes = {"Is he dead? Shit..", "I didn't want to kill him!", "It didn't have to end like this..."}
			local ClerkHeartlessQuotes = {"He got what he deserved!", "Burn in hell motherfucker!", "He messed with the wrong guy!"}
			HasSaidDeathQuote = true
			if ClerkSympathy == 1 then
				ShowNotification("~o~Clerk: ~w~" .. ClerkHeartlessQuotes[math.random(#ClerkHeartlessQuotes)])
			else
				ShowNotification("~o~Clerk: ~w~" ..  ClerkSympathyQuotes[math.random(#ClerkSympathyQuotes)])
			end
		elseif IsEntityDead(suspect1) and not IsEntityDead(clerk) and distanceToClerk < 25 and not IsClerkOnKnees then
			loadAnimDict("random@arrests")
			loadAnimDict("random@arrests@busted")
			--ClearPedTasks(clerk)
			--ClearPedSecondaryTask(clerk)
			IsClerkOnKnees = true
			
			SetPedDropsInventoryWeapon(clerk, GetSelectedPedWeapon(clerk), GetEntityCoords(clerk), 0)
			TaskPlayAnim(clerk, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (4000)
			TaskPlayAnim(clerk, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (500)
			TaskPlayAnim(clerk, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait (1000)
			TaskPlayAnim(clerk, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0)
		end
	end
end)




RegisterNetEvent('pis:paletofight:spawn')
AddEventHandler('pis:paletofight:spawn', function()
	SetEntityAsMissionEntity(sus1)
	
	SetEntityAsMissionEntity(sus2)
	
	
	sus1Model = "a_m_m_socenlat_01"
    sus1ModelHash = GetHashKey(sus1Model)
    RequestModel(sus1ModelHash)
	
	sus2Model = "a_m_m_socenlat_01"
    sus2ModelHash = GetHashKey(sus2Mode1)
    RequestModel(sus2ModelHash)

    while not HasModelLoaded(sus2ModelHash) and not HasModelLoaded(sus1ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus1 = CreatePed(26, sus1Model, -281.75927734375 , 6353.68359375, 32.489151977  , 45.0, true, true)
    sus2 = CreatePed(26, sus2Model, -281.75927734375 + 1, 6353.68359375 - 1, 32.489151977 , 45.0, true, true)
	HasSaidQuote = false
	HasSaidDeathQuote = false
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus1, 5, true)
	SetPedCombatAttributes(sus2, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	SetPedCombatAbility(sus2, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus2, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus1, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus2, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus1, 10.0, 0)
	TaskCombatHatedTargetsAroundPed(sus2, 10.0, 0)
end)

RegisterNetEvent('pis:paletofight')
AddEventHandler('pis:paletofight', function()
	callID = "Paletofight"
	location = "~o~ 846 Procopio Dr, PaletoBay ~w~"
	callout = "~r~Domestic Dispute~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip,-281.75927734375 , 6353.68359375, 32.489151977)
	HasSaidQuote = false
	HasSaidDeathQuote = false
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus1, 5, true)
	SetPedCombatAttributes(sus2, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	SetPedCombatAbility(sus2, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus2, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus1, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus2, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus1, 10.0, 0)
	TaskCombatHatedTargetsAroundPed(sus2, 10.0, 0)
	while true do
	Citizen.Wait(1000)
		local distanceToClerk = GetDistanceBetweenCoords(GetEntityCoords(sus1), GetEntityCoords(GetPlayerPed(-1)))
		if distanceToClerk <= 10 and HasSaidQuote == false and not IsEntityDead(sus2) then
			HasSaidQuote = true
			ShowNotification("~o~Suspect1: ~w~" .. "I AM GOING TO KILL YOU!!")
		
		
		elseif distanceToClerk <= 5 and IsEntityDead(sus2) and HasSaidDeathQuote == false then
			local ClerkSympathy = math.random(2)
			local ClerkSympathyQuotes = {"Is he dead? Shit..", "I didn't want to kill him!", "It didn't have to end like this..."}
			local ClerkHeartlessQuotes = {"He got what he deserved!", "Burn in hell motherfucker!", "He messed with the wrong guy!"}
			HasSaidDeathQuote = true
			
				ShowNotification("~o~Suspect1: ~w~" .. ClerkHeartlessQuotes[math.random(#ClerkHeartlessQuotes)])
			
			elseif distanceToClerk <= 5 and IsEntityDead(sus1) and HasSaidDeathQuote == false then
			local ClerkSympathy = math.random(2)
			local ClerkSympathyQuotes = {"Is he dead? Shit..", "I didn't want to kill him!", "It didn't have to end like this..."}
			local ClerkHeartlessQuotes = {"He got what he deserved!", "Burn in hell motherfucker!", "He messed with the wrong guy!"}
			HasSaidDeathQuote = true
			
				ShowNotification("~o~Suspect2: ~w~" .. ClerkHeartlessQuotes[math.random(#ClerkHeartlessQuotes)])
			
			
		
		end
	end
end)


RegisterNetEvent('pis:fight:spawn')
AddEventHandler('pis:fight:spawn', function()
	SetEntityAsMissionEntity(sus11)
	
	SetEntityAsMissionEntity(sus22)
	
	
	sus11Model = "a_m_m_socenlat_01"
    sus11ModelHash = GetHashKey(sus11Model)
    RequestModel(sus11ModelHash)
	
	sus22Model = "a_m_m_socenlat_01"
    sus22ModelHash = GetHashKey(sus22Mode1)
    RequestModel(sus22ModelHash)
 
    while not HasModelLoaded(sus22ModelHash) and not HasModelLoaded(sus11ModelHash) do
        Wait(500)
    end
	
	Wait(1000)
	
    sus11 = CreatePed(26, sus11Model, -810.0, 810.0, 202.14 , 80.0, true, true)
    sus21 = CreatePed(26, sus22Model, -811.0 , 811.0, 202.14 , 45.0, true, true)
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus11, 5, true)
	SetPedCombatAttributes(sus22, 5, true)
	
	SetPedCombatAbility(sus11, 100)
	SetPedCombatAbility(sus22, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus11, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus22, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus11, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus22, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus11, 10.0, 0)
	TaskCombatHatedTargetsAroundPed(sus22, 10.0, 0)
end)

RegisterNetEvent('pis:fight')
AddEventHandler('pis:fight', function()
	callID = "fight"
	location = "~o~Vinewood Hills, Los Santos~w~"
	callout = "~r~Fight~w~"
	response = "~r~Code 3~w~"
	
	SetBlipCoords(rblip,-810.0, 810.0, 202.14 )
	
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus11, 5, true)
	SetPedCombatAttributes(sus22, 5, true)
	
	SetPedCombatAbility(sus11, 100)
	SetPedCombatAbility(sus22, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus11, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus22, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus11, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus22, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus11, 10.0, 0)
	TaskCombatHatedTargetsAroundPed(sus22, 10.0, 0)
end)

RegisterNetEvent('pis:shots:spawn')
AddEventHandler('pis:shots:spawn', function()
	SetEntityAsMissionEntity(sus1)
	SetEntityAsMissionEntity(sus2)
	
	
	sus1Model = "a_m_m_hillbilly_01"
    sus1ModelHash = GetHashKey(sus1Model)
    RequestModel(sus1ModelHash)
	
	sus2Model = "a_m_m_hillbilly_02"
    sus2ModelHash = GetHashKey(sus2Mode1)
    RequestModel(sus2ModelHash)

    while not HasModelLoaded(sus2ModelHash) and not HasModelLoaded(sus1ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus1 = CreatePed(26, sus1Model, 1660.359375, 3752.216796875, 34.578285217285 , 45.0, true, true)
    sus2 = CreatePed(26, sus2Model, 1634.0037841797, 3736.2243652344, 34.521759033203 , -45.0, true, true)
	local randWeapon1 = math.random(100)
	local randWeapon2 = math.random(100)
	if randWeapon1 < 50 then
		weapon1 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 50 and randWeapon1 < 80 then
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 80 and randWeapon1 < 90 then
		weapon1 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	else
		weapon1 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	end
	
	if randWeapon2 < 50 then
		weapon2 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	elseif randWeapon2 > 50 and randWeapon2 < 80 then
		weapon2 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	elseif randWeapon2 > 80 and randWeapon2 < 90 then
		weapon2 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	else
		weapon2 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	end
	
	SetPedArmour(sus1, math.random(50, 100))
	SetPedArmour(sus2, math.random(50, 100))
	
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus1, 5, true)
	SetPedCombatAttributes(sus2, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	SetPedCombatAbility(sus2, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus2, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus1, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus2, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus1, 20.0, 0)
	TaskCombatHatedTargetsAroundPed(sus2, 20.0, 0)
end)

RegisterNetEvent('pis:shots')
AddEventHandler('pis:shots', function()
	location = "~o~Cholla Springs Ave, Sandy Shores~w~"
	callout = "~r~Shots Fired~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip,1660.359375, 3752.216796875, 34.578285217285)
	local randWeapon1 = math.random(100)
	local randWeapon2 = math.random(100)
	if randWeapon1 < 50 then
		weapon1 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 50 and randWeapon1 < 80 then
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 80 and randWeapon1 < 90 then
		weapon1 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	else
		weapon1 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	end
	
	if randWeapon2 < 50 then
		weapon2 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	elseif randWeapon2 > 50 and randWeapon2 < 80 then
		weapon2 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	elseif randWeapon2 > 80 and randWeapon2 < 90 then
		weapon2 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	else
		weapon2 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus2, weapon2, 1000, 1, 1)
	end
	
	SetPedArmour(sus1, math.random(50, 100))
	SetPedArmour(sus2, math.random(50, 100))
	
	AddRelationshipGroup("fighter1")
	AddRelationshipGroup("fighter2")
	
	SetPedCombatAttributes(sus1, 5, true)
	SetPedCombatAttributes(sus2, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	SetPedCombatAbility(sus2, 100)
	
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("fighter2"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("fighter2"), GetHashKey("fighter1"))
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("fighter1"))
	SetPedRelationshipGroupHash(sus2, GetHashKey("fighter2"))
	
	SetEntityCanBeDamagedByRelationshipGroup(sus1, false, GetHashKey("fighter2"))
	SetEntityCanBeDamagedByRelationshipGroup(sus2, false, GetHashKey("fighter1"))
	
	TaskCombatHatedTargetsAroundPed(sus1, 20.0, 0)
	TaskCombatHatedTargetsAroundPed(sus2, 20.0, 0)
end)

RegisterNetEvent('pis:crazy:spawn')
AddEventHandler('pis:crazy:spawn', function()
	SetEntityAsMissionEntity(sus1)
	
	sus1Model = "a_m_m_hillbilly_01"
    sus1ModelHash = GetHashKey(sus1Model)
    RequestModel(sus1ModelHash)

    while not HasModelLoaded(sus2ModelHash) and not HasModelLoaded(sus1ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus1 = CreatePed(26, sus1Model, 1990.9509277344, 3047.7770996094, 47.215118408203 , 45.0, true, true)
	local randWeapon1 = math.random(100)
	if randWeapon1 < 50 then
		weapon1 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 50 and randWeapon1 < 80 then
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 80 and randWeapon1 < 90 then
		weapon1 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	else
		weapon1 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	end
	
	SetPedArmour(sus1, math.random(50, 100))
	SetPedArmour(sus2, math.random(50, 100))
	
	AddRelationshipGroup("suspect")
	AddRelationshipGroup("targets")
	
	SetPedCombatAttributes(sus1, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("COUGAR"))
	
	SetPedCombatMovement(sus1, 3)
	
	TaskCombatHatedTargetsAroundPed(sus1, 20.0, 0)
end)

RegisterNetEvent('pis:crazy')
AddEventHandler('pis:crazy', function()
	location = "~o~Yellowjack, Sandy Shores~w~"
	callout = "~r~Shots Fired~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip, 1990.9509277344, 3047.7770996094, 47.215118408203)
	local randWeapon1 = math.random(100)
	if randWeapon1 < 50 then
		weapon1 = GetHashKey("WEAPON_COMBATPISTOL")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 50 and randWeapon1 < 80 then
		weapon1 = GetHashKey("WEAPON_PISTOL50")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	elseif randWeapon1 > 80 and randWeapon1 < 90 then
		weapon1 = GetHashKey("WEAPON_PUMPSHOTGUN")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	else
		weapon1 = GetHashKey("WEAPON_CARBINERIFLE")
		GiveWeaponToPed(sus1, weapon1, 1000, 1, 1)
	end
	
	SetPedArmour(sus1, math.random(50, 100))
	SetPedArmour(sus2, math.random(50, 100))
	
	AddRelationshipGroup("suspect")
	AddRelationshipGroup("targets")
	
	SetPedCombatAttributes(sus1, 5, true)
	
	SetPedCombatAbility(sus1, 100)
	
	SetPedRelationshipGroupHash(sus1, GetHashKey("COUGAR"))
	
	SetPedCombatMovement(sus1, 3)
	
	TaskCombatHatedTargetsAroundPed(sus1, 20.0, 0)
end)

RegisterNetEvent('pis:weapon:spawn')
AddEventHandler('pis:weapon:spawn', function()
	SetEntityAsMissionEntity(sus1)
	
	sus1Model = "S_M_Y_MARINE_01"
    sus1ModelHash = GetHashKey(sus1Model)
    RequestModel(sus1ModelHash)

    while not HasModelLoaded(sus2ModelHash) and not HasModelLoaded(sus1ModelHash) do
        Wait(1)
    end
	
	Wait(1000)
	
    sus1ab = CreatePed(26, sus1Model, 1947.19921875, 3749.01953125, 32.211513519287 , 45.0, true, true)
end)

RegisterNetEvent('pis:weapon')
AddEventHandler('pis:weapon', function()
	callID = "weapon"
	location = "~o~24/7, Sandy Shores~w~"
	callout = "~r~Armed Man~w~"
	response = "~r~Code 3~w~"
	SetBlipCoords(rblip, 1947.19921875, 3749.01953125, 32.211513519287)
	hasAimedWeapon = false
	hasMadeContact = false
	
	suspectAttitude = math.random(100)
	retaliationChance = math.random(50)
	
	AddRelationshipGroup("suspect1")
	
	SetRelationshipBetweenGroups(1, GetHashKey("suspect1"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(3, GetHashKey("PLAYER"), GetHashKey("suspect1"))
    
	weapon = "WEAPON_CARBINERIFLE"
	GiveWeaponToPed(sus1ab, weapon, 1000, 1, 1)
	
	SetPedRelationshipGroupHash(sus1ab, GetHashKey("suspect1"))
	
	SetPedArmour(sus1ab, math.random(100))
	
	TaskWanderStandard(sus1ab, 1.0, 10)
	while true do
	Citizen.Wait(1000)
		player = GetPlayerPed(-1)
		_ , target = GetEntityPlayerIsFreeAimingAt(PlayerId())
		if GetDistanceBetweenCoords(GetEntityCoords(sus1ab), GetEntityCoords(player)) < 10 and not IsPedInAnyVehicle(player) and not hasAimedWeapon and not hasMadeContact then
			ShowNotification("~o~Suspect: ~w~" .. "Hello there officer.")
			ClearPedTasks(sus1ab)
			TaskTurnPedToFaceEntity(sus1ab, player, -1)
			hasMadeContact = true
		elseif DoesEntityExist(target) and target == sus1ab and not hasAimedWeapon then
			local suspectGunQuotes = {"Hey! Dont point that shit at me!", "Yo! Get that gun away from me!", "There is no need for this!"}
			ShowNotification("~o~Suspect: ~w~" .. suspectGunQuotes[math.random(#suspectGunQuotes)])
			ClearPedTasks(sus1ab)
			TaskTurnPedToFaceEntity(sus1ab, player, -1)
			hasMadeContact = true
			hasAimedWeapon = true
		end
	end
end)

RegisterNetEvent('pis:weapon:drop:q')
AddEventHandler('pis:weapon:drop:q', function()
	hasDroppedWeapon = false
	isAimingAtOfficer = false
	
	if speech == "Normal" then
		local officerDropQuotes = {"Drop it!", "Put the gun down!", "Come on, put it down.", "Work with me! Drop the gun!", "Drop the weapon!"}
		ShowNotification("~o~Officer: ~w~" .. officerDropQuotes[math.random(#officerDropQuotes)])
		suspectAttitude = suspectAttitude - math.random(5)
		retaliationChance = retaliationChance + math.random(6)
	else
		local officerDropQuotes = {"Fucking drop it!", "Put the fucking gun down!", "Put it the fuck down down.", "Work with me! Drop the gun!", "Drop the fucking weapon!"}
		ShowNotification("~o~Officer: ~w~" .. officerDropQuotes[math.random(#officerDropQuotes)])
		suspectAttitude = suspectAttitude - math.random(10)
		retaliationChance = retaliationChance + math.random(12)
	end
	
	Wait(2000)
	
	if suspectAttitude < 10 and not hasDroppedWeapon then
		local suspectDropQuotes = {"Alright! Dont shoot.", "Okay, im doing it!", "Dont shoot me! I'll do it!", "Okay, okay!"}
		ShowNotification("~o~Suspect: ~w~" .. suspectDropQuotes[math.random(#suspectDropQuotes)])
		hasDroppedWeapon = true
		GetWeaponObjectFromPed(sus1ab, false)
		RemoveAllPedWeapons(sus1ab)
	elseif suspectAttitude > 10 and suspectAttitude < 95 and not hasDroppedWeapon then
		local suspectDropQuotes = {"I know my rights!", "I'm exercising my rights, fuck you!", "I'm allowed to do this! Get back!", "No!"}
		ShowNotification("~o~Suspect: ~w~" .. suspectDropQuotes[math.random(#suspectDropQuotes)])
	elseif suspectAttitude > 95 and suspectAttitude < 99 and not hasDroppedWeapon and hasAimedWeapon then
		local suspectDropQuotes = {"You aim your gun at me?! I'll aim mine at you!", "Get the fuck back!", "I'll fucking kill you all!", "Back up!"}
		ShowNotification("~o~Suspect: ~w~" .. suspectDropQuotes[math.random(#suspectDropQuotes)])
		isAimingAtOfficer = true
		while true do
		Citizen.Wait(0)
			if isAimingAtOfficer then
				TaskAimGunAtEntity(sus1ab, player, -1, false)
			end
		end
	elseif suspectAttitude >= 99 and not hasDroppedWeapon then
		SetRelationshipBetweenGroups(5, GetHashKey("suspect"), GetHashKey("PLAYER"))
		TaskCombatHatedTargetsAroundPed(sus1ab, 20.0, 0)
	elseif hasDroppedWeapon then
		ShowNotification("~o~Suspect: ~w~" .. "I've already dropped it!")
	end
end)

RegisterNetEvent('pis:weapon:face:q')
AddEventHandler('pis:weapon:face:q', function()
	isFacingAway = false
	
	if speech == "Normal" then
		local officerFaceQuotes = {"Turn around!", "Face away from me!"}
		ShowNotification("~o~Officer: ~w~" .. officerFaceQuotes[math.random(#officerFaceQuotes)])
	else
		local officerFaceQuotes = {"Turn the fuck around!", "Face the fuck away from me!"}
		ShowNotification("~o~Officer: ~w~" .. officerFaceQuotes[math.random(#officerFaceQuotes)])
	end
	
	Wait(2000)
	
	if suspectAttitude < 10 and hasDroppedWeapon and not isFacingAway then
		local suspectFaceQuotes = {"Alright! Dont shoot.", "Okay, im doing it!", "Dont shoot me! I'll do it!", "Okay, okay!"}
		ShowNotification("~o~Suspect: ~w~" .. suspectFaceQuotes[math.random(#suspectFaceQuotes)])
		TaskAchieveHeading(sus1ab, GetEntityHeading(player), 5000)
	elseif suspectAttitude > 10 and suspectAttitude < 95 and hasDroppedWeapon and not isFacingAway then
		local suspectFaceQuotes = {"This is unconstitutional!", "I want your badge number!", "You're getting fired!", "You're breaching my rights!"}
		ShowNotification("~o~Suspect: ~w~" .. suspectFaceQuotes[math.random(#suspectFaceQuotes)])
		TaskAchieveHeading(sus1ab, GetEntityHeading(player), 5000)
	else
		SetRelationshipBetweenGroups(5, GetHashKey("suspect"), GetHashKey("PLAYER"))
		TaskCombatHatedTargetsAroundPed(sus1ab, 20.0, 0)
	end
end)

RegisterNetEvent('pis:weapon:threat:q')
AddEventHandler('pis:weapon:threat:q', function()	
	local isShooting = false
	if speech == "Normal" then
		officerThreatQuotes = {"Dont make me shoot you!", "I dont want to kill you!", "You're going to get shot", "Come on! We dont want to shoot you!"}
		ShowNotification("~o~Officer: ~w~" .. officerThreatQuotes[math.random(#officerThreatQuotes)])
		if suspectAttitude < 95 then
			suspectAttitude = suspectAttitude - math.random(15)
			retaliationChance = retaliationChance + math.random(20)
		else
			suspectAttitude = suspectAttitude - math.random(3)
			retaliationChance = retaliationChance + math.random(50, 100)
		end
	else
		local officerThreatQuotes = {"Do what i say, or you're gonna get shot!", "Are you fucking deaf?! You're gonna get shot!", "I'll shoot you right between the eyes!", "I'll turn you into Swiss cheese motherfucker!"}
		ShowNotification("~o~Officer: ~w~" .. officerThreatQuotes[math.random(#officerThreatQuotes)])
		if suspectAttitude < 95 then
			suspectAttitude = suspectAttitude - math.random(20)
			retaliationChance = retaliationChance + math.random(30)
		else
			suspectAttitude = suspectAttitude - math.random(5)
			retaliationChance = retaliationChance + math.random(50, 100)
		end
	end
	while true do
	Citizen.Wait(0)
		if retaliationChance >= 90 and not isShooting then
			SetRelationshipBetweenGroups(5, GetHashKey("suspect"), GetHashKey("PLAYER"))
			TaskCombatHatedTargetsAroundPed(sus1ab, 20.0, 0)
			isShooting = true
		end
	end
end)

RegisterNetEvent('pis:weapon:knees:q')
AddEventHandler('pis:weapon:knees:q', function()
	if speech == "Normal" then
		ShowNotification("~o~Officer: ~w~" .. "Down on your knees!")
	else
		ShowNotification("~o~Officer: ~w~" .. "Get the fuck down!")
	end
	
	if retaliationChance >= 85 then
		fleeChance = math.random(10)
		if fleeChance > 5 then
			TaskReactAndFleePed(sus1ab, player)
			sus1ab = sus1
		else
			TaskPlayAnim(sus1ab, "random@arrests", "idle_2_hands_up", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
			Citizen.Wait (4000)
			TaskPlayAnim(sus1ab, "random@arrests@busted", "enter", 8.0, 3.0, -1, 2, 0, 0, 0, 0 )
			Citizen.Wait (500)
			TaskPlayAnim(sus1ab, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
		end
	elseif hasDroppedWeapon and isFacingAway then
		TaskPlayAnim(sus1ab, "random@arrests", "idle_2_hands_up", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
		Citizen.Wait (4000)
		TaskPlayAnim(sus1ab, "random@arrests@busted", "enter", 8.0, 3.0, -1, 2, 0, 0, 0, 0 )
		Citizen.Wait (500)
		TaskPlayAnim(sus1ab, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
	end
end)

RegisterNetEvent('pis:code4')
AddEventHandler('pis:code4', function()
	SetEntityAsMissionEntity(sus1)
	DeleteEntity(sus1)
	SetEntityAsMissionEntity(sus1ab)
	DeleteEntity(sus1ab)
	SetEntityAsMissionEntity(sus2)
	DeleteEntity(sus2)
end)


enableRandomEvents = false
enableRandomEventBlips = false
randomEventMinTime = 60 --seconds
randomEventMaxTime = 400 --seconds
----------------------------------
Citizen.CreateThread(function()
  while enableRandomEvents do
    randomEventWaitTime = math.random(randomEventMinTime,randomEventMaxTime) * 1000
    --ShowNotification('~g~Waiting '.. randomEventWaitTime / 1000 ..' seconds...')
    Citizen.Wait(randomEventWaitTime)
    --ShowNotification('~g~Wait is over! Triggering...')
    TriggerEvent('pis:randveh')
  end
end)

maxBlipDist = 1000
--
Citizen.CreateThread(function()
  while true do
  Citizen.Wait(1000)
    if DoesEntityExist(randVeh) then
        --_randDist = GetDistanceBetweenCoords(GetEntityCoords(randVeh), GetEntityCoords(player))
		_randDist = DistanceBetweenCoords(randVeh,player).distance
        if _randDist < maxBlipDist then
            if DoesBlipExist(vehBlip) then
                RemoveBlip(vehBlip)
            end
        else
            if DoesBlipExist(vehBlip) == false and enableRandomEventBlips == true then
                vehBlip = AddBlipForEntity(randVeh)
                SetBlipColour(vehBlip, white)
            end
        end
    end
  end
end)

RegisterCommand("randveh", function()
    TriggerEvent('pis:randveh')
end)

RegisterNetEvent('pis:randveh')
AddEventHandler('pis:randveh', function()
    
    
    --ShowNotification("Getting Random Vehicle")
    
    --randVeh = GetRandomVehicleInSphere(vehPos.x + randX, vehPos.y + randY, vehPos.z, 5000.0, 0, 70)
    --randVehDriver = GetPedInVehicleSeat(randVeh, -1)
    
    foundRand = false
    
	offenceType = math.random(5)
	
    while foundRand == false do
        Citizen.Wait(0)
        --ShowNotification("~b~Finding Vehicle...")
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(player, false)
        local vehPos = GetEntityCoords(vehicle)
        randX = math.random(-50, 50)
        randY = math.random(-50, 50)
        randVeh = GetRandomVehicleInSphere(vehPos.x + randX, vehPos.y + randY, vehPos.z, 5000.0, 0, 70)
		randVehDriver = GetPedInVehicleSeat(randVeh, -1)
        if DoesEntityExist(randVeh) and DoesEntityExist(randVehDriver) and randVeh ~= stoppedVeh and IsPedAPlayer(randVehDriver) == false then
          --  ShowNotification("Vehicle found! it's id is... ~g~".. randVeh)
			if offenceType == 5 then
				--ShowNotification("Unroadworthy Vehicle")
				
				local randVehPos = GetEntityCoords(randVeh)
					
				SetVehicleDirtLevel(randVeh,15.0)
				SmashVehicleWindow(randVeh, math.random(4))
				SmashVehicleWindow(randVeh, math.random(4))
				SmashVehicleWindow(randVeh, math.random(4))
				SetVehicleDoorBroken(randVeh, math.random(5), true)
				TaskVehicleDriveWander(randVehDriver, randVeh, 7.0, 2883621)
				unrdwrthyVeh = randVeh
			elseif offenceType == 4 then
				--ShowNotification("Speeder")
				TaskVehicleDriveWander(randVehDriver, randVeh, 30.0, 5)
				speedVeh = randVeh
			elseif offenceType == 3 then
				--ShowNotification("Reckless Driver")
				TaskVehicleDriveWander(randVehDriver, randVeh, 15.0, 2883621)
				rcklsVeh = randVeh
			elseif offenceType == 2 then
				--ShowNotification("Reckless Driver lvl 2")
				TaskVehicleDriveWander(randVehDriver, randVeh, 30.0, 1074528293)
				rcklsVeh = randVeh
			elseif offenceType == 1 then
				--ShowNotification("No lights")
				SetVehicleLights(randVeh, 1)
				SetVehicleBrakeLights(randVeh, false)
				nolghtVeh = randVeh
			else
				--ShowNotification("Other")
			end
            foundRand = true
            SetEntityAsMissionEntity(randVeh, true)
            RemoveBlip(vehBlip)
			RemoveBlip(vehBlip2)
            if enableRandomEventBlips then
              vehBlip = AddBlipForEntity(randVeh)
              SetBlipColour(vehBlip, white)
            end
        end
    end
end)

RegisterCommand('cycle', function()
 TriggerServerEvent('repit')
 ShowNotification('~p~Server: ~g~Calls Reset')
end)

RegisterNetEvent('pis:notification')
AddEventHandler('pis:notification', function()
	--ShowNotification("~w~All units, respond " .. response .. " to " .. location .. " for " .. callout)
end)

-- Shows a notification on the player's screen 
function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

function DistanceBetweenCoords(ent1, ent2)
    local x1,y1,z1 = table.unpack(GetEntityCoords(ent1, true))
    local x2,y2,z2 = table.unpack(GetEntityCoords(ent2, true))
    local deltax = x1 - x2
    local deltay = y1 - y2
    local deltaz = y1 - y2
    
    dist = math.sqrt((deltax * deltax) + (deltay * deltay) + (deltaz * deltaz))
    xout = math.abs(deltax)
    yout = math.abs(deltay)
    zout = math.abs(deltaz)
    result = {distance = dist, x = xout, y = yout, z = zout}
    
    return result
end





























RegisterNetEvent('ldt:cop')
AddEventHandler('ldt:cop', function()
	local player = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			if hasWeapons == false then
				hasWeapons = true
				local pistol = GetHashKey("WEAPON_COMBATPISTOL")
				local taser = GetHashKey("WEAPON_STUNGUN")
				local baton = GetHashKey("WEAPON_NIGHTSTICK")
				local torch = GetHashKey("WEAPON_FLASHLIGHT")
				local speed = GetHashKey("WEAPON_MARKSMANPISTOL")
				GiveWeaponToPed(player, pistol, 1000, 0, 1)
				GiveWeaponComponentToPed(player, pistol, GetHashKey("COMPONENT_AT_PI_FLSH"))
				GiveWeaponToPed(player, taser, 1000, 0, 0)
				GiveWeaponToPed(player, baton, 1000, 0, 0)
				GiveWeaponToPed(player, torch, 1000, 0, 0)
				GiveWeaponToPed(player, speed, 1000, 0, 0)
				ShowNotification("Loadout Equiped.")
			else
				RemoveAllPedWeapons(player,true)
				hasWeapons = false
				ShowNotification("Loadout Reset.")
			end
		end)
end)

RegisterNetEvent('ldt:carbine')
AddEventHandler('ldt:carbine', function()
	local player = GetPlayerPed(-1)
	local rifle = GetHashKey('WEAPON_CARBINERIFLE')
	local hascarbine = HasPedGotWeapon(player, rifle, false)
	local isinpolveh = IsPedInAnyPoliceVehicle(player)
		Citizen.CreateThread(function()
		if isinpolveh and (hascarbine == false) then
			GiveWeaponToPed(player, rifle, 50, 0, true)
			ShowNotification("You unlocked your carbine.")
		elseif isinpolveh and (hascarbine == 1) then
			RemoveWeaponFromPed(player, rifle)
			ShowNotification("You stowed your carbine.")
		else
			ShowNotification("~r~You must be in a police vehicle!")
		end
	end)
end)

RegisterNetEvent('ldt:shotgun')
AddEventHandler('ldt:shotgun', function()
	local player = GetPlayerPed(-1)
	local rifle = GetHashKey('WEAPON_PUMPSHOTGUN')
	local hascarbine = HasPedGotWeapon(player, rifle, false)
	local isinpolveh = IsPedInAnyPoliceVehicle(player)
		Citizen.CreateThread(function()
		if isinpolveh and (hascarbine == false) then
			GiveWeaponToPed(player, rifle, 50, 0, true)
			ShowNotification("You unlocked your shotgun.")
		elseif isinpolveh and (hascarbine == 1) then
			RemoveWeaponFromPed(player, rifle)
			ShowNotification("You stowed your shotgun.")
		else
			ShowNotification("~r~You must be in a police vehicle!")
		end
	end)
end)

RegisterNetEvent('drop')
AddEventHandler('drop', function()
	pos = GetEntityCoords(GetPlayerPed(-1))
	SetPedDropsInventoryWeapon(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)), pos.x, pos.y, pos.z, 0)
end)
