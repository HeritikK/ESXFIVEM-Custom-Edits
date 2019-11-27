----------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------/ W A R  M E N U \-------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
tickname = nil
ticktype = nil
tickprice = nil
ingamedate = nil

reportname = nil
reportinfo = nil
reportad = nil
Citizen.CreateThread(function()
while true do
TriggerServerEvent('getdate')
Wait(60000)
end
end)

RegisterNetEvent('setdate')
AddEventHandler('setdate', function(gamedate)
ingamedate = gamedate

end)

RegisterCommand("mdt", function()
	if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		vehcl = GetVehiclePedIsIn(GetPlayerPed(-1),false)
		if GetVehicleClass(vehcl) == 18 then
	WarMenu.OpenMenu('PIS:mainnn')
	else
	ShowNotification("~o~You must be in a vehicle with an MDT")
	end
	else
	ShowNotification("~o~You must be in a vehicle")
	end
end)

Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"10-7 | Out Of Service","10-8 | Available For Calls", "10-6 | Busy"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
    WarMenu.CreateMenu('PIS:mainnn', 'FLEX','Flex Software')
	WarMenu.SetTitleBackgroundColor('PIS:mainnn', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:mainnn', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:misc', 'PIS:mainnn', 'Other')
	WarMenu.SetTitleBackgroundColor('PIS:misc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:misc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:tc', 'PIS:mainnn', 'Traffic Control')
	WarMenu.SetTitleBackgroundColor('PIS:tc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:tc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:tca', 'PIS:mainnn', 'Arrest Reports')
	WarMenu.SetTitleBackgroundColor('PIS:tca', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:tca', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:tcccc', 'PIS:mainnn', 'General Reports')
	WarMenu.SetTitleBackgroundColor('PIS:tccc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:tcccc', 255, 255, 255, 255)
	WarMenu.CreateSubMenu('mdtt', 'PIS:mainnn', 'Citations')
	WarMenu.SetTitleBackgroundColor('mdt', 15, 60, 125, 255)
	WarMenu.SetTitleColor('mdtt', 255, 255, 255, 255)
	
	
	

	
    WarMenu.CreateSubMenu('closeMenuu', 'PIS:mainnn', 'Are you sure?')

    while true do
        if WarMenu.IsMenuOpened('PIS:mainnn') then
			if WarMenu.MenuButton('Flex Citations', 'mdtt') then
			elseif WarMenu.MenuButton('Flex General Reports', 'PIS:tcccc') then
			elseif WarMenu.MenuButton('Flex Arrest Reports', 'PIS:tca') then
			--elseif WarMenu.MenuButton('Extra Services', 'PIS:misc') then
			
            elseif WarMenu.MenuButton('Exit', 'closeMenuu') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('closeMenuu') then
            if WarMenu.Button('Yes') then
                WarMenu.CloseMenu()
            elseif WarMenu.MenuButton('No', 'PIS:mainnn') then
            end
		
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('mdtt') then
			 if WarMenu.Button('Civilian Name') then
				DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							tickname = plate
							
						end
			elseif WarMenu.Button('Ticket Type') then
				   DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							ticktype = plate
							
						end
			elseif WarMenu.Button('Ticket Price') then
				DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 600)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							tickprice = plate
							
						end
			elseif WarMenu.Button('Issue Ticket') and tickname ~= nil and tickprice ~= nil and ticktype ~= nil then
				--TriggerEvent('pis:ticket')
				TriggerServerEvent('CourtTicket',tickname,ticktype,tickprice)
				tickname = nil
				tickprice = nil
				ticktype = nil
				end
			
			
			
			
			
			
			
			
			
		
			
			
            
			
			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('PIS:tcccc') then
            if WarMenu.Button('Report Type') then
				DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							reportname = plate
							
						end
			elseif WarMenu.Button('Report Information') then
				   DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 700)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							reportinfo = plate
							
						end
			elseif WarMenu.Button('Additional Details') then
				DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 600)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							reportad = plate
							
						end
			elseif WarMenu.Button('Submit Report') and reportname ~= nil and reportinfo ~= nil then
				--TriggerEvent('pis:ticket')
				TriggerServerEvent('GenReport',reportname,reportinfo,reportad)
				reportname = nil
				reportinfo = nil
				reportad = nil
				end
			
			
			
			
			
			
			
			
			
		
			
			
            
			
			WarMenu.Display()
		
		
       
        elseif IsDisabledControlPressed(1, 21) and IsDisabledControlJustPressed(1, CMainMenu) then
            WarMenu.OpenMenu('PIS:mainn')
        end

        Citizen.Wait(0)
    end
end)



Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	
    WarMenu.CreateMenu('PIS:main', 'LSPDFR Online','Civilian Interactions')
	WarMenu.SetTitleBackgroundColor('PIS:main', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:main', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:wep', 'PIS:main', 'Weapons')
	WarMenu.SetTitleBackgroundColor('PIS:wep', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:wep', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:arr', 'PIS:main', 'Arrests (WIP)')
	WarMenu.SetTitleBackgroundColor('PIS:arr', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:arr', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:int', 'PIS:main', 'Interactions')
	WarMenu.SetTitleBackgroundColor('PIS:int', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:int', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:rdo', 'PIS:main', 'Interactions')
	WarMenu.SetTitleBackgroundColor('PIS:rdo', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:rdo', 255, 255, 255, 255)
	
	
	WarMenu.CreateSubMenu('PIS:cars', 'PIS:main', 'Issue Citation')
	WarMenu.SetTitleBackgroundColor('PIS:cars', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:cars', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:ti', 'PIS:main', 'Write Ticket')
	WarMenu.SetTitleBackgroundColor('PIS:ti', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:ti', 255, 255, 255, 255)
	
	
	
	
	

	
    WarMenu.CreateSubMenu('closeMenu', 'PIS:main', 'Are you sure?')

    while true do
        if WarMenu.IsMenuOpened('PIS:main') then
			if WarMenu.MenuButton('Interactions', 'PIS:arr') then
			elseif WarMenu.MenuButton('Questions', 'PIS:int') then
			elseif WarMenu.MenuButton('Issue Citation', 'PIS:cars') then
			
            elseif WarMenu.MenuButton('Exit', 'closeMenu') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('closeMenu') then
            if WarMenu.Button('Yes') then
                WarMenu.CloseMenu()
            elseif WarMenu.MenuButton('No', 'PIS:main') then
            end
		
		
		WarMenu.Display()
        elseif WarMenu.IsMenuOpened('PIS:cars') then
			 if WarMenu.Button('Civilian Name') then
				DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							tickname = plate
							
						end
			elseif WarMenu.Button('Ticket Type') then
				   DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							ticktype = plate
							
						end
			elseif WarMenu.Button('Ticket Price') then
				DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP", "", "", "", "", "", 600)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							tickprice = plate
							
						end
			elseif WarMenu.Button('Issue Ticket') and tickname ~= nil and tickprice ~= nil and ticktype ~= nil then
				TriggerEvent('pis:ticket')
				TriggerServerEvent('CourtTicket',tickname,ticktype,tickprice)
				tickname = nil
				tickprice = nil
				ticktype = nil
				end
			
			
			
			
			
			
			
			
			
		
			
			
            
			
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('PIS:arr') then
            if WarMenu.Button('Handcuff') then
				TriggerEvent("cufem")
			elseif WarMenu.Button('Grab') then
				TriggerEvent("pis:arr:grab")
			elseif WarMenu.Button('Stay Here') then
				TriggerEvent('setfree')
			elseif WarMenu.Button('Issue Ticket') then
				TriggerEvent('pis:ticket')
				TriggerServerEvent('DiscordBot:playerDied', GetPlayerName(PlayerId()) .. ' Just wrote a ticket!', "")
			elseif WarMenu.Button('Seat Ped') then					
				TriggerEvent("seatped")
			elseif WarMenu.Button('Unseat Ped') then					
				TriggerEvent("pis:arr:unsecure")
			elseif WarMenu.Button('Kneel') then
				TriggerEvent('pis:arr:kneel')
			elseif WarMenu.Button('Search') then
				TriggerEvent('pis:search')
				
			elseif WarMenu.Button('Book') then
				TriggerEvent("pis:arr:book")
			elseif WarMenu.Button('Breathalyze') then
				breathvalues = {"~g~0.00","~g~0.03","~o~0.07","~o~0.08","~r~0.10","~r~0.15","~r~0.23"}
				failsay = {"~r~Suspect failed to give a complete breath test.","~y~Suspect: ~w~I refuse to take a breathalyzer!"}
				coopchance = math.random(1,10)
				coopchance = math.random(1,10)
				coopchance = math.random(1,10)
				coopchance = math.random(1,10)
				breathsay = breathvalues[math.random(#breathvalues)]
				breathsay = breathvalues[math.random(#breathvalues)]
				breathsay = breathvalues[math.random(#breathvalues)]
				breathsay = breathvalues[math.random(#breathvalues)]
				ShowNotification("~o~Officer: ~w~Keeping blowing into the breathalyzer until it stops beeping.")
				Wait(2000)
				if coopchance >= 3 then
				ShowNotification("~y~Breathalyzer Result:"..breathsay)
				else
				ShowNotification(failsay[math.random(#failsay)])
				
				end
				
			elseif isdui == true then
			if WarMenu.Button('Balance Test(DUI)') then 
			ShowNotification("~y~Officer: ~w~Lift your right foot 6 inches in the air until I say stop.")
				Wait(1000)
				batest = math.random(1,4)
				batest = math.random(1,4)
				batest = math.random(1,4)
				batest = math.random(1,4)
				if batest == 1 then
				ShowNotification("~o~Suspect: ~w~I won't do this test, it's stupid.")
				Wait(2000)
				ShowNotification("~y~Balance: ~r~Suspect Won't Comply.")
				elseif batest == 2 then
				ShowNotification("~o~Suspect: ~w~I don't need balance to drive but whatever.")
				Wait(2000)
				ShowNotification("~y~Balance: ~o~Suspect kept putting their foot down.")
				elseif batest == 3 then
				ShowNotification("~o~Suspect: ~w~My balance isn't that good.")
				Wait(2000)
				ShowNotification("~y~Balance: ~o~Suspect occasionally put their foot down.")
				elseif batest == 4 then
				ShowNotification("~o~Suspect: ~w~Okay.")
				Wait(2000)
				ShowNotification("~y~Balance: ~g~Suspect never lost balance and foot stayed up.")
				end
			elseif WarMenu.Button('Walk and Turn(DUI)') and isdui == true then
			
				ShowNotification("~y~Officer: ~w~Walk in a straight line and back while counting to ten.")
				Wait(1000)
				wtest = math.random(1,4)
				wtest = math.random(1,4)
				wtest = math.random(1,4)
				wtest = math.random(1,4)
				if wtest == 1 then
				ShowNotification("~o~Suspect: ~w~I refuse to do this test, it proves nothing.")
				Wait(2000)
				ShowNotification("~y~Walk and Turn: ~r~Suspect Won't Comply.")
				elseif wtest >= 2 then
				ShowNotification("~o~Suspect: ~w~This test is stupid but whatever.")
				TriggerEvent('walk')
				
				end	
			elseif  WarMenu.Button('Horizontal Gaze(DUI)') and isdui == true then
			ShowNotification("~y~Officer: ~w~Keep your eyes locked on this pen while it moves.")
				Wait(1000)
				htest = math.random(1,4)
				htest = math.random(1,4)
				htest = math.random(1,4)
				htest = math.random(1,4)
				if htest == 1 then
				ShowNotification("~o~Suspect: ~w~I do not wish to continue these tests")
				Wait(4000)
				ShowNotification("~y~Horizontal Gaze: ~r~Suspect Won't Comply.")
				elseif htest == 2 then
				ShowNotification("~o~Suspect: ~w~Fine.")
				TaskStartScenarioInPlace(GetPlayerPed(-1),"WORLD_HUMAN_CAR_PARK_ATTENDANT", 0, 1)
				Wait(4000)
				ShowNotification("~y~Horizontal Gaze: ~o~Suspects eyes are jerking while moving the pen.")
				elseif htest == 3 then
				ShowNotification("~o~Suspect: ~w~Okay?")
				TaskStartScenarioInPlace(GetPlayerPed(-1),"WORLD_HUMAN_CAR_PARK_ATTENDANT", 0, 1)
				Wait(4000)
				ShowNotification("~y~Horizontal Gaze: ~o~Suspects eyes are slightly jerking while moving the pen.")
				elseif htest == 4 then
				ShowNotification("~o~Suspect: ~w~Yes Officer")
				TaskStartScenarioInPlace(GetPlayerPed(-1),"WORLD_HUMAN_CAR_PARK_ATTENDANT", 0, 1)
				Wait(4000)
				ShowNotification("~y~Horizontal Gaze: ~g~Suspects eyes are smooth while moving the pen.")
				end
				ClearPedTasksImmediately(GetPlayerPed(-1))
			
			end
			end
			
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('PIS:int') then
			
			if WarMenu.Button('Can I have your ID?') then
			TriggerEvent("pis:onfootid")
			elseif WarMenu.Button('Return ID') then
				TriggerEvent("DLClear")
			elseif WarMenu.Button('Have you had anything to drink today?') then
				TriggerEvent("f1")
				
            elseif WarMenu.Button('Have you taken any drugs recently?') then
				TriggerEvent("f2")
            elseif WarMenu.Button('What are you doing out here?') then
				TriggerEvent("q1")
            elseif WarMenu.Button('Can I search you?') then
				TriggerEvent("pis:search:q")
			elseif WarMenu.Button('Do you need an ambulance?') then
				TriggerEvent("q2")
			elseif WarMenu.Button('Why are you here?') then
				TriggerEvent("q3")
			elseif WarMenu.Button('Do you know why I am here?') then
				TriggerEvent('q4')
            end
			
			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('PIS:rdo') then
			if WarMenu.Button('Run Plate') then
					TriggerEvent("pis:getplate")
					vehPlateNum = tostring(vehPlateNum)
					if vehPlateNum == "nil" then
						numPlate = ""
					else
						numPlate = vehPlateNum
					end
					DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", numPlate, "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							plate = string.upper(plate)
							TriggerEvent("pis:runplate")
						end
						WarMenu.Display()
		
			elseif WarMenu.IsMenuOpened('PIS:rdo') then
				if WarMenu.Button('Run ID') then
					driverName = tostring(driverName)
					if driverQuestioned == true then
						name = driverName
					elseif driverName == "nil" then
						name = ""
					elseif driverQuestioned == false then
						name = ""
					end
					DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", tostring(name), "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							name = result
							name = string.gsub(name, "(%a)([%w_']*)", titleCase)
							TriggerEvent("pis:runid")
						end
					elseif WarMenu.Button('OnDuty') then
			local play = GetPlayerPed(-1)

			name = GetPlayerName(PlayerId(play))

			playernames = name

			TriggerServerEvent("duty", playernames)
			ShowNotification("You are on duty "..playernames)
			--TriggerServerEvent('duty')
			elseif WarMenu.Button('10-8(Available)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('108', playernames)
			
			elseif WarMenu.Button('10-6(Busy)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('106', playernames)
			elseif WarMenu.Button('10-7(Out of Service)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('107', playernames)
			elseif WarMenu.Button('10-17(EnRoute)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('1017', playernames)
			elseif WarMenu.Button('10-23(On Scene)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('1023', playernames)
			elseif WarMenu.Button('10-61(Traffic Stop)') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('1061', playernames)
			elseif WarMenu.Button('Units OnDuty') then
			local play = GetPlayerPed(-1)
			local name = GetPlayerName(PlayerId(play))
			local playernames = name
			TriggerServerEvent('avail', playernames)	
						
						
						
						
						
				end
            end
			
			
			
		
		
            WarMenu.Display()
        elseif IsDisabledControlPressed(1, 21) and IsDisabledControlJustPressed(1, CMainMenu) then
           
        end

        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"10-7 | Out Of Service","10-8 | Available For Calls", "10-6 | Busy"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
    WarMenu.CreateMenu('PIS:mainn', 'LSPDFR Online','Scene Control')
	WarMenu.SetTitleBackgroundColor('PIS:mainn', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:mainn', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:misc', 'PIS:mainn', 'Other')
	WarMenu.SetTitleBackgroundColor('PIS:misc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:misc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:tc', 'PIS:mainn', 'Traffic Control')
	WarMenu.SetTitleBackgroundColor('PIS:tc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:tc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:misc', 'PIS:mainn', 'Pullover Options')
	WarMenu.SetTitleBackgroundColor('PIS:misc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:misc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('PIS:tccc', 'PIS:mainn', 'Ambulance Services')
	WarMenu.SetTitleBackgroundColor('PIS:tccc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:tccc', 255, 255, 255, 255)
	WarMenu.CreateSubMenu('mdt', 'PIS:mainn', 'MDT/Radio')
	WarMenu.SetTitleBackgroundColor('mdt', 15, 60, 125, 255)
	WarMenu.SetTitleColor('mdt', 255, 255, 255, 255)
	
	
	

	
    WarMenu.CreateSubMenu('closeMenuu', 'PIS:mainn', 'Are you sure?')

    while true do
        if WarMenu.IsMenuOpened('PIS:mainn') then
			if WarMenu.MenuButton('MDT/Radio', 'mdt') then
			elseif WarMenu.MenuButton('Traffic Control', 'PIS:tc') then
			elseif WarMenu.MenuButton('Pullover Options', 'PIS:misc') then
			elseif WarMenu.MenuButton('Ambulance', 'PIS:tccc') then
            elseif WarMenu.MenuButton('Exit', 'closeMenuu') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('closeMenuu') then
            if WarMenu.Button('Yes') then
                WarMenu.CloseMenu()
            elseif WarMenu.MenuButton('No', 'PIS:mainn') then
            end
		
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('mdt') then
			if WarMenu.Button('Run Plate') then
					TriggerEvent("pis:getplate")
					vehPlateNum = tostring(vehPlateNum)
					if vehPlateNum == "nil" then
						numPlate = ""
					else
						numPlate = vehPlateNum
					end
					DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", numPlate, "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							plate = result
							plate = string.upper(plate)
							TriggerEvent("pis:runplate")
						end
			
				elseif WarMenu.Button('Run ID') then
					driverName = tostring(driverName)
					if driverQuestioned == true then
						name = driverName
					elseif driverName == "nil" then
						name = ""
					elseif driverQuestioned == false then
						name = ""
					end
					DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", tostring(name), "", "", "", 30)
						while (UpdateOnscreenKeyboard() == 0) do
							DisableAllControlActions(0);
							Wait(0);
						end
						if (GetOnscreenKeyboardResult()) then
							local result = GetOnscreenKeyboardResult()
							name = result
							name = string.gsub(name, "(%a)([%w_']*)", titleCase)
							TriggerEvent("pis:runid")
						end
				elseif WarMenu.ComboBox('Status', speechType, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
						currentItemIndex = currentIndex
						selectedItemIndex = selectedIndex
						speech = speechType[selectedItemIndex]
					end) then
								if speech == "10-7 | Out Of Service" then
								ShowNotification("You are now ~r~10-7")
								TriggerEvent('changestatus',7)
								elseif speech == "10-8 | Available For Calls" then
								ShowNotification("You are now ~g~10-8")
								TriggerEvent('changestatus',8)
								elseif speech == "10-6 | Busy" then
								ShowNotification("You are now ~y~10-6")
								TriggerEvent('changestatus',6)
								end
					elseif WarMenu.Button('Call is Code 4') then
					TriggerEvent('Code4')
						end
			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('PIS:tc') then
            if WarMenu.Button('Stop Traffic') then
				TriggerEvent("stoptraf")
			elseif WarMenu.Button('Slow Traffic') then
					TriggerEvent("slowtraf")
			elseif WarMenu.Button('Resume Traffic') then
					TriggerEvent("restraf")
			elseif WarMenu.Button('Flip Vehicle') then
					TriggerEvent("flipit")
			
			
			end
			
			WarMenu.Display()
		
		elseif WarMenu.IsMenuOpened('PIS:tccc') then
            if WarMenu.Button('Dispatch Ambulance') then
					TriggerEvent('samb')
			elseif WarMenu.Button('Order Ambulance to this position') then
				TriggerEvent("ambdes")
					
			elseif WarMenu.Button('Order EMT Here') then
					TriggerEvent('moveemt')
			elseif WarMenu.Button('Order EMT to Help Unconscious Ped') then
					TriggerEvent('revemt')
					
			elseif WarMenu.Button('Dismiss Ambulance') then
					TriggerEvent('disems')
			
			
			end
			
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('PIS:misc') then
			
			if WarMenu.Button('Disable Auto Pullover(Use if riding along)') then
				TriggerEvent("pullemnot")
            
			elseif WarMenu.Button('Enable Auto Pullover') then
				TriggerEvent("pullemnow")
			
            end
	
		
            WarMenu.Display()
        elseif IsDisabledControlPressed(1, 21) and IsDisabledControlJustPressed(1, CMainMenu) then
            WarMenu.OpenMenu('PIS:mainn')
        end

        Citizen.Wait(0)
    end
end)
help = false

Citizen.CreateThread(function()
while true do 
				Wait(5)
				if help == true then
				
				DrawMarker(1, GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 2.0, -1.0 ), 0, 0, 0, 0, 0, 0,0.501, 0.5001, 0.5001, 0, 0, 255, 200, 0, 0, 0, 0)
				end
				end
end)
function GetPedInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 12, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end
Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	
    WarMenu.CreateMenu('civv', 'LSPDFR Online')
	WarMenu.SetTitleBackgroundColor('civv', 15, 60, 125, 255)
	WarMenu.SetTitleColor('civv', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('Actions', 'civv', 'Actions')
	WarMenu.SetTitleBackgroundColor('Actions', 15, 60, 125, 255)
	WarMenu.SetTitleColor('Actions', 255, 255, 255, 255)
	

	
	
	

	
    WarMenu.CreateSubMenu('closeMenuu', 'PIS:mainn', 'Are you sure?')

    while true do
        if WarMenu.IsMenuOpened('civv') then
			WarMenu.Display()
			if WarMenu.MenuButton('Medical', 'Actions') then
            elseif WarMenu.MenuButton('Exit', 'closeMenuu') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('closeMenuu') then
            if WarMenu.Button('Yes') then
                WarMenu.CloseMenu()
            elseif WarMenu.MenuButton('No', 'civv') then
            end
		
		
			
			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('Actions') then
				WarMenu.Display()
            if WarMenu.Button('Toggle Helper') then
				if help == true then
				help = false
				elseif help == false then
				help = true
				end
				
			elseif WarMenu.Button('Check Vitals') then
			player = GetPlayerPed(-1)
			local playerPos = GetEntityCoords( player )
			local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 4.0, -2.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
			deadai = GetPedInDirection( playerPos, inFrontOfPlayer )
			if DoesEntityExist(deadai) then
			pulse = math.random(0,120)
			rr = math.random(0,40)
			temp = math.random(80,110)
			pulse = math.random(0,120)
			rr = math.random(0,40)
			temp = math.random(89,105)
			pulse = math.random(0,120)
			rr = math.random(0,40)
			temp = math.random(89,105)
			pulse = math.random(0,120)
			rr = math.random(0,40)
			temp = math.random(89,105)
			ShowNotification("Checking Vitals")
			Wait(5000)
			ShowNotification("~o~Pulse: "..pulse)
			ShowNotification("~y~Temperature: "..temp.."F")
			ShowNotification("~p~Respiratory Rate: "..rr)
			
			
			
			
			end
			
					
			elseif WarMenu.Button('CPR') then
			player = GetPlayerPed(-1)
			local playerPos = GetEntityCoords( player )
			local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, -2.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
			deadai = GetPedInDirection( playerPos, inFrontOfPlayer )
			if DoesEntityExist(deadai) then
			TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', -1, true)
			ShowNotification("Attempting CPR")
			revrate = math.random(1,100)
			revrate = math.random(1,100)
			revrate = math.random(1,100)
			revrate = math.random(1,100)
			revrate = math.random(1,100)
			
			
			
			Wait(15000)
			ClearPedTasks(GetPlayerPed(-1))
			if revrate < 60 then
				TriggerEvent('revem')
				ShowNotification("~g~CPR was effective")
			else
			ShowNotification("~r~CPR was not effective")
			end
			end
			elseif WarMenu.Button('Load Into Ambulance') then
					TriggerEvent('dely')
			
			end
			
			
	
		
        
        end

        Citizen.Wait(0)
    end
end)










v = false


function ShowNotification( text )
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end



			

			








Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	
	
    WarMenu.CreateMenu('carspawn', 'Car Fleet')
	WarMenu.SetTitleBackgroundColor('carspawn', 15, 60, 125, 255)
	WarMenu.SetTitleColor('carspawn', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('Sheriff', 'carspawn', 'Patrol')
	WarMenu.SetTitleBackgroundColor('Sheriff', 15, 60, 125, 255)
	WarMenu.SetTitleColor('Sheriff', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('hwycar', 'carspawn', 'Subdivision')
	WarMenu.SetTitleBackgroundColor('hwycar', 15, 60, 125, 255)
	WarMenu.SetTitleColor('hwycar', 255, 255, 255, 255)
	WarMenu.CreateSubMenu('emscar', 'carspawn', 'TBD')
	WarMenu.SetTitleBackgroundColor('emscar', 15, 60, 125, 255)
	WarMenu.SetTitleColor('emscar', 255, 255, 255, 255)
	
	
	
	 WarMenu.CreateSubMenu('closeMenu', 'carspawn', 'Are you sure?')
	
	while true do
	Citizen.Wait(0)
	 if WarMenu.IsMenuOpened('carspawn') then
			
			if WarMenu.MenuButton('Patrol Area', 'Sheriff') then
			elseif WarMenu.MenuButton('Subdivision', 'hwycar') then
			elseif WarMenu.MenuButton('To be determined', 'emscar') then
            elseif WarMenu.MenuButton('Exit', 'closeMenu') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('closeMenu') then
            if WarMenu.Button('Yes') then
                WarMenu.CloseMenu()
            elseif WarMenu.MenuButton('No', 'PIS:main') then
            end
			
			
			
	
		
			
		
			
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('Sheriff') then
			if WarMenu.Button('Mission Row PD') then
			SetEntityCoords(GetPlayerPed(-1),453.24859619141,-990.83435058594,30.689582824707,1, 0, 0, false)
			elseif WarMenu.Button('Vespucci Beach PD') then
			SetEntityCoords(GetPlayerPed(-1),-1092.8253173828,-809.31256103516,19.277076721191,1, 0, 0, false)
			elseif WarMenu.Button('SandyShores PD') then
			SetEntityCoords(GetPlayerPed(-1),1850.6706542969,3687.0075683594,34.267082214355,1, 0, 0, false)
			elseif WarMenu.Button('Paleto PD') then
			SetEntityCoords(GetPlayerPed(-1),-446.03433227539,6010.9174804688,31.71639251709,1, 0, 0, false)
			elseif WarMenu.Button('Grapeseed PD') then
			SetEntityCoords(GetPlayerPed(-1),1676.5928955078,4883.0805664063,42.054809570313,1, 0, 0, false)
			
			
			
			
			
		
		end
		
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('hwycar') then
			if WarMenu.Button('Patrol') then
			ShowNotification("You are now on duty as Patrol!")
			WarMenu.CloseMenu()
			servtext = GetPlayerName(PlayerId()).." is on duty as Patrol"
			TriggerServerEvent('servertext',servtext)
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": Patrol")
			elseif  WarMenu.Button('K9')then
			ShowNotification("You are now on duty as K9")
			WarMenu.CloseMenu()
			servtext = GetPlayerName(PlayerId()).." is on duty as K9"
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": K9")
			TriggerServerEvent('servertext',servtext)
			elseif  WarMenu.Button('Traffic Service Unit') then
			local speed = GetHashKey("WEAPON_PISTOL50")
				GiveWeaponToPed(GetPlayerPed(-1), speed, 1000, 0, 0)
			ShowNotification("You are now on duty as TSU")
			servtext = GetPlayerName(PlayerId()).." is on duty as TSU"
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": TSU")
			TriggerServerEvent('servertext',servtext)
			WarMenu.CloseMenu()
			elseif  WarMenu.Button('DUI Enforcement') then
			isdui = true
			ShowNotification("You are now on duty as DUI Enforcement")
			WarMenu.CloseMenu()
			servtext = GetPlayerName(PlayerId()).." is on duty as DUI Enforcement"
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": DUI Enforcement")
			TriggerServerEvent('servertext',servtext)
			elseif  WarMenu.Button('Commercial Vehicle Enforcement') then
			ShowNotification("You are now on duty as CVE")
			servtext = GetPlayerName(PlayerId()).." is on duty as CVE"
			TriggerServerEvent('servertext',servtext)
			WarMenu.CloseMenu()
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": CVE")
			elseif  WarMenu.Button('Marine Unit') then
			ShowNotification("You are now on duty as Marine Patrol")
			WarMenu.CloseMenu()
			servtext = GetPlayerName(PlayerId()).." is on duty as Marine Patrol"
			TriggerServerEvent('servertext',servtext)
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": Marine Patrol")
			elseif  WarMenu.Button('Tactical Unit(SWAT)') then
			ShowNotification("You are now on duty as SWAT")
			WarMenu.CloseMenu()
			servtext = GetPlayerName(PlayerId()).." is on duty as Tactical Unit"
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": Tactical Unit")
			TriggerServerEvent('servertext',servtext)
			elseif  WarMenu.Button('Wildlife Enforcement') then
			ShowNotification("You are now on duty as Wildlife Enforcement")
			servtext = GetPlayerName(PlayerId()).." is on duty as Wildlife Enforcement"
			TriggerServerEvent('servertext',servtext)
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": Wildlife Enforcement")
			local speed = GetHashKey("WEAPON_PUMPSHOTGUN")
			GiveWeaponToPed(GetPlayerPed(-1), speed, 1000, 0, 0)
			WarMenu.CloseMenu()
			elseif  WarMenu.Button('Criminal Investigations') then
			ShowNotification("You are now on duty as CID")
			servtext = GetPlayerName(PlayerId()).." is on duty as CID"
			TriggerServerEvent('servertext',servtext)
			TriggerServerEvent('noice',GetPlayerName(PlayerId())..": CID")
			WarMenu.CloseMenu()
		
		end
		
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('emscar') then
			if  WarMenu.Button('Why you lookin in here m8') then
			TriggerEvent('fbi')
			elseif   WarMenu.Button('I AM A TOWEL') then
			TriggerEvent('fbi2')
			
			
		end
		WarMenu.Display()
		
		
	
	
	
	
	
	
	end
	
	
	end
	
	
	
	
	end)
	isonduty = false
	isdui = false
	isk9 = false
	istraffic = false
	isbeat = false
	subd = ""
	



RegisterNetEvent('cars')
AddEventHandler('cars', function()
	
	WarMenu.Display()
	WarMenu.OpenMenu('uniform')
	
	
end)
RegisterNetEvent('clock')
AddEventHandler('clock', function()
	
	WarMenu.Display()
	WarMenu.OpenMenu('carspawn')
	
	
end)

Citizen.CreateThread(function()
	--local player = GetPlayerPed(-1)
	local prices = { "$50", "$100", "$150", "$200", "$250", "$500", "$1000"  }
	local currentItemIndex = 1
    local selectedItemIndex = 1
	
    WarMenu.CreateMenu('PIS:trfc', 'Traffic Stop','Traffic Menu')
	WarMenu.SetTitleBackgroundColor('PIS:trfc', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:trfc', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('trfc:qstn', 'PIS:trfc','Traffic Stop')
	WarMenu.SetTitleBackgroundColor('trfc:qstn', 15, 60, 125, 255)
	WarMenu.SetTitleColor('trfc:qstn', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('trfc:tkt', 'PIS:trfc','Traffic Stop')
	WarMenu.SetTitleBackgroundColor('trfc:tkt', 15, 60, 125, 255)
	WarMenu.SetTitleColor('trfc:tkt', 255, 255, 255, 255)

    while true do		
        if WarMenu.IsMenuOpened('PIS:trfc') then
				
				if WarMenu.Button('Hello') then
					TriggerEvent("pis:hello")
					
				elseif WarMenu.Button('Ask for Drivers License and Insurance') then
					TriggerEvent("getinfo")
					--TriggerEvent("vid")
					Wait(1000)
					TriggerEvent("insurance")
					TriggerEvent("perminfo")
				elseif WarMenu.Button('Return Information To Driver') then
					TriggerEvent('DLClear')
					ShowNotification("~g~You returned the drivers Information")
				elseif WarMenu.MenuButton('Question Driver', "trfc:qstn") then
				elseif WarMenu.MenuButton('Issue Ticket', "trfc:tkt") then
				elseif WarMenu.Button('Issue Warning') then
					TriggerEvent("pis:warn")
					--TriggerEvent("vwarn")
				elseif IsPedInAnyVehicle(stoppedDriver) then
					if WarMenu.Button('Order out of vehicle') then
						TriggerEvent("pis:exit")
					elseif WarMenu.Button('Release') then
						TriggerEvent("pis:release")
					end
				elseif not IsPedInAnyVehicle(stoppedDriver) then
					if WarMenu.Button('Order back in vehicle') then
						TriggerEvent("pis:mount")
					elseif WarMenu.Button('Release') then
						TriggerEvent("pis:release")
					end
				end
		
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('trfc:qstn') then
            if WarMenu.Button('Have you had anything to drink today?') then
				TriggerEvent("f1")
				--TriggerEvent("vdrink")
            elseif WarMenu.Button('Have you took any drugs recently?') then
				TriggerEvent("f2")
				--TriggerEvent("vdrug")
            elseif WarMenu.Button('Anything illegal in the vehicle?') then
				TriggerEvent("pis:illegal:q")
				--TriggerEvent("vdcar")
            elseif WarMenu.Button('Can i search your vehicle?') then
				TriggerEvent("pis:search:q")
				--TriggerEvent("vscar")
			elseif WarMenu.Button('Where are you heading today?') then
				TriggerEvent("pis:loc:q")
				--TriggerEvent("vhead")
			elseif WarMenu.Button('Where are you coming from?') then
				TriggerEvent("pis:locs:q")
				--TriggerEvent("vcome")
			elseif WarMenu.Button('Do you know why I stopped you?') then
				TriggerEvent('pis:stop:q')
				--TriggerEvent("vstop")
            end
			
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('trfc:tkt') then
            	--TriggerEvent('pis:ticket')
			if WarMenu.Button('Ticket') then
				TriggerEvent('pis:ticket')
				--TriggerEvent("vtick")
            end
			
            WarMenu.Display()
		elseif IsDisabledControlPressed(1, 21) and IsDisabledControlJustPressed(1, trfmnu) and stopped == true and GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver)) < 3 then --E
            WarMenu.OpenMenu('PIS:trfc')
		
       end

        Citizen.Wait(0)
    end
end)





lol = false
lel = false
leel = false
Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"Normal", "Aggressive"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
	
    WarMenu.CreateMenu('lem', 'Lemex Menu')
	WarMenu.SetTitleBackgroundColor('lem', 15, 60, 125, 255)
	WarMenu.SetTitleColor('lem', 255, 255, 255, 255)
	

    while true do
        if WarMenu.IsMenuOpened('lem') then
		WarMenu.Display()
			if WarMenu.Button('Trunk') then
				
				
				
				if lol == false then
				lol = true
				SetVehicleExtra(vehc,11,false)
				SetVehicleExtra(vehc,10,true)
				SetVehicleDoorOpen(vehc,5,false,false)
				Wait(1000)
				SetVehicleDoorOpen(vehc,4,false,false)
				else 
				lol = false
				SetVehicleDoorShut(vehc,4,false,false)
				Wait(1000)
				
				
				SetVehicleDoorShut(vehc,5,false,false)
				Wait(500)
				SetVehicleExtra(vehc,11,true)
				SetVehicleExtra(vehc,10,false)
				end
            elseif WarMenu.Button('RamBar') then
				if lel == false then
				lel = true
				SetVehicleExtra(vehc,8,false)
				
				else
				lel = false
				SetVehicleExtra(vehc,8,true)
				end
			 elseif WarMenu.Button('TakeDown Lights') then
				if leel == false then
				leel = true
				SetVehicleExtra(vehc,7,false)
				
				else
				leel = false
				SetVehicleExtra(vehc,7,true)
				end
				
			elseif WarMenu.Button('Set Vehicle') then
				vehc = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            end
		
            WarMenu.Display()
		elseif player == "gone" then
            WarMenu.OpenMenu('lem')
		end

        Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"Normal", "Aggressive"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
	
    WarMenu.CreateMenu('lem', 'Lemex Menu')
	WarMenu.SetTitleBackgroundColor('lem', 15, 60, 125, 255)
	WarMenu.SetTitleColor('lem', 255, 255, 255, 255)
	

    while true do
        if WarMenu.IsMenuOpened('lem') then
			if WarMenu.Button('Trunk') then
				
				
				
				if lol == false then
				lol = true
				SetVehicleExtra(vehc,11,false)
				SetVehicleExtra(vehc,10,true)
				SetVehicleDoorOpen(vehc,5,false,false)
				Wait(1000)
				SetVehicleDoorOpen(vehc,4,false,false)
				else 
				lol = false
				SetVehicleDoorShut(vehc,4,false,false)
				Wait(1000)
				
				
				SetVehicleDoorShut(vehc,5,false,false)
				Wait(500)
				SetVehicleExtra(vehc,11,true)
				SetVehicleExtra(vehc,10,false)
				end
            elseif WarMenu.Button('RamBar') then
				if lel == false then
				lel = true
				SetVehicleExtra(vehc,8,false)
				
				else
				lel = false
				SetVehicleExtra(vehc,8,true)
				end
			 elseif WarMenu.Button('TakeDown Lights') then
				if leel == false then
				leel = true
				SetVehicleExtra(vehc,7,false)
				
				else
				leel = false
				SetVehicleExtra(vehc,7,true)
				end
				
			elseif WarMenu.Button('Set Vehicle') then
				vehc = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            end
		
            WarMenu.Display()
		elseif player == "Gone" then
            WarMenu.OpenMenu('lem')
		end

        Citizen.Wait(0)
	end
end)

function titleCase(first, rest)
   return first:upper()..rest:lower()
end

RegisterCommand("ems", function()
	WarMenu.OpenMenu('civv')
end)

RegisterCommand("loadv", function()
	TriggerServerEvent('getveh')
end)

RegisterCommand("savev", function()
	carModel = GetEntityModel(GetVehiclePedIsIn(GetPlayerPed(-1),false))
	vname = GetDisplayNameFromVehicleModel(carModel)
	if vname == "BUFFALO02" then 
	vname = "BUFFALO2"
	elseif vname == "16challenge" then
	vname = "16CHALLENGER"
	else
	--TriggerServerEvent('setveh',vname)
	end
	ShowNotification(vname)
	TriggerServerEvent('setveh',vname)
end)


RegisterCommand("setveh", function()
	
ShowNotification("Welcome to the future!")
vehc = GetVehiclePedIsIn(GetPlayerPed(-1),false)
end)
RegisterCommand("t", function()
if lol == false then
				lol = true
				SetVehicleExtra(vehc,11,false)
				SetVehicleExtra(vehc,10,true)
				SetVehicleDoorOpen(vehc,5,false,false)
				Wait(1000)
				SetVehicleDoorOpen(vehc,4,false,false)
				else 
				lol = false
				SetVehicleDoorShut(vehc,4,false,false)
				Wait(1000)
				
				
				SetVehicleDoorShut(vehc,5,false,false)
				Wait(500)
				SetVehicleExtra(vehc,11,true)
				SetVehicleExtra(vehc,10,false)
				end
end)
RegisterCommand("tl", function()
if leel == false then
				leel = true
				SetVehicleExtra(vehc,7,false)
				
				else
				leel = false
				SetVehicleExtra(vehc,7,true)
				end
end)
RegisterCommand("rambar", function()
if lel == false then
				lel = true
				SetVehicleExtra(vehc,8,false)
				
				else
				lel = false
				SetVehicleExtra(vehc,8,true)
				end
end)
RegisterCommand("unseat", function()
	TriggerEvent('pis:arr:unsecure')
end)


Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"Normal", "Aggressive"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
	
    WarMenu.CreateMenu('PIS:call:mnu', 'Callouts')
	WarMenu.SetTitleBackgroundColor('PIS:call:mnu', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:call:mnu', 255, 255, 255, 255)
	

    while true do
        if WarMenu.IsMenuOpened('PIS:call:mnu') then
			if WarMenu.Button('Call 1') then
				TriggerServerEvent('call1')
			elseif WarMenu.Button('Call 2') then
			TriggerServerEvent('call2')
			elseif WarMenu.Button('Call 3') then
			TriggerServerEvent('call3')
			elseif WarMenu.Button('Call 4') then
			TriggerServerEvent('call4')
			elseif WarMenu.Button('Call 5') then
			TriggerServerEvent('call5')
			elseif WarMenu.Button('Call 6') then
			TriggerServerEvent('call6')
			elseif WarMenu.Button('Call 7') then
			TriggerServerEvent('call7')
			elseif WarMenu.Button('Intoxicated') then
			TriggerServerEvent('CountyDrunk')
			elseif WarMenu.Button('Bridge') then
			TriggerServerEvent('CountyRocks')
			elseif WarMenu.Button('Clothes') then
			TriggerServerEvent('CountyClothes')
			elseif WarMenu.Button('County Fight(Paleto)') then
			TriggerEvent('cleancall')
				TriggerServerEvent('cfight1')
			elseif WarMenu.Button('County Weapon(Sandyshores)') then
			TriggerEvent('cleancall')
				TriggerServerEvent('cknife')
            end	
            WarMenu.Display()
		end
        Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local speechType = {"Normal", "Aggressive"}
	local currentItemIndex = 1
    local selectedItemIndex = 1
	
    WarMenu.CreateMenu('PIS:call', 'Callout Menu')
	WarMenu.SetTitleBackgroundColor('PIS:call', 15, 60, 125, 255)
	WarMenu.SetTitleColor('PIS:call', 255, 255, 255, 255)
	
	WarMenu.CreateSubMenu('call:cd4', 'PIS:call' ,'Are you sure?')
	WarMenu.SetTitleBackgroundColor('call:cd4', 15, 60, 125, 255)
	WarMenu.SetTitleColor('call:cd4', 255, 255, 255, 255)
	

    while true do
        if WarMenu.IsMenuOpened('PIS:call') then
			if callID == "weapon" then
				if WarMenu.ComboBox('Speech', speechType, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
                    currentItemIndex = currentIndex
                    selectedItemIndex = selectedIndex
					speech = speechType[selectedItemIndex]
				end) then
				elseif WarMenu.Button('Drop the weapon!') then
					TriggerEvent("pis:weapon:drop:q")
				elseif WarMenu.Button('Face away from me!') then
					TriggerEvent("pis:weapon:face:q")
				elseif WarMenu.Button('Get on the ground!') then
					TriggerEvent("pis:weapon:knees:q")
				elseif WarMenu.Button('Threaten') then
					TriggerEvent("pis:weapon:threat:q")
				elseif WarMenu.MenuButton('Code 4', 'call:cd4') then
				end
				
			elseif	callID == "fight" then
				if WarMenu.Button('Fight Call') then
				elseif WarMenu.MenuButton('Code 4', 'call:cd4') then
				end
			end

			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('call:cd4') then
			if WarMenu.Button('Yes') then
				callID = nil
				ShowNotification("Situation is ~g~Code 4~w~.")
				TriggerEvent("pis:code4")
				WarMenu.CloseMenu('call:cd4')
			elseif WarMenu.Button('No') then
				WarMenu.CloseMenu('call:cd4')
			end
		
            WarMenu.Display()
		elseif IsDisabledControlPressed(1, 21) and IsControlJustPressed(0, trfcveh) and callID ~= nil then --E
            WarMenu.OpenMenu('PIS:call')
       end

        Citizen.Wait(0)
    end
end)
Citizen.CreateThread(function()
Wait(1000)
TriggerEvent('cars')
end)

