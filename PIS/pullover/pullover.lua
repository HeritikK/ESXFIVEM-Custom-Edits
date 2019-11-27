-- D E B U G G I N G / S E T T I N G S --

offense = {"WANTED : LSPD","WANTED : ASSAULT","WANTED : UNPAID FINES","WANTED : EVADING","WANTED FOR EVADING LAW","WANTED : HIT AND RUN","WANTED : DUI"}


weeditem = {"~r~Bong","~r~Joint","~r~Pipe","~r~Weed Grinder","~r~Small bag of weed","~g~Cheetos"}
beeritem = {"~r~Open container of beer","~r~Six pack of beer","~r~Rifle","~r~Empty Beer Can","","","",""}
stolenitem = {"~o~Drill", "~o~Hand Saw", "~o~Nail Gun", "~o~Containers Of Screws", "~o~Keys To Heavy Machinery", "~o~Wire Cutters", "~o~Crowbar", "~o~Wrench Set"}
dealeritem = {"~r~Small scale", "~r~Small bags of white powder", "~r~$600 in cash", "~r~Pistol", "Small lock box"}

types = {"weed", "beer", "stolen", "dealer"}
searchstuff = {"None"}
----------------------
player = GetPlayerPed(-1)

local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" }
local carType = {[0]="Compact",[1]="Sedan",[2]="SUV",[3]="Coupe",[4]="Muscle",[5]="Sports Classic",[6]="Sports",[7]="Super",[8]="Motorcycle",[9]="Off-road",[10]="Industrial",[11]="Utilty",[12]="Van",[13]="Cycle",[14]="Boat",[15]="Helicopter",[16]="Plane",[17]="Service",[18]="Emergency",[19]="Military",[20]="Commerecial",[21]="Train",}

local fnamesar = {"Tod","Bud","Colin","Nova","Boyd","Vivienne","John","Donald","Mike","Sally","George","Sam","Reuben","Wade","Arthur","Raiden","Camren","Trystan","Hugo","Samir","Ayaan","Curtis","Philip","Elijah","Jeffrey","Frank","Cedric","Payton","Ross","Marshall","Antwan","Jamison","Samuel","Abram","Camron","Luis","Morgan","Ronin","Marcus","Niko","Armani","Jeramiah","Justin","Uriel","Jessie","Alexzander","Tony","Remington","George","London","Brent","Lewis","Edward","Davon","Rigoberto","Denzel","Jamal","Demarion","Reilly","Atticus","Micheal","Clay","Soren","Isiah","Harry","Aryan","Asa","Glenn","Kasen","Marvin","Jeremy","Yusuf","Luciano","Sheldon","Marc","Brody","Coleman","Damari","Darien","Layton","Rafael","Gregory","Luka","Keagan","Zack","Jan","Layne","Keegan","Augustus","Clinton","Jair","Jairo","Chaim","Landyn","Louis","Kolby","Maximus","Hector","Javier","Jorge","Finn","Demetrius","Terrence","Davion","Jordon","Cael","Bradley","Jayvon","Marlon","Axel","Santiago","Kade","Jeffery","Milo","Alijah","Addison","Jasper","Winston","Kolton","Brady","Bailey","Damion","Rocco","Isaiah","Nathanial","Hunter","Cory","Maurice","Jean","Brogan","Benjamin","Raul","Moses","Kaden","Blaze","Trevin","Gunner","Lamont","Jared","Ben","Abel","Dax","Tripp","Isaias","Joel","Deon","Oswaldo","Zain","Korbin","Aaron","Allan","Chad","Tucker","Mario","Isai","Conor","Leonard","Owen","Cyrus","Deegan","Jaron","Pablo","Cristopher","Javion","Leonardo","Gordon","Orlando","William","Gavin","Rishi","Arnav","Jermaine","Bo","Tommy","Issac","Judah","Lincoln","Paxton","Collin","Gerald","King","Oscar","Aron","Blake","Victor","Adriel","Jovanny","Camden","Frederick","Koen","Kaleb","Nikhil","Colby","Emery","Easton","Zion","Callum","Greyson","Ezequiel","Rashad","Pranav","Alex","Jonathon","Urijah","Cristofer","Case","Jaden","Desmond","Colin","Weston","Camryn","Jayvion","Mason","Owen","Ray","Callum","Scotty","Fucking","Cock","Bay","Jeff","Paul","Kanersps","Adam","Jimmy","Garry","Bobby","Arnold","Dick","Maia","Ebonie","Anne","Elijah","Kathryne","Sheryl","Tomika","Stefanie","Laci","Josefina","Clara","Amy","Mary","Emillia","Emily","June","Garry","Bob","Jessy","Bailey","Hadley","Kendall","Laci","Lizeth","Ashlynn","Lesly","Lorelei","Meredith","Tanya","Raina","Cynthia","Eileen","Evie","Lyla","Sonia","Angel","Alexis","Anabella","Layla","Claire","Shania","Aniya","Frida","Celeste","Lindsey","Samara","Tamia","Luz","Lola","Ryann","Kenya","Cassidy","Clare","Litzy","Ashlyn","Cheyenne","Ava","Maggie","Kiera","Rayne","Janelle","Reagan","Martha","Adeline","Giovanna","Elena","June","Annabella","Abril","Karlie","Deja","Belinda","Heather","Lea","Myla","Rhianna","Amirah","Selena","Nina","Amaris","Serenity","Riya","Payton","Cheyanne","Sadie","Dakota","Alison","Mikaela","Jaelyn","Evelyn","Joanna","Jaslene","Zoie","Paola","Ali","Marlee","Charlee","Alma","Kamryn","Avery","Aisha","Rachel","Mckenzie","Alissa","Makenzie","Brenna","Virginia","Rosemary","Wendy","Natasha","Yamilet","Michelle","Maribel","Elyse","Julissa","Lily","Susan","Hailey","Liberty","Tianna","Bella","Roselyn","Naomi","Kinsley","Cameron","Aracely","Averi","Eva","Malia","Sara","Danica","Morgan","Shannon","Raegan","Lyric","Johanna","Melany","Jaqueline","Kennedi","Amy","Chanel","Kaliyah","Zoe","Kaylyn","Chaya","Julie","Alivia","Karissa","Eliza","Kiana","Thalia","Sarahi","Samantha","Noelle","Vivian","Desirae","Dayanara","Aryanna","Teresa","Jordan","Camryn","Ariella","Chana","Sidney","Hana","Princess","Kayley","Jaida","April","Genevieve","Kathryn","Violet","Marlie","Iliana","Kallie","Isla","Cecilia","Stacy","Phoenix","Eliana","Mylie","Amani","Sanaa","Giuliana","Maleah","Amanda","Norah","Gwendolyn","Bailee","Brooklyn","Leia","Amari","Margaret","Kaia","Breanna","Rose","Leslie","Aylin","Celia","Alia","Kasey","Azul","Halle","Tara","Miracle","Shirley","Katrina","Shiloh","Catherine","Addison","Laurel","Jaylah","Heidy","Anabel","Madalyn","Shelby","Saige","Carleigh","Kaelyn","Mommy","Kitchen","Woman","Emma"}
local snamesar = {"Hansen","Malone","Barnett","Cooper","Sosa","Castaneda","Quinn","Stanton","Orozco","Salazar","Gonzalez","Hull","Colon","Vincent","Poole","Good","Serrano","Lozano","Hancock","Travis","Ortega","Mcguire","Carney","Velasquez","Moore","Rosales","Cross","Mullins","Hahn","Carlson","Chase","Glass","Walter","Holmes","Rivera","Medina","Perez","Carson","King","Lloyd","Christian","Franklin","Bautista","Ball","Bowers","Sampson","Harmon","Hutchinson","Rogers","Knight","Sullivan","Christensen","Lindsey","Cantrell","Rush","Reid","Hawkins","Ferrell","Li","Sheppard","Clay","Riley","Blevins","Forbes","Raymond","Hodge","Austin","Skinner","Walsh","Bridges","Jacobson","Wilson","Pacheco","Moss","Randolph","Hoffman","Gilmore","Bryan","Deleon","Oneal","Church","Curtis","Santana","Bruce","Woods","Klein","Vaughan","Solomon","Maxwell","Downs","Strong","Mcmahon","Suarez","Mccall","Ewing","Barron","Zamora","Webster","Hinton","Vargas","Robbins","Roman","Reeves","Douglas","Reilly","Blair","Glover","Arnold","Tran","Maynard","Cuevas","Todd","Kramer","Yoder","Conway","Owens","Wu","Fritz","Hoover","Vance","Green","Frederick","Vega","Osborn","Buck","Pratt","Trujillo","Cortez","Mcclain","Richmond","Krueger","Mayo","Mahoney","Hartman","Bowman","Arias","Boyle","Simmons","Bush","Davenport","Roberts","Ochoa","Chang","Luna","Villegas","Rios","Dodson","Johnston","Shah","Guerrero","Stuart","Rocha","Landry","Estes","Fleming","Davila","Merritt","Love","Petersen","Callahan","Robertson","Hood","Frank","Duke","Lawson","Stevens","Whitney","Benitez","Payne","Gibson","Castillo","Greer","Henson","Dougherty","Nunez","Wells","Wallace","Byrd","Doyle","Goodman","Webb","Ortiz","Houston","Sanchez","Duarte","Mccoy","Lam","Monroe","Carroll","Nash","Parks","Peters","Sutton","Atkins","Bonilla","Mcclure","Leonard","Murphy","Davidson","Harrington","Whitehead","Le","Vazquez","Tucker","Gallagher","Wiley","Larson","Mcconnell","Chandler","Pierce","Salas","Day","Taylor","Shields","Mcdonald","Fowler","Neal","Wall","Murillo","Hopkins","Macdonald","Banks","Acevedo","Bauer","Weeks","Summers","Saunders","Stevenson","Newton","Kent","Sellers","Barber","Rubio","Mejia","Fischer","Thomas","Mccarty","Carter","Duran","Short","Watkins","Meyers","Kirby","Velazquez","Bright","Rivas","Mcneil","Caldwell","Santiago","Zavala","Perkins","Khan","Miller","Ward","Small","Gilbert","Nixon","Cochran","Blackburn","Gates","Stafford","Stein","Wilcox","Morgan","Lyons","Lynn","Cannon","Yates","Wise","Olsen","White","Holt","Riggs","Bond","Heath","Schmitt","Willis","Turner","Ibarra","Burns","Anthony","Weber","Daniels","Higgins","Mayer","Burch","Garner","Trevino","Avila","Woodward","Bray","Fuentes","Terrell","Porter","Mathis","Garrison","Stokes","Marsh","Bailey","Allen","Marshall","Richard","Huffman","Roach","Murray","Preston","Lucas","Mccarthy","Francis","Esparza","Powell","Dunlap","Norman","Crosby","Holland","Brandt","Finley","Delacruz","Romero","Ayala","Pollard","Madden","Irwin","Armstrong","Frye","Mora","Osborne","Wood","Gibbs","Glenn","Hunt","Winters","Bell","Morris","Key","Wolf","Garrett","Rodriguez","Pope","Fisher","Mcintyre","Tyler","Rodgers","Hill","Macias","Brennan","Hines","Conley","Jennings","Ayers","Hernandez","Cole","Beck","Odonnell","Zhang","Hunter","Waller","Cowan","Valentine","Underwood","Donaldson","Bolton","Steele","Wheeler","George","Hester","Richards","Sandoval","Grant","Franco","Everett","Gay","Knox","Sexton","Coleman","Gregory","Young","Pineda","Howard","Combs","Villa","Padilla","Huerta","Hughes","Werner","Kim","Barajas","Pearson","Chan","Robles","Carey","Joseph","Patrick","Lewis","Cantu","Donovan","Rose","Harvey","Strickland","Hammond","Fox","Wiley","Terry","Mendoza","Maldonado","Garrison","Waters","Weber","Pena","Macdonald","Allison","Thompson","Ramsey","Mosley","Hester","Bowman","Blake","Caldwell","Villegas","Case","Moran","Welch","Ortiz","Pham","Mcclure","Reid","Orr","Poole","Rivera","King","Powell","Burns","Salas","Velazquez","Huang","Collins","Pollard","Alvarado","Campbell","Merritt","May","Ford","Wilkins","Durham","Olsen","Barnett","Mahoney","Norman","Nash","Davis","Morton","Woodman","Markozov","Thomas","Hughes","Cena","Gobbler"}

local fmalenamesar = {"Tod","Bud","Colin","Nova","Boyd","Vivienne","John","Donald","Mike","Sally","George","Sam","Reuben","Wade","Arthur","Raiden","Camren","Trystan","Hugo","Samir","Ayaan","Curtis","Philip","Elijah","Jeffrey","Frank","Cedric","Payton","Ross","Marshall","Antwan","Jamison","Samuel","Abram","Camron","Luis","Morgan","Ronin","Marcus","Niko","Armani","Jeramiah","Justin","Uriel","Jessie","Alexzander","Tony","Remington","George","London","Brent","Lewis","Edward","Davon","Rigoberto","Denzel","Jamal","Demarion","Reilly","Atticus","Micheal","Clay","Soren","Isiah","Harry","Aryan","Asa","Glenn","Kasen","Marvin","Jeremy","Yusuf","Luciano","Sheldon","Marc","Brody","Coleman","Damari","Darien","Layton","Rafael","Gregory","Luka","Keagan","Zack","Jan","Layne","Keegan","Augustus","Clinton","Jair","Jairo","Chaim","Landyn","Louis","Kolby","Maximus","Hector","Javier","Jorge","Finn","Demetrius","Terrence","Davion","Jordon","Cael","Bradley","Jayvon","Marlon","Axel","Santiago","Kade","Jeffery","Milo","Alijah","Addison","Jasper","Winston","Kolton","Brady","Bailey","Damion","Rocco","Isaiah","Nathanial","Hunter","Cory","Maurice","Jean","Brogan","Benjamin","Raul","Moses","Kaden","Blaze","Trevin","Gunner","Lamont","Jared","Ben","Abel","Dax","Tripp","Isaias","Joel","Deon","Oswaldo","Zain","Korbin","Aaron","Allan","Chad","Tucker","Mario","Isai","Conor","Leonard","Owen","Cyrus","Deegan","Jaron","Pablo","Cristopher","Javion","Leonardo","Gordon","Orlando","William","Gavin","Rishi","Arnav","Jermaine","Bo","Tommy","Issac","Judah","Lincoln","Paxton","Collin","Gerald","King","Oscar","Aron","Blake","Victor","Adriel","Jovanny","Camden","Frederick","Koen","Kaleb","Nikhil","Colby","Emery","Easton","Zion","Callum","Greyson","Ezequiel","Rashad","Pranav","Alex","Jonathon","Urijah","Cristofer","Case","Jaden","Desmond","Colin","Weston","Camryn","Jayvion","Mason","Owen","Ray","Callum","Scotty","Fucking","Cock","Bay","Jeff","Paul","Kanersps","Adam","Jimmy","Garry","Bobby","Arnold","Dick"}
local ffemalenamesar = {"Maia","Ebonie","Anne","Elijah","Kathryne","Sheryl","Tomika","Stefanie","Laci","Josefina","Clara","Amy","Mary","Emillia","Emily","June","Garry","Bob","Jessy","Bailey","Hadley","Kendall","Laci","Lizeth","Ashlynn","Lesly","Lorelei","Meredith","Tanya","Raina","Cynthia","Eileen","Evie","Lyla","Sonia","Angel","Alexis","Anabella","Layla","Claire","Shania","Aniya","Frida","Celeste","Lindsey","Samara","Tamia","Luz","Lola","Ryann","Kenya","Cassidy","Clare","Litzy","Ashlyn","Cheyenne","Ava","Maggie","Kiera","Rayne","Janelle","Reagan","Martha","Adeline","Giovanna","Elena","June","Annabella","Abril","Karlie","Deja","Belinda","Heather","Lea","Myla","Rhianna","Amirah","Selena","Nina","Amaris","Serenity","Riya","Payton","Cheyanne","Sadie","Dakota","Alison","Mikaela","Jaelyn","Evelyn","Joanna","Jaslene","Zoie","Paola","Ali","Marlee","Charlee","Alma","Kamryn","Avery","Aisha","Rachel","Mckenzie","Alissa","Makenzie","Brenna","Virginia","Rosemary","Wendy","Natasha","Yamilet","Michelle","Maribel","Elyse","Julissa","Lily","Susan","Hailey","Liberty","Tianna","Bella","Roselyn","Naomi","Kinsley","Cameron","Aracely","Averi","Eva","Malia","Sara","Danica","Morgan","Shannon","Raegan","Lyric","Johanna","Melany","Jaqueline","Kennedi","Amy","Chanel","Kaliyah","Zoe","Kaylyn","Chaya","Julie","Alivia","Karissa","Eliza","Kiana","Thalia","Sarahi","Samantha","Noelle","Vivian","Desirae","Dayanara","Aryanna","Teresa","Jordan","Camryn","Ariella","Chana","Sidney","Hana","Princess","Kayley","Jaida","April","Genevieve","Kathryn","Violet","Marlie","Iliana","Kallie","Isla","Cecilia","Stacy","Phoenix","Eliana","Mylie","Amani","Sanaa","Giuliana","Maleah","Amanda","Norah","Gwendolyn","Bailee","Brooklyn","Leia","Amari","Margaret","Kaia","Breanna","Rose","Leslie","Aylin","Celia","Alia","Kasey","Azul","Halle","Tara","Miracle","Shirley","Katrina","Shiloh","Catherine","Addison","Laurel","Jaylah","Heidy","Anabel","Madalyn","Shelby","Saige","Carleigh","Kaelyn","Mommy","Kitchen","Woman","Emma"}
local flagsWalk = {"Failure To Appear","Wanted For Murder","None","Sex Offender","Prostitution","Drug Abuse","Domestic Violence","Child Abuse", "Grand Theft Auto", "Gas Station Robery"}

stopped = false
local mimicking = false
local lockedin = false

local notification = false

local targetVeh = nil
local stoppedVeh = nil
stoppedDriver = nil
local vehInfo = nil
driverQuestioned = false
honked = false

pitting = false
bylocker = false
breakother = false
local distanceToCheck = 20.0
----------------------
-- Main thread --
-----------------------



function ShowLocker()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Hold E to go on duty!")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end

function ShowLockerr()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Hold E to select cruiser!")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end

function pressyto()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Press Shift and E to open traffic menu")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end



function yourcar()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Hold E to set this as your cruiser!")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (1000)
	notification = false
end
gay = true


tempveh = nil
Citizen.CreateThread(function()
while true do
Wait(1)
if IsPedInAnyVehicle(GetPlayerPed(-1)) then
if  IsControlPressed(1, 21) and IsControlJustPressed(1, CMimic)    then 
				if stopped then
		--mimick
				TriggerEvent('po:mimic')
				else
				if mimicking then
			--unmimick
			TriggerEvent('po:unmimic')
				else
			--(You need to pull over a vehicle first)
					ShowNotification( "You need to pullover a vehicle first." )
				end
					end
			
			end
			
			
			
			
			end
			end

end)


for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		pullovermode = false
		EnableDispatchService(5, true)
	Citizen.CreateThread(function()
	
		


		while true do
			if IsPedInAnyVehicle(GetPlayerPed(-1)) then
			
			end
			
			if IsVehicleSirenOn(GetVehiclePedIsIn(GetPlayerPed(-1)),false) and stopped == false and pulen == true and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1),-1))  then --36 
				
				player = GetPlayerPed(-1)
			playerVeh = GetVehiclePedIsIn(player, false)
				local pvPos = GetEntityCoords(playerVeh)
					local inFrontOfPlayerVeh = GetOffsetFromEntityInWorldCoords(playerVeh, 0.0, distanceToCheck, 0.0 )
					targetVeh = GetVehicleInDirection(pvPos, inFrontOfPlayerVeh)
					tempveh = targetVeh
					NetworkRequestControlOfEntity(GetPedInVehicleSeat(tempveh,-1))
					NetworkRequestControlOfEntity(tempveh)
					Wait(3000)
					player = GetPlayerPed(-1)
			playerVeh = GetVehiclePedIsIn(player, false)
				local pvPos = GetEntityCoords(playerVeh)
					local inFrontOfPlayerVeh = GetOffsetFromEntityInWorldCoords(playerVeh, 0.0, distanceToCheck, 0.0 )
					targetVeh = GetVehicleInDirection(pvPos, inFrontOfPlayerVeh)
					
					--print(target
			
			if stopped == false and tempveh == targetVeh and tempveh ~= nil then --36
			player = GetPlayerPed(-1)
			playerVeh = GetVehiclePedIsIn(player, false)
				if GetVehicleClass(playerVeh) == 18 or GetVehicleClass(playerVeh) == 14  then
					if not GetEntityAttachedTo(targetVeh) ~= 0 then
					--targetVeh = GetEntityAttachedTo(targetVeh)
					print('gay')
					else
					targetVeh = GetVehicleInDirection(pvPos, inFrontOfPlayerVeh)
					end
					if stopped then
						TriggerEvent('po:release')
					elseif mimicking then
						--TriggerEvent('po:unmimic')
					else
					
						if IsVehicleSeatFree(targetVeh,-1) and IsVehicleSeatFree(targetVeh,0) or DoesEntityExist(targetVeh) == false then
							-- (vehicle is empty (or doesn't exist), ignore it.)
							
						else
							pullovermode = false
							if IsVehicleSirenOn(playerVeh) then
									--pullover
								WarMenu.OpenMenu('PIS:trfc:veh')
								TriggerEvent('po:pullover')
								TriggerEvent('pis:footid')
								
								
							else
								if lockedin then
										--unlock
									TriggerEvent('po:unlock')
								else
										--lock
									TriggerEvent('po:lock')
								end
							end
						end
					end
				end
			end
			end
			Citizen.Wait(0)
		end
	end)
	-------------------------------
	lord = true
	Citizen.CreateThread(function()
		while true do
		Citizen.Wait(100)
		
			if stopped == true then
				if lord == true then
				TriggerEvent('noot')
				lord = false
				end
				SetVehicleEngineOn(stoppedVeh, false, false, true)
				 
				--TaskVehicleTempAction(stoppedDriver, stoppedVeh, 27, 10000)
				--SetVehicleFuelLevel(targetVeh, 0)
				if GetEntitySpeed(stoppedVeh) <= 1 then
					--SetVehicleFuelLevel(targetVeh, 0)
					RollDownWindows(targetVeh)
				end
				
			end
			if lockedin == true then
				if IsVehicleSirenOn(playerVeh) then 
					--unlock
					--ShowNotification("Stopped2")
					TriggerEvent('po:unlock')
					--SetVehicleEngineOn(stoppedVeh, false, true, true)
					--pullover
					TriggerEvent('po:pullover')
					
					TriggerEvent('pis:footid')
					--stopped = true
					--SetVehicleEngineOn(stoppedVeh, false, false, true)
					
				end
				--[[if IsControlJustPressed(0, 51) or IsControlJustPressed(1, 36) and IsPedInAnyVehicle(player) then
					honked = true
					ShowNotification( "~b~You signaled the car to keep moving." )
					TaskVehicleDriveWander(GetPedInVehicleSeat(targetVeh, -1),targetVeh,8.0,2883621)
					Wait(5000)
					ClearPedTasks(GetPedInVehicleSeat(targetVeh, -1))
					honked = false
				end	]]
			end
		end
	end)
	------------------------------------
	
-- E V E N T S --


pulen = true

RegisterNetEvent('noot')
AddEventHandler('noot', function()
ShowAnother()

end)
RegisterNetEvent('pullemnow')
AddEventHandler('pullemnow', function()
pulen = true
ShowNotification("~g~Auto Pullover Enabled")
end)
RegisterNetEvent('pullemnot')
AddEventHandler('pullemnot', function()
pulen = false
ShowNotification("~r~Auto Pullover Disabled")
end)

RegisterCommand('release', function(source, args, rawCommand)
    
   
   
    TriggerEvent('po:release')
    
end)




RegisterNetEvent('po:mimic')
AddEventHandler('po:mimic', function()
	stopped = false
	mimicking = true
	lockedin = false
	
	RequestAnimDict("misscarsteal3pullover")
	while not HasAnimDictLoaded("misscarsteal3pullover") do
				Citizen.Wait(100)
			end
	
	if IsVehicleSeatFree(stoppedVeh,-1) then
		stoppedDriver = GetPedInVehicleSeat(stoppedVeh, 0)
	else
		stoppedDriver = GetPedInVehicleSeat(stoppedVeh, -1)
	end
	local playerVeh = GetVehiclePedIsIn(player, false)
	if DoesEntityExist(stoppedVeh) then
		ShowNotification("The ~r~" .. GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(stoppedVeh))) .. " ~w~is now mimicking you.")
		mimicking = true
		TaskPlayAnim(player, "misscarsteal3pullover", "pull_over_left", 8.0, -8, -1, 49, 0, 0, 0, 0)
		Citizen.CreateThread(function()
			Citizen.Wait(1100)
			ClearPedSecondaryTask(player)
		end)
		SetPedIntoVehicle(stoppedDriver, stoppedVeh, 0)
		Citizen.Wait(10)
		while (mimicking) do 
			Citizen.Wait(0)
			local speedVect = GetEntitySpeedVector(playerVeh, true)
			if speedVect.y > 0 and reverseWithPlayer then
				SetVehicleForwardSpeed(stoppedVeh, GetEntitySpeed(playerVeh) * 1.5)
			elseif speedVect.y < 0 and reverseWithPlayer then
				SetVehicleForwardSpeed(stoppedVeh, -1 * GetEntitySpeed(playerVeh))
			end
			SetVehicleSteeringAngle(stoppedVeh,GetVehicleSteeringAngle(playerVeh) * 1.5)
			if IsPedInAnyVehicle(stoppedDriver) == false or IsVehicleDriveable(stoppedVeh, false) == false then
				TriggerEvent('po:unmimic')
			end
			while IsEntityInAir(stoppedVeh) do
				Citizen.Wait(0)
			end
		end
	end
end)

RegisterNetEvent('po:unmimic')
AddEventHandler('po:unmimic', function()
	mimicking = false
	Citizen.Wait(100)
	ShowNotification("The ~r~" .. GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(stoppedVeh))) .. " ~w~is no longer mimicking you.")
	stopped = true
	lockedin = false
	Wait(2000)
	SetPedIntoVehicle(stoppedDriver, stoppedVeh, -1)
end)

RegisterCommand("follow", function()
	
end)

RegisterNetEvent('pis:follow')
AddEventHandler('pis:follow', function()
	if stopped then
		--follow
		TriggerEvent('po:follow')
	else
		if following then
			--unfollow
			TriggerEvent('po:unfollow')
		else
			--(You need to pull over a vehicle first)
			ShowNotification( "You need to pullover a vehicle first." )
		end
	end
end, false)

following = false
RegisterNetEvent('po:follow')
AddEventHandler('po:follow', function()
	stopped = false
	local playerVeh = GetVehiclePedIsIn(player, false)
		if DoesEntityExist(stoppedVeh) then
			ShowNotification("The ~r~" .. GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(stoppedVeh))) .. " ~w~is now following you.")
			following = true
			Citizen.Wait(10)
			while (following) do 
				Citizen.Wait(1000)
					local pvPos = GetEntityCoords(playerVeh)
					TaskVehicleDriveToCoord(stoppedDriver, stoppedVeh, pvPos.x, pvPos.y, pvPos.z, 10.0, 0, vehiclehash, 4456765, 1.0, true)
				while IsEntityInAir(stoppedVeh) do
					Citizen.Wait(0)
				end
			end
		end
end)

RegisterNetEvent('po:unfollow')
AddEventHandler('po:unfollow', function()
	following = false
	Citizen.Wait(100)
	ShowNotification("The ~r~" .. GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(stoppedVeh))) .. " ~w~is no longer following you.")
	stopped = true
	lockedin = false
	Wait(2000)
	SetPedIntoVehicle(stoppedDriver, stoppedVeh, -1)
end)



local tiempo = 15000 -- in miliseconds >> 1000 ms = 1s

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if stopped == true and IsPedInAnyVehicle(GetPlayerPed(-1),true) then
		ShowNotification("~g~Vehicle Pulled Over")
		end
	end
end)

colorNames = {
    ['0'] = "Metallic Black",
    ['1'] = "Metallic Graphite Black",
    ['2'] = "Metallic Black Steal",
    ['3'] = "Metallic Dark Silver",
    ['4'] = "Metallic Silver",
    ['5'] = "Metallic Blue Silver",
    ['6'] = "Metallic Steel Gray",
    ['7'] = "Metallic Shadow Silver",
    ['8'] = "Metallic Stone Silver",
    ['9'] = "Metallic Midnight Silver",
    ['10'] = "Metallic Gun Metal",
    ['11'] = "Metallic Anthracite Grey",
    ['12'] = "Matte Black",
    ['13'] = "Matte Gray",
    ['14'] = "Matte Light Grey",
    ['15'] = "Util Black",
    ['16'] = "Util Black Poly",
    ['17'] = "Util Dark silver",
    ['18'] = "Util Silver",
    ['19'] = "Util Gun Metal",
    ['20'] = "Util Shadow Silver",
    ['21'] = "Worn Black",
    ['22'] = "Worn Graphite",
    ['23'] = "Worn Silver Grey",
    ['24'] = "Worn Silver",
    ['25'] = "Worn Blue Silver",
    ['26'] = "Worn Shadow Silver",
    ['27'] = "Metallic Red",
    ['28'] = "Metallic Torino Red",
    ['29'] = "Metallic Formula Red",
    ['30'] = "Metallic Blaze Red",
    ['31'] = "Metallic Graceful Red",
    ['32'] = "Metallic Garnet Red",
    ['33'] = "Metallic Desert Red",
    ['34'] = "Metallic Cabernet Red",
    ['35'] = "Metallic Candy Red",
    ['36'] = "Metallic Sunrise Orange",
    ['37'] = "Metallic Classic Gold",
    ['38'] = "Metallic Orange",
    ['39'] = "Matte Red",
    ['40'] = "Matte Dark Red",
    ['41'] = "Matte Orange",
    ['42'] = "Matte Yellow",
    ['43'] = "Util Red",
    ['44'] = "Util Bright Red",
    ['45'] = "Util Garnet Red",
    ['46'] = "Worn Red",
    ['47'] = "Worn Golden Red",
    ['48'] = "Worn Dark Red",
    ['49'] = "Metallic Dark Green",
    ['50'] = "Metallic Racing Green",
    ['51'] = "Metallic Sea Green",
    ['52'] = "Metallic Olive Green",
    ['53'] = "Metallic Green",
    ['54'] = "Metallic Gasoline Blue Green",
    ['55'] = "Matte Lime Green",
    ['56'] = "Util Dark Green",
    ['57'] = "Util Green",
    ['58'] = "Worn Dark Green",
    ['59'] = "Worn Green",
    ['60'] = "Worn Sea Wash",
    ['61'] = "Metallic Midnight Blue",
    ['62'] = "Metallic Dark Blue",
    ['63'] = "Metallic Saxony Blue",
    ['64'] = "Metallic Blue",
    ['65'] = "Metallic Mariner Blue",
    ['66'] = "Metallic Harbor Blue",
    ['67'] = "Metallic Diamond Blue",
    ['68'] = "Metallic Surf Blue",
    ['69'] = "Metallic Nautical Blue",
    ['70'] = "Metallic Bright Blue",
    ['71'] = "Metallic Purple Blue",
    ['72'] = "Metallic Spinnaker Blue",
    ['73'] = "Metallic Ultra Blue",
    ['74'] = "Metallic Bright Blue",
    ['75'] = "Util Dark Blue",
    ['76'] = "Util Midnight Blue",
    ['77'] = "Util Blue",
    ['78'] = "Util Sea Foam Blue",
    ['79'] = "Uil Lightning blue",
    ['80'] = "Util Maui Blue Poly",
    ['81'] = "Util Bright Blue",
    ['82'] = "Matte Dark Blue",
    ['83'] = "Matte Blue",
    ['84'] = "Matte Midnight Blue",
    ['85'] = "Worn Dark blue",
    ['86'] = "Worn Blue",
    ['87'] = "Worn Light blue",
    ['88'] = "Metallic Taxi Yellow",
    ['89'] = "Metallic Race Yellow",
    ['90'] = "Metallic Bronze",
    ['91'] = "Metallic Yellow Bird",
    ['92'] = "Metallic Lime",
    ['93'] = "Metallic Champagne",
    ['94'] = "Metallic Pueblo Beige",
    ['95'] = "Metallic Dark Ivory",
    ['96'] = "Metallic Choco Brown",
    ['97'] = "Metallic Golden Brown",
    ['98'] = "Metallic Light Brown",
    ['99'] = "Metallic Straw Beige",
    ['100'] = "Metallic Moss Brown",
    ['101'] = "Metallic Biston Brown",
    ['102'] = "Metallic Beechwood",
    ['103'] = "Metallic Dark Beechwood",
    ['104'] = "Metallic Choco Orange",
    ['105'] = "Metallic Beach Sand",
    ['106'] = "Metallic Sun Bleeched Sand",
    ['107'] = "Metallic Cream",
    ['108'] = "Util Brown",
    ['109'] = "Util Medium Brown",
    ['110'] = "Util Light Brown",
    ['111'] = "Metallic White",
    ['112'] = "Metallic Frost White",
    ['113'] = "Worn Honey Beige",
    ['114'] = "Worn Brown",
    ['115'] = "Worn Dark Brown",
    ['116'] = "Worn straw beige",
    ['117'] = "Brushed Steel",
    ['118'] = "Brushed Black steel",
    ['119'] = "Brushed Aluminium",
    ['120'] = "Chrome",
    ['121'] = "Worn Off White",
    ['122'] = "Util Off White",
    ['123'] = "Worn Orange",
    ['124'] = "Worn Light Orange",
    ['125'] = "Metallic Securicor Green",
    ['126'] = "Worn Taxi Yellow",
    ['127'] = "police car blue",
    ['128'] = "Matte Green",
    ['129'] = "Matte Brown",
    ['130'] = "Worn Orange",
    ['131'] = "Matte White",
    ['132'] = "Worn White",
    ['133'] = "Worn Olive Army Green",
    ['134'] = "Pure White",
    ['135'] = "Hot Pink",
    ['136'] = "Salmon pink",
    ['137'] = "Metallic Vermillion Pink",
    ['138'] = "Orange",
    ['139'] = "Green",
    ['140'] = "Blue",
    ['141'] = "Mettalic Black Blue",
    ['142'] = "Metallic Black Purple",
    ['143'] = "Metallic Black Red",
    ['144'] = "hunter green",
    ['145'] = "Metallic Purple",
    ['146'] = "Metaillic V Dark Blue",
    ['147'] = "MODSHOP BLACK1",
    ['148'] = "Matte Purple",
    ['149'] = "Matte Dark Purple",
    ['150'] = "Metallic Lava Red",
    ['151'] = "Matte Forest Green",
    ['152'] = "Matte Olive Drab",
    ['153'] = "Matte Desert Brown",
    ['154'] = "Matte Desert Tan",
    ['155'] = "Matte Foilage Green",
    ['156'] = "DEFAULT ALLOY COLOR",
    ['157'] = "Epsilon Blue",
}

RegisterNetEvent('po:stopped')
AddEventHandler('po:stopped', function()




end)
pchance = 0
rchance = 0
breathNum = 0
RegisterNetEvent('po:pullover')
AddEventHandler('po:pullover', function()
pchance = math.random(1,100)
pchance = math.random(1,100)
pchance = math.random(1,100)
pchance = math.random(1,100)
pchance = math.random(1,100)
rchance = math.random(1,100)
rchance = math.random(1,100)
rchance = math.random(1,100)
rchance = math.random(1,100)
rchance = math.random(1,100)

	stoppedVeh = targetVeh
	NetworkRequestControlOfEntity(stoppedVeh)
	SetVehicleEngineOn(stoppedVeh,false,false,true)
	if IsVehicleSeatFree(stoppedVeh,-1) then
		 stoppedDriver = GetPedInVehicleSeat(stoppedVeh, 0)
	else
		 stoppedDriver = GetPedInVehicleSeat(stoppedVeh, -1)
	end
		SetEntityHealth(stoppedDriver, 200)
	SetEntityAsMissionEntity(stoppedVeh, true, true)
	--ShowNotification(GetVehicleModColor_1Name(targetVeh, 0))
	NetworkRequestControlOfEntity(stoppedDriver)
	local playerPos = GetEntityCoords(player)
	local currentZone = zones[GetNameOfZone(playerPos.x, playerPos.y, playerPos.z)]
	SetEntityAsMissionEntity(stoppedVeh, true, true)
	SetEntityAsMissionEntity(stoppedDriver, true, true)
	if pchance < 30 then
		if rchance < 50 then
	TriggerEvent('sil',stoppedVeh)
	else
	TriggerEvent('sil',stoppedVeh)
	TriggerEvent('sil',stoppedVeh)
	end
	else
	
	end
	-------------------
		pedGender = GetPedType(stoppedDriver)
		if pedGender == 5 then
			pedGender = 'Female'
		elseif pedGender == 4 then
			pedGender = 'Male'
		else
			pedGender = 'Male'
		end
		
        vehPlate = GetVehicleNumberPlateText(vehicle)
		
		if pedGender == "Male" then
		fname = fmalenamesar[math.random(#fmalenamesar)]
		elseif pedGender == "Female" then
		fname = ffemalenamesar[math.random(#ffemalenamesar)]
		else
		fname = fmalenamesar[math.random(#fmalenamesar)]
		end
		
		sname = snamesar[math.random(#snamesar)]
		dfname = fname
		dsname = sname
		dob_y = math.random(1949, 2002)
		dob_m = math.random(1, 12)
		dob_d = math.random(1, 29)
		regOwner = (fname .. " " .. sname)
		fullDob = (dob_m .. "/" .. dob_d .. "/" .. dob_y)
		driverName = regOwner
		fullDriverDob = fullDob

		--stopped = true
		regYear = math.random(1990, 2018)

		canobserve = math.random(1,20)
		
		observe = "~g~Nothing Of Interest"
		
		breathNumbers = {"~g~0.02","~r~0.13","~o~0.08","~r~0.09","~o~0.03","~r~0.11","~b~0.36","~r~0.10","~r~0.15","~b~0.23","~r~0.17"}
		local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
		local heading = GetEntityHeading(GetPlayerPed(-1))
		
		if canobserve > 15 then
		
		
		observe = observations[math.random(#observations)]
		--observe = "~o~You smell an odor of alchohal"
		
		if observe == "~o~You smell a strong odor of marijuana" then
		
		
		
		searchstuff = weeditem
		scene = true
		
		
		elseif observe == "~o~You smell an odor of alchohal" then
		searchstuff = beeritem
		breathNum = breathNumbers[math.random(#breathNumbers)]
		scene = true
		
		
		elseif observe == "~o~You notice a lot of tools in the back" then
		searchstuff = stolenitem
		scene = true
		
		
		elseif observe == "~o~You notice small bags on the passenger floor" then
		searchstuff = dealeritem
		scene = true
		else
		
		searchstuff = {"None"}
		
		end
		
		
		end
		
	insure = "Valid"	
	
	flags = "~g~NONE"
	InsuredRand = 8 --math.random(8)
	RegisteredRand = math.random(12)
	StolenRand = math.random(1,60)
	chanceFlee = math.random(1,100)
	chanceShootOrFlee = math.random(2,3)
	if StolenRand == 24 then
		chanceFlee = math.random(20,30)
		--flags = "~r~UNINSURED"
		flags = "STOLEN"
		isStolen = true
		
		else
		
		flags = "None"
		
		
	end	
	lostIdChance = math.random(0,100)
	diffname = math.random(0,100)
	if isStolen == true or diffname > 95 then
		dfname = fnamesar[math.random(#fnamesar)]
		dsname = snamesar[math.random(#snamesar)]
		ddob_y = math.random(1949, 1999)
		ddob_m = math.random(1, 12)
		ddob_d = math.random(1, 29)
		driverName = (dfname .. " " .. dsname)
		fullDriverDob = (dob_m .. "/" .. dob_d .. "/" .. dob_y)
		--chanceFlee = math.random(1, 30)
		--chanceShootOrFlee = math.random(2, 5)
		lostIdChance = math.random(80,100)
	end
	
	driverAttitude = math.random(100)
	
	pedFlags = "~g~NONE"
	offRand = math.random(100)
	if  offRand > 80 then
		pedFlags = offense[math.random(#offense)]
		--chanceFlee = math.random(1, 30)
		--chanceShootOrFlee = math.random(2, 5)
	end
	citations = math.random(-5, 6)
	if citations < 0 then
		citations = 0
	end
	

	drugnum_cannabis = math.random(100)
	drugnum_cocaine = math.random(100)
	cannabis = "~g~Negative"
	cocaine = "~g~Negative"
	if drugnum_cannabis > 90 then
		cannabis = "~r~Positive"
		drunk = true
		--chanceFlee = math.random(18, 30)
	end
	if drugnum_cocaine > 90 then
		cocaine = "~r~Positive"
		drunk = true
		--chanceFlee = math.random(20, 30)
	end
	search = false
	searchNum = math.random(100)
	if searchNum >= 90 then
		search = true
		lostIdChance = math.random(70,100)
	end
	
	local randomHuangChance = math.random(40,90)
	if randomHuangChance == 69 then
		dfname = "Fucking"
		dsname = "Huang"
	end
	
	
	driverQuestioned = false
		----------------
	if drunk == true then
		if not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") then
			RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
				while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
					Citizen.Wait(0)
				end
			end
					
		SetPedConfigFlag(stoppedDriver, 100, true)
		SetPedMovementClipset(stoppedDriver, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
	end
	if isStolen == true then
		brokenWindow = math.random(2)
		if brokenWindow == 2 then
			SmashVehicleWindow(stoppedVeh, math.random(3))
		end
	end
	if stoppedVeh == randVeh then
		RemoveBlip(vehBlip)
	end
		----------------
	timeAfterStop = (math.random(5, 30) * 1000)
	timeAfterShoot = (math.random(5, 30) * 1000)
	goingtoshoot = math.random(1,100)
	goingtoshoot = math.random(1,100)
	goingtoshoot = math.random(1,100)
	goingtoshoot = math.random(1,100)
	goingtoshoot = math.random(1,100)
	
	if goingtoshoot == 95 then
	TriggerEvent('carshoot')
	chanceFlee = 0
	end
	if chanceFlee < CFleeMax then
		ALPR(targetVeh)
		TriggerEvent('po:flee')
	elseif chanceFlee == CShoot then
			
				TriggerEvent('po:stop')
				Wait(timeAfterStop)
				while true do
				Wait(10)
				if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
				Wait(5000)
				TriggerEvent('po:shoot')
				break
				
				end
				end
				Wait(timeAfterShoot)
				TriggerEvent('po:flee')
			
	else
	--ShowNotification("Hello")
		TriggerEvent('po:stop')
	end
end)

RegisterCommand("Units", function()
TriggerServerEvent('units')
end)







local sz = nil
RegisterNetEvent('slowtraf')
AddEventHandler('slowtraf', function()

if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic Resumed")
sz = nil
RemoveBlip(tcblip)
else
tcblip = AddBlipForRadius(GetEntityCoords(GetPlayerPed(-1)),40.0)
SetBlipAlpha(tcblip,80)
SetBlipColour(tcblip,5)
sz = AddSpeedZoneForCoord(GetEntityCoords(GetPlayerPed(-1)),40.0,5.0,false)

end

end)
RegisterNetEvent('restraf')
AddEventHandler('restraf', function()
if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic Resumed")
sz = nil
RemoveBlip(tcblip)

end
end)
RegisterNetEvent('stoptraf')
AddEventHandler('stoptraf', function()

if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic Resumed")
sz = nil
RemoveBlip(tcblip)
else
tcblip = AddBlipForRadius(GetEntityCoords(GetPlayerPed(-1)),50.0)
sz = AddSpeedZoneForCoord(GetEntityCoords(GetPlayerPed(-1)),50.0,0.0,false)
SetBlipAlpha(tcblip,80)
SetBlipColour(tcblip,1)

end

end)
AddSpeedZoneForCoord(236.2,6565.1,31.5,40.0,20.0,false)
AddSpeedZoneForCoord(161.2,6544.5,31.8,40.0,10.0,false)
depname = ""
RegisterNetEvent('sahp')
AddEventHandler('sahp', function()
	
	depname = "Highway"
	
	
end)

RegisterNetEvent('bcso')
AddEventHandler('bcso', function()
	
	depname = "Sheriff"
	
	
end)

RegisterNetEvent('pis:ticket')
AddEventHandler('pis:ticket', function()
namee = GetPlayerName(PlayerId())

	local ticket = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"
	ShowNotification("~o~Officer:~w~ " .. "I'm going to be issuing you a citation, just sign on the bottom")
	TriggerServerEvent('AddTicket',namee)
	TriggerServerEvent('AddDepTicket',depname)
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(GetPlayerPed(-1), ticket, 0, 1)
		
		emotePlaying = true
	end
	while true do
		Citizen.Wait(0)
		if IsPedInAnyVehicle(GetPlayerPed(-1)) then
			emotePlaying = false
		end
	end
	if driverAttitude < 50 then
		DriverTicketQuotes = {"Alright..","I understand.","Yeah, thats fine."}
	else
		DriverTicketQuotes = {"Oh come on!","You asshole.","All you cops do is fuck people over.","Go fight real crime."}
	end
		res = DriverTicketQuotes[math.random(#DriverTicketQuotes)]
		res = DriverTicketQuotes[math.random(#DriverTicketQuotes)]
		res = DriverTicketQuotes[math.random(#DriverTicketQuotes)]
		res = DriverTicketQuotes[math.random(#DriverTicketQuotes)]
		
		TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

		TriggerServerEvent('3dme:shareDisplay', res,thing == false)
end)

RegisterNetEvent('pis:getplate')
AddEventHandler('pis:getplate', function()
	vehPlateNum = GetVehicleNumberPlateText(targetVeh)
end)

function GetPedInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 12, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end

RegisterNetEvent('observe')
AddEventHandler('observe', function()

ShowNotification(observe)

end)

RegisterNetEvent('checkid')
AddEventHandler('checkid', function()

local player = GetPlayerPed(-1)

local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver))
	

	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    cuffingPed = GetPedInDirection( playerPos, inFrontOfPlayer )
	
if DoesEntityExist(cuffingPed) or distanceToVeh <= 5 then

pedidd = NetworkGetNetworkIdFromEntity(cuffingPed)
TriggerServerEvent('checkidd', pedidd)

end

end)
currentped = 0


local color = { r = 220, g = 220, b = 220, alpha = 255 } -- Color of the text 
local font = 0 -- Font of the text
local time = 7000 -- Duration of the display of the text : 1000ms = 1sec
local background = {
    enable = false,
    color = { r = 35, g = 35, b = 35, alpha = 200 },
}
local chatMessage = true
local dropShadow = false

-- Don't touch
local nbrDisplaying = 1


RegisterNetEvent('dme:triggerDisplay')
AddEventHandler('dme:triggerDisplay', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    Displayer(source, text, offset)
end)


function Displayer(mePlayer, text, offset)
    local displaying = true

    -- Chat message
    if chatMessage then
        local coordsMe = GetEntityCoords(mePlayer, false)
        local coords = GetEntityCoords(PlayerPedId(), false)
        local dist = Vdist2(coordsMe, coords)
        if dist < 2500 then
            TriggerEvent('chat:addMessage', {
                color = { color.r, color.g, color.b },
                multiline = true,
                args = { text}
            })
        end
    end

    Citizen.CreateThread(function()
        Wait(time)
        displaying = false
    end)
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        print(nbrDisplaying)
        while displaying do
            Wait(0)
            local coordsMe = GetEntityCoords(mePlayer, false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsMe, coords)
            if dist < 2500 then
                DrawText3D(coordsMe['x'], coordsMe['y'], coordsMe['z']+offset, text)
            end
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    local px,py,pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = ((1/dist)*2)*(1/GetGameplayCamFov())*100

    if onScreen then

        -- Formalize the text
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextCentre(true)
        if dropShadow then
            SetTextDropshadow(10, 100, 100, 100, 255)
        end

        -- Calculate width and height
        BeginTextCommandWidth("STRING")
        AddTextComponentString(text)
        local height = GetTextScaleHeight(0.55*scale, font)
        local width = EndTextCommandGetWidth(font)

        -- Diplay the text
        SetTextEntry("STRING")
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)

        if background.enable then
            DrawRect(_x, _y+scale/45, width, height, background.color.r, background.color.g, background.color.b , background.color.alpha)
        end
    end
end


RegisterNetEvent('getinfo')
AddEventHandler('getinfo', function()

local OfficerNormalQuotes = {"Can I see your drivers license and proof of insurance?"}
			ShowNotification("~o~Officer:~w~ " .. OfficerNormalQuotes[math.random(#OfficerNormalQuotes)])
			
			Wait(2000)


liname = tostring(driverName)
lidob = tostring(fullDriverDob)
--ShowNotification("~w~Name: ~g~"..liname)
--ShowNotification("~w~DOB: ~o~"..lidob)
TriggerEvent('GetDL',liname)
--TriggerEvent('showli',liname,lidob)
rresponse = {"Yeah here you go", "Fine", "Alright piggy","Okay","Whatever"}
res = rresponse[math.random(#rresponse)]
res = rresponse[math.random(#rresponse)]
res = rresponse[math.random(#rresponse)]
res = rresponse[math.random(#rresponse)]
TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

TriggerServerEvent('3dme:shareDisplay', res,thing == false)
Wait(1000)
obby = observations[math.random(#observations)]
obby = observations[math.random(#observations)]
obby = observations[math.random(#observations)]
obby = observations[math.random(#observations)]
obby = observations[math.random(#observations)]
ShowNotification("~w~Observations: "..obby)


if seatbeltt > 5 then
	
	ShowNotification("~w~Wearing Seatbelt: ~g~YES")
	else
	ShowNotification("~w~Wearing Seatbelt: ~r~NO")
	end
	
	

end)
cufnet = 0
RegisterNetEvent('selped')
AddEventHandler('selped', function(cuffnet)
cufnet = cuffnet


end)




clockedinn = false



RegisterNetEvent('pis:footid')
AddEventHandler('pis:footid', function()

local player = GetPlayerPed(-1)

local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver))
	

	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    cuffingPed = GetPedInDirection( playerPos, inFrontOfPlayer )
	
	if IsPedInAnyVehicle(stoppedDriver, false) then
	
	cuffingPed = stoppedDriver
	--ShowNotification("Dick")
	
	
	end
	

		
	--ShowNotification(GetPedIndexFromEntityIndex(cuffingPed))
	--NetworkRegisterEntityAsNetworked(cuffingPed)
	currentped = NetworkGetNetworkIdFromEntity(cuffingPed)
	--ShowNotification("Giving ID")
	local player = GetPlayerPed(-1)

local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver))
	

	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    cuffingPed = GetPedInDirection( playerPos, inFrontOfPlayer )
	
if DoesEntityExist(cuffingPed) or distanceToVeh <= 60000 then
	if speech == "Normal" then
			local OfficerNormalQuotes = {"Can i see some ID?", "ID, please."}
			--ShowNotification("~o~Officer:~w~ " .. OfficerNormalQuotes[math.random(#OfficerNormalQuotes)])
		else
			local OfficerAggresiveQuotes = {"Show me your ID.", "Give me your ID.", "Give me your license.", "Show me your info."}
			--ShowNotification("~o~Officer:~w~ " .. OfficerAggresiveQuotes[math.random(#OfficerAggresiveQuotes)])
		end
		Wait(200)
		pedGender = GetPedType(cuffingPed)
		if pedGender == 5 then
			pedGender = 'Female'
		elseif pedGender == 4 then
			pedGender = 'Male'
		else
			pedGender = 'Male'
		end
		
        
		
		if pedGender == "Male" then
		fname = fmalenamesar[math.random(#fmalenamesar)]
		elseif pedGender == "Female" then
		fname = ffemalenamesar[math.random(#ffemalenamesar)]
		else
		fname = fmalenamesar[math.random(#fmalenamesar)]
		end
		
		sname = snamesar[math.random(#snamesar)]
		dfname = fname
		dsname = sname
		dob_y = math.random(1949, 1999)
		dob_m = math.random(1, 12)
		dob_d = math.random(1, 29)
		regOwner = (fname .. " " .. sname)
		fullDob = (dob_y .. "-" .. dob_m .. "-" .. dob_d)
		driverName = regOwner
		fullDriverDob = fullDob
		print(fullDob)
		pname = driverName
		pdob = fullDob
		--paddress = "16 Procopio Drive"
		pgender = pedGender
		prace = "N/A"
		
		validchance = math.random(1,20)
		warnchance = math.random(1,20)
		tickchance = math.random(1,20)
		arrchance = math.random(1,20)
		warchance = math.random(1,30)
		--warnagain = math.random(1,20)
		
		if validchance > 16 then
		
		pdl = "Suspended"
		
		else
		
		pdl = "Valid"
		
		end
		
		inschance = math.random(1,100)
		inschance = math.random(1,100)
		inschance = math.random(1,100)
		if inschance >= 25 then
		insure = "Valid"
		else
		insure = "Expired"
		
		end
		
		phair = "N/A"
		pbuild = "Average"
		pwep = "Obtained"

		TriggerServerEvent('makeped',pname,pdob,pgender,prace,pdl,phair,pbuild,pwep)
		
		Wait(2000)
		
		
		--warnchance = 16
		if warnchance > 10 then
		TriggerServerEvent('warn')
		if warnchance >= 15 then
		
		TriggerServerEvent('warn')
		
		end
		if warnchance >= 18 then 
		
		TriggerServerEvent('warn')
		
		end
		
		end
		--warchance = 30
		if warchance > 25 then
		TriggerServerEvent('war')
		if warchance >= 28 then
		
		TriggerServerEvent('war')
		
		end
		if warchance >= 29 then 
		
		TriggerServerEvent('war')
		
		end
		if warchance >= 30 then 
		
		TriggerServerEvent('war')
		
		end
		
		
		end
		
		if tickchance > 12 then
		TriggerServerEvent('tick')
		if tickchance >= 15 then
		
		TriggerServerEvent('tick')
		
		end
		if tickchance >= 18 then 
		
		TriggerServerEvent('tick')
		
		end
		
		end
		
		if arrchance > 15 then
		TriggerServerEvent('arr')
		if arrchance >= 18 then
		
		TriggerServerEvent('arr')
		
		end
		if arrchance >= 19 then 
		
		TriggerServerEvent('arr')
		
		end
		
		end
		
		TriggerServerEvent('warn')
		
		citations = math.random(0,4)
		warrentchance = math.random(0, 100)
		
		if warrentchance > 85 then
		pedFlags =  "~r~"..flagsWalk[math.random(#flagsWalk)]
		
		else
		
		pedFlags = "~g~None"
		
		end
		
		
		
		

	--flags = "~g~NONE"
	
	--pedFlags =  math.random(1,6).." ~r~Prior DUI's"
			driverQuestioned = true
		Wait(2000)
		--ShowNotification("~y~" .. driverName .. "~w~ | ~b~" .. pedGender .. "~w~ | ~b~" .. fullDriverDob)
		
		--pedid = NetworkGetNetworkIdFromEntity(cuffingPed)
		
	TriggerServerEvent('syncid', driverName, pedGender, fullDriverDob, pedid)
	Wait(1000)
	
	if  IsPedInAnyVehicle(stoppedDriver) and stoppedDriver ~= nil then
	--ShowNotification("~w~Observations: "..observe)
	carModel = GetEntityModel(stoppedVeh)
	carName = GetDisplayNameFromVehicleModel(carModel)
	typee = tostring(carName)
	print(carName)
	platenumm = GetVehicleNumberPlateText(stoppedVeh)
	flagg = flags
	nim = "gay"
	if isStolen == true then
	 nim = "stolen"
	end
	a = a + 1
	vc = GetVehicleCustomPrimaryColour(stoppedVeh)
	vehcol = colorNames[tostring(vc)]
	if vehcol == nil then
	vehcol = "N/A"
	end
	TriggerServerEvent('plate',typee,platenumm,flagg,nim,vehcol)--remove 
	seatbeltt = math.random(1,20)
	
	
	
	
	
	
	
	
	
	
	
	end
	end
	
	



end)
a = 1
RegisterNetEvent('pis:runplate')
AddEventHandler('pis:runplate', function()
	local vehPlateNum = GetVehicleNumberPlateText(targetVeh)
	
	
	
	
	if plate == vehPlateNum or plate == "" then
		TriggerEvent('radio')
		ShowNotification("~b~LSPD Database: ~w~\nRunning ~o~" .. vehPlateNum .. "~w~." )
		Wait(2000)
		ShowNotification("~w~Reg. Owner: ~y~" .. regOwner .. "~w~\nReg. Year: ~y~" .. regYear .. "~w~\nFlags: ~y~" .. flags)
		ShowNotification("Not Random")
	else
		TriggerEvent('radio')
		ShowNotification("~o~LSPD Database: ~w~\nRunning ~o~" .. plate .. "~w~." )
		Wait(2000)
		TriggerEvent('getInfo')
		ShowNotification("~w~Reg. Owner: ~y~" .. rregOwner .. "~w~\nReg. Year: ~y~" .. rregYear .. "~w~\nFlags: ~y~" .. rflags)
		ShowNotification("Random")
	end
end)

RegisterNetEvent('pis:runid')
AddEventHandler('pis:runid', function()
	if name == driverName or name == "" then
		if name == nil and driverQuestioned == false then
			ShowNotification("~r~You have to ask for ~o~driver's ID~r~ first!" )
		else
			TriggerEvent('radio')
			
			ShowNotification("~y~" .. driverName .. "~w~ | ~b~" .. pedGender .. "~w~ | ~b~" .. fullDriverDob .. "\n~w~Citations: ~r~" .. citations)
			ShowNotification("~w~Flags: ~r~" .. pedFlags)
			
		end
	else
		TriggerEvent('getInfo')
		TriggerEvent('radio')
		ShowNotification("~o~LSPD Database: ~w~\nRunning ~o~" .. name .. "~w~." )
		Wait(2000)
		ShowNotification("~y~" .. name .. "~w~ | ~b~" .. rfullDriverDob .. "\n~w~Citations: ~r~" .. rcitations .. "\n~w~Flags: ~r~" .. rpedFlags)
	end
end)
searching = false
searchingg = false
RegisterNetEvent('pis:search')
AddEventHandler('pis:search', function()
local player = GetPlayerPed(-1)
	playerpos = GetEntityCoords(player)
	--CreateIncident(5,playerpos, 0, 3.0, 0);
--RegisterCommand("search", function()
	local playerPos = GetEntityCoords(player)
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    local searchVeh = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	local searchPed = GetPedInDirection(playerPos, inFrontOfPlayer)
	if DoesEntityExist(searchVeh) or DoesEntityExist(searchPed) and searchingg == false then
		searchingg = true
		if DoesEntityExist(searchVeh) and IsEntityAVehicle(searchVeh) then
		
			local trunkpos = GetWorldPositionOfEntityBone(searchVeh, GetEntityBoneIndexByName(searchVeh, "boot"))
			local playerppos = GetEntityCoords(GetPlayerPed(-1), 1)
			local distanceToTrunk = GetDistanceBetweenCoords(trunkpos, playerppos, 1)
			local Leftpos = GetWorldPositionOfEntityBone(searchVeh, GetEntityBoneIndexByName(searchVeh, "seat_dside_f"))
			local distanceToLeft = GetDistanceBetweenCoords(Leftpos, playerppos, 1)
			local Rightpos = GetWorldPositionOfEntityBone(searchVeh, GetEntityBoneIndexByName(searchVeh, "seat_pside_f"))
			local distanceToRight = GetDistanceBetweenCoords(Rightpos, playerppos, 1)
			
			if scene == true then
			item1 = searchstuff[math.random(#searchstuff)]
			item2 = illegalItems[math.random(#illegalItems)]
			item3 = searchstuff[math.random(#searchstuff)]
			item4 = illegalItems[math.random(#illegalItems)]
			item5 = searchstuff[math.random(#searchstuff)]
			item6 = illegalItems[math.random(#illegalItems)]
			else
			item1 = illegalItems[math.random(#illegalItems)]
			item2 = illegalItems[math.random(#illegalItems)]
			item3 = illegalItems[math.random(#illegalItems)]
			item4 = illegalItems[math.random(#illegalItems)]
			item5 = illegalItems[math.random(#illegalItems)]
			item6 = illegalItems[math.random(#illegalItems)]
			
			end
			NetworkRequestControlOfEntity(searchVeh)
			Wait(1000)
			if distanceToTrunk < 1.4 then
			searching = true
			trunk = true
			--exports['progressBars']:startUI(3000, "Searching Trunk")
			SetVehicleDoorOpen(searchVeh, 5, false, false)
			
			TriggerEvent('search')
              Wait(3000)
				ShowNotification("~y~Trunk: ~o~"..item1..", "..item2)
				servtext = GetPlayerName(PlayerId()).." found "..item1..", "..item2.." in the Trunk"
				--TriggerServerEvent('servertext',servtext)
				SetVehicleDoorShut(searchVeh, 5, false)
				searchingg = false
			elseif distanceToLeft < 1.6 then
			searching = true
			--exports['progressBars']:startUI(3000, "Searching Driver Side")
				left = true
				SetVehicleDoorOpen(searchVeh, 0, false, false)
				SetVehicleDoorOpen(searchVeh, 2, false, false)
				TriggerEvent('search')
				Wait(3000)
				SetVehicleDoorShut(searchVeh, 0, false)
				SetVehicleDoorShut(searchVeh, 2, false)
				searchingg = false
				ShowNotification("~y~Driver's Side: ~o~"..item3..", "..item4)
				servtext = GetPlayerName(PlayerId()).." found "..item3..", "..item4.." in the Driver's Side"
				--TriggerServerEvent('servertext',servtext)
			elseif distanceToRight < 1.6 then
			searching = true
				right = true
				--exports['progressBars']:startUI(3000, "Searching Passenger Side")
				SetVehicleDoorOpen(searchVeh, 1, false, false)
				SetVehicleDoorOpen(searchVeh, 3, false, false)
				TriggerEvent('search')
				Wait(3000)
				SetVehicleDoorShut(searchVeh, 1, false)
				SetVehicleDoorShut(searchVeh, 3, false)
				searchingg = false
				ShowNotification("~y~Passenger's Side: ~o~"..item5..", "..item6)
				
				servtext = GetPlayerName(PlayerId()).." found "..item5..", "..item6.." in the Passenger Side"
				--TriggerServerEvent('servertext',servtext)
				else
				searchingg = false
				
			end
		end
		if DoesEntityExist(searchPed) then

		TriggerEvent('search')
		--exports['progressBars']:startUI(2000, "Searching Suspect")
		Wait(2000)
		pse = illegalItems[math.random(#illegalItems)]
		pse2 = illegalItems[math.random(#illegalItems)]
		pse = illegalItems[math.random(#illegalItems)]
		pse2 = illegalItems[math.random(#illegalItems)]
		pse = illegalItems[math.random(#illegalItems)]
		pse2 = illegalItems[math.random(#illegalItems)]
		pse = illegalItems[math.random(#illegalItems)]
		pse2 = illegalItems[math.random(#illegalItems)]
		ShowNotification("~w~Found: ~o~"..pse.. ", "..pse2)
		servtext = GetPlayerName(PlayerId()).." found "..pse.. ", "..pse2" while searching a ped"
			searchingg = false	--TriggerServerEvent('servertext',servtext)
		else
			--ShowNotification("Aim Better")
			
		end
		
		else
		searchingg = false
		ShowNotification("~r~Nothing to search try again")
		
		end
		
	
	
end)

RegisterNetEvent('setcar' )
AddEventHandler('setcar', function() 	
	if carblipp ~= nil then
	RemoveBlip(carblipp)
	
	end
	
	vehcr = GetVehiclePedIsIn(GetPlayerPed(-1), false)
	
	
	
		
			end)
		carsblipp = AddBlipForCoord(462.9,-1014.7,27.68)
		SetBlipSprite(carsblipp, 56)
RegisterNetEvent('nottrue' )
AddEventHandler('nottrue', function() 
		menopen = false		
		SetVehicleDoorShut(vehcr, 5, false)
			
			
			end)
	

	evidenceitems = {"","","","","","","","","",""}

	
--store evidence			
RegisterNetEvent('sev' )
AddEventHandler('sev', function() 
		
					DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
					while (UpdateOnscreenKeyboard() == 0) do
						DisableAllControlActions(0);
						Wait(0);
					end
					if (GetOnscreenKeyboardResult()) then
						result = GetOnscreenKeyboardResult()
						ShowNotification("~y~Evidence Stored")
					ShowNotification("~r~"..result.."~w~ has been store")
						if evidenceitems[1] == "" then
						evidenceitems[1] = result
						ShowNotification("~y~1/5 Stored")
						elseif evidenceitems[2] == "" then
						evidenceitems[2] = result
						ShowNotification("~y~2/5 Stored")
						elseif evidenceitems[3] == "" then
						evidenceitems[3] = result
						ShowNotification("~y~3/5 Stored")
						elseif evidenceitems[4] == "" then
						evidenceitems[4] = result
						ShowNotification("~y~4/5 Stored")
						elseif evidenceitems[5] == "" then
						evidenceitems[5] = result
						ShowNotification("~y~5/5 Stored")
						elseif evidenceitems[6] == "" then
						evidenceitems[6] = result
						ShowNotification("~y~1/5 Stored")
						elseif evidenceitems[7] == "" then
						evidenceitems[7] = result
						elseif evidenceitems[8] == "" then
						evidenceitems[8] = result
						elseif evidenceitems[9] == "" then
						evidenceitems[9] = result
						elseif evidenceitems[10] == "" then
						evidenceitems[10] = result
					end
					
			end
			
			end)	
--view evidence
RegisterNetEvent('vev' )
AddEventHandler('vev', function() 
		
			ShowNotification("~y~Current Evidence")
			ShowNotification("~r~"..evidenceitems[1]..", "..evidenceitems[2]..", "..evidenceitems[3]..", "..evidenceitems[4]..", "..evidenceitems[5])
			
			end)
--clear evidence
RegisterNetEvent('cev' )
AddEventHandler('cev', function() 
			ShowNotification("~y~Current Evidence has been unloaded")
			
			evidenceitems[1] = ""
			evidenceitems[2] = ""
			evidenceitems[3] = ""
			evidenceitems[4] = ""
			evidenceitems[5] = ""
			evidenceitems[6] = ""
			evidenceitems[7] = ""
			evidenceitems[8] = ""
			evidenceitems[9] = ""
			evidenceitems[10] = ""
			
			end)			
			
			

	menopen = false		



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local ped = GetPlayerPed(-1)

		if DoesEntityExist(ped) and IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) and not IsPauseMenuActive() then
			Citizen.Wait(150)
			if DoesEntityExist(ped) and IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) and not IsPauseMenuActive() then
				local veh = GetVehiclePedIsIn(ped, false)
				TaskLeaveVehicle(ped, veh, 256)
			end
		end
	end
end)
RegisterNetEvent('flipit')
AddEventHandler('flipit', function()
local player = GetPlayerPed(-1)
	playerpos = GetEntityCoords(player)
	--CreateIncident(5,playerpos, 0, 3.0, 0);
--RegisterCommand("search", function()
	local playerPos = GetEntityCoords(player)
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    local searchVeh = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	local searchPed = GetPedInDirection(playerPos, inFrontOfPlayer)
	
		
		if DoesEntityExist(searchVeh) and IsEntityAVehicle(searchVeh) then
		NetworkRequestControlOfEntity(searchVeh)
			ShowNotification("~o~ Flipping Vehicle")
			TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_HIKER_STANDING", 0, 1)
			Wait(10000)
			ShowNotification("~g~ Vehicle Flipped")
			ClearPedTasks(GetPlayerPed(-1))
			SetEntityRotation(searchVeh,0,0,0,1,true)
			
			end
		
	
end)


RegisterNetEvent('pis:breath')
AddEventHandler('pis:breath', function()
--RegisterCommand("breath", function()
	local playerPos = GetEntityCoords(player)
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    local breathPed = GetPedInDirection(playerPos, inFrontOfPlayer)
    local breathVeh = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	if DoesEntityExist(breathPed) then
		if breathPed == stoppedDriver then
			breathNum = breathNum
		else
			TriggerEvent('getInfo')
			
		end
		TaskTurnPedToFaceEntity(drugPed, player, 6000)
		TriggerEvent('search')
		ShowNotification("~w~Performing ~b~Breathalyzer~w~ test...")
		Wait(3000)
		ShowNotification("~b~BAC~w~ Level: ~r~" .. breathNum)
	end
	if DoesEntityExist(breathVeh) then
		breathDriver = GetPedInVehicleSeat(breathVeh, -1)
		if breathDriver == stoppedDriver then
			breathNum = breathNum
		else
			TriggerEvent('getInfo')
			breathNum = breathNum
		end
		if DoesEntityExist(breathDriver) then
			ShowNotification("~w~Performing ~b~Breathalyzer~w~ test...")
			TriggerEvent('search')
			Wait(2000)
			ShowNotification("~b~BAC~w~ Level: " .. breathNum)
		end
	end
end)



RegisterNetEvent('pis:drug')
AddEventHandler('pis:drug', function()
--RegisterCommand("drug", function()
--distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver))
	local playerPos = GetEntityCoords(player)
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    local drugPed = GetPedInDirection(playerPos, inFrontOfPlayer)
    local drugVeh = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	if DoesEntityExist(drugPed) then
		if drugPed == stoppedDriver then
			cannabis = cannabis
			cocaine = cocaine
		else
			TriggerEvent('getInfo')
			cannabis = rcannabis
			cocaine = rcocaine
		end
		TaskTurnPedToFaceEntity(drugPed, player, 6000)
		TriggerEvent('search')
		ShowNotification("~w~Performing a ~b~Drugalyzer~w~ test...")
		Wait(3000)
		ShowNotification("~w~Results:\n~b~  Cannabis~w~: " .. cannabis .. "\n~b~  Cocaine~w~: " .. cocaine)
		if not DoesEntityExist(drugVeh) and not DoesEntityExist(drugPed) then
			ShowNotification("~r~You need to be looking at the suspect!")
		end
	end
	if DoesEntityExist(drugVeh) then
		drugDriver = GetPedInVehicleSeat(drugVeh, -1)
		if drugDriver == stoppedDriver then
			cannabis = cannabis
			cocaine = cocaine
		else
			TriggerEvent('getInfo')
			cannabis = rcannabis
			cocaine = rcocaine
		end
		if DoesEntityExist(drugDriver) then
			TriggerEvent('search')
			ShowNotification("~w~Performing a ~b~Drugalyzer~w~ test...")
			Wait(3000)
			ShowNotification("~w~Results:\n~b~  Cannabis~w~: " .. cannabis .. "\n~b~  Cocaine~w~: " .. cocaine)
		end
	elseif not DoesEntityExist(drugVeh) and not DoesEntityExist(drugPed) then
			ShowNotification("~r~You need to be looking at the target!")
	end
end)
hasinfo = false

RegisterNetEvent('pis:askid')
AddEventHandler('pis:askid', function()
	local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(stoppedDriver))
	--ShowNotification(observe)
	if distanceToVeh <= 5 then
	--ShowNotification("dick")
		if speech == "Normal" then
			local OfficerNormalQuotes = {"Can i see some ID?", "ID, please.", "License and registration."}
			ShowNotification("~o~Officer:~w~ " .. OfficerNormalQuotes[math.random(#OfficerNormalQuotes)])
		else
			local OfficerAggresiveQuotes = {"Show me your ID.", "Give me your ID.", "Give me your fucking license.", "Show me your info."}
			ShowNotification("~o~Officer:~w~ " .. OfficerAggresiveQuotes[math.random(#OfficerAggresiveQuotes)])
		end
		lostIdChance = math.random(1,100)
		Wait(2000)
		if lostIdChance > 95 then
			ShowNotification("~b~Driver:~w~ Sorry officer, I don't have it on me...")
		else
			if driverAttitude < 50 then
				driverResponseID = {"Yeah, sure.","Okay, here you go.","There.","Take it, just hurry up please.","*Gives ID*","Okay, here you go.","Sure thing!","Alright, no problem.","Yep, there it is."}
			elseif driverAttitude > 50 and driverAttitude < 80 then
				driverResponseID = {"Take it, just hurry up please.","I really don't have the time for this...","What was I stopped for again?","Sure thing, did I do something wrong?","Is this necessary?"}
			elseif driverAttitude > 80 then
				driverResponseID = {"Is it because I'm black?","Just take it already...","Uhm.. Sure... Here.","But I've done nothing wrong, sir!", "Pig.", "Why dont you go and fight real crime?"}
			end
			--ShowNotification("~b~Driver:~w~ " .. driverResponseID[math.random(#driverResponseID)])
			ShowNotification("~w~Driver's ID: ~y~" .. driverName  .. "~w~\nDOB: ~y~" .. fullDriverDob)
			driverQuestioned = true
		end
	else
		
	end
end)

function GetPlayers()
	local players = {}

	for i = 0, 31 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, i)
		end
	end

	return players
end

RegisterCommand("stats", function(s,args,raw)
--GetVehicleBodyHealth

ShowNotification(GetVehicleBodyHealth(GetVehiclePedIsIn(GetPlayerPed(-1),false)))
end)



RegisterNetEvent('pis:exit')
AddEventHandler('pis:exit', function()


end)

RegisterCommand("hill", function(s,args,raw)
unit = args[1]
TriggerServerEvent('loadvehhh',unit)
--print('nice')

end)

RegisterCommand("store", function(s,args,raw)
netidd = NetworkGetNetworkIdFromEntity(GetVehiclePedIsIn(GetPlayerPed(-1),false))
unittt = args[1]
print(netidd)
TriggerServerEvent('storeit', netidd)
end)

RegisterNetEvent('delit')
AddEventHandler('delit', function()
DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1),false))

end)

Citizen.CreateThread(function()
    while true do
	--vehicleHHash = GetEntityModel(GetVehiclePedIsIn(GetPlayerPed(-1),false))
	--curveh = GetLabelText(GetDisplayNameFromVehicleModel(vehicleHHash))
	if IsPedInAnyVehicle(GetPlayerPed(-1),false) then
	curveh = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(GetPlayerPed(-1),false)))
	vehi = GetVehiclePedIsIn(GetPlayerPed(-1),false)
	
       if curveh == "16fpiu" and GetVehicleLivery(vehi) == 0 then
	   --ShowNotification("1")
	   TriggerServerEvent('odm',1,odist)
	   TriggerServerEvent('dmg',1,vehdmg)
	   elseif curveh == "16fpiu" and GetVehicleLivery(vehi) == 1 then
	  -- ShowNotification("2")
	   TriggerServerEvent('odm',2,odist)
	   TriggerServerEvent('dmg',2,vehdmg)
	   elseif curveh == "16fpiu" and GetVehicleLivery(vehi) == 2 then
	  -- ShowNotification("3")
	   TriggerServerEvent('odm',3,odist)
	   TriggerServerEvent('dmg',3,vehdmg)
	   elseif curveh == "17fpiu" then
	 --  ShowNotification("4")
	   TriggerServerEvent('odm',4,odist)
	   TriggerServerEvent('dmg',4,vehdmg)
	   end
	   odist = 0
	   vehdmg = 0
	   end
        Citizen.Wait(30000)
    end
end)
odist = 0
vehdmg = 0


unitu = 0
RegisterNetEvent('loadit')
AddEventHandler('loadit', function(unitt)
unitu = tonumber(unitt)
print("OG "..unitu)





if unitu == 1 then
vehn = '16fpiu'
vehiclehash = GetHashKey(vehn)
RequestModel(vehiclehash)
while not HasModelLoaded(vehiclehash)do
			RequestModel(vehiclehash)
			
			Wait(1)
		end
pveh = CreateVehicle(vehiclehash, -470.0, 6012.7, 31.2, 337.7, 1, 0)
SetEntityAsMissionEntity(pveh)
SetVehicleExtra(pveh,1,0)
SetVehicleExtra(pveh,2,1)
SetVehicleExtra(pveh,3,1)
SetVehicleExtra(pveh,5,0)
SetVehicleExtra(pveh,8,1)
SetVehicleExtra(pveh,12,0)
SetVehicleLivery(pveh,0)
SetVehicleNumberPlateText(pveh,"GOV 101")
netid = NetworkGetNetworkIdFromEntity(pveh)
TriggerServerEvent('trackveh',netid,unitt)
elseif unitu == 2 then
vehn = '16fpiu'
vehiclehash = GetHashKey(vehn)
RequestModel(vehiclehash)
while not HasModelLoaded(vehiclehash)do
			RequestModel(vehiclehash)
			
			Wait(1)
		end
pveh = CreateVehicle(vehiclehash, -470.0, 6012.7, 31.2, 337.7, 1, 0)
SetEntityAsMissionEntity(pveh)
SetVehicleExtra(pveh,1,0)
SetVehicleExtra(pveh,2,1)
SetVehicleExtra(pveh,3,1)
SetVehicleExtra(pveh,5,0)
SetVehicleExtra(pveh,8,1)
SetVehicleExtra(pveh,12,0)
SetVehicleLivery(pveh,1)
SetVehicleNumberPlateText(pveh,"GOV 102")
netid = NetworkGetNetworkIdFromEntity(pveh)
TriggerServerEvent('trackveh',netid,unitt)
elseif unitu == 3 then
vehn = '16fpiu'
vehiclehash = GetHashKey(vehn)
RequestModel(vehiclehash)
while not HasModelLoaded(vehiclehash)do
			RequestModel(vehiclehash)
			
			Wait(1)
		end
pveh = CreateVehicle(vehiclehash, -470.0, 6012.7, 31.2, 337.7, 1, 0)
SetEntityAsMissionEntity(pveh)
SetVehicleExtra(pveh,1,0)
SetVehicleExtra(pveh,2,1)
SetVehicleExtra(pveh,3,1)
SetVehicleExtra(pveh,5,0)
SetVehicleExtra(pveh,8,1)
SetVehicleExtra(pveh,12,0)
SetVehicleLivery(pveh,2)
SetVehicleNumberPlateText(pveh,"GOV 103")
netid = NetworkGetNetworkIdFromEntity(pveh)
TriggerServerEvent('trackveh',netid,unitt)
elseif unitu == 4 then
vehn = '17fpiu'
print("Spawn 4")
vehiclehash = GetHashKey(vehn)
RequestModel(vehiclehash)
while not HasModelLoaded(vehiclehash)do
			RequestModel(vehiclehash)
			print("GAY")
			Wait(1)
		end
pveh = CreateVehicle(vehiclehash, -470.0, 6012.7, 31.2, 337.7, 1, 0)
SetEntityAsMissionEntity(pveh)
SetVehicleExtra(pveh,1,0)
SetVehicleExtra(pveh,2,1)
SetVehicleExtra(pveh,3,1)
SetVehicleExtra(pveh,5,0)
SetVehicleExtra(pveh,8,1)
SetVehicleExtra(pveh,12,0)
SetVehicleNumberPlateText(pveh,"GOV 104")
netid = NetworkGetNetworkIdFromEntity(pveh)
TriggerServerEvent('trackveh',netid,unitt)

end

end)

RegisterCommand("runid", function(s,args,raw)

		if name == nil and driverQuestioned == false then
			ShowNotification("~r~You have to ask for ~o~driver's ID~r~ first!" )
		else
			TriggerEvent('radio')
			
			ShowNotification("~y~" .. driverName .. "~w~ | ~b~" .. pedGender .. "~w~ | ~b~" .. fullDriverDob .. "\n~w~Citations: ~r~" .. citations)
			ShowNotification("~w~Flags: ~r~" .. pedFlags)
			
		end
	
end)
RegisterNetEvent('pis:exit')
AddEventHandler('pis:exit', function()
	if stopped then
		Citizen.CreateThread(function()
			if speech == "Normal" then
				ShowNotification("~o~Officer:~w~ Can you step out of the car for me, please?")
			else
				ShowNotification("~o~Officer:~w~ Get the fuck out of the car.")
			end
			local resistExitChance = math.random(30)
			if isStolen then
				resistExitChance = math.random(28,29)
			end
			fleeAfterExitChance = math.random(10)
			if resistExitChance == 29 or resistExitChance == 25 or isPedGoingToFlee then
				stopped = false
				mimicking = false
				lockedin = false
				NetworkRequestControlOfEntity(stoppedVeh)
				NetworkRequestControlOfEntity(stoppedDriver)
				SetVehicleEngineOn(stoppedVeh, true, false, true)
				Citizen.Wait(500)
				local driverResponseResist = {"No way!","Fuck off!","Not today!","Shit!","Uhm.. Nope.","Get away from me!","Pig!","No.","Never!","You'll never take me alive, pig!"}
				ShowNotification("~b~Driver:~w~ ".. driverResponseResist[math.random(#driverResponseResist)])
				Citizen.Wait(1000)
				TriggerEvent("po:flee")
			else
				local driverResponseExit = {"What's the problem?","What seems to be the problem, officer?","Yeah, sure.","Okay.","Fine.","What now?","Whats up?","Ummm... O-okay.","This is ridiculous...","I'm kind of in a hurry right now.","Oh what now?!","No problem.","Am I being detained?","Yeah, okay... One moment.","Okay.","Uh huh.","Yep."}
				ShowNotification("~b~Driver:~w~ " .. driverResponseExit[math.random(#driverResponseExit)])
				TaskLeaveAnyVehicle(stoppedDriver)
				local playerGroupId = GetPedGroupIndex(player)
				SetPedAsGroupMember(stoppedDriver, playerGroupId)
			end
		end)
	end
end)

RegisterNetEvent('pis:mount')
AddEventHandler('pis:mount', function()
	if stopped then
		ShowNotification("~o~Officer:~w~ Get back in the car, please.")
		Citizen.CreateThread(function()
		RemovePedFromGroup(stoppedDriver)
		TaskEnterVehicle(stoppedDriver,stoppedVeh,30000,-1,2.0,1,0)
		end)
	end
end)



RegisterNetEvent('pis:release')
AddEventHandler('pis:release', function()
	if stopped then
	
	if speech == "Normal" then
		ShowNotification("~o~Officer:~w~ Alright, you're free to go.")
	else
		ShowNotification("~o~Officer:~w~ Get out of here before i change my mind.")
	end
	if driverAttitude < 50 then
		driverResponseRelease = {"Okay, thanks.","Thanks.","Thank you officer, have a nice day!","Thanks, bye!","I'm free to go? Okay, bye!"}
	elseif driverAttitude > 50 and driverAttitude < 80 then
		driverResponseRelease = {"Alright.","Okay.","Good.","Okay, bye.","Okay, goodbye officer.","Later.","Bye bye.","Until next time."}
	elseif driverAttitude > 80 then
		driverResponseRelease = {"Bye, asshole...","Ugh.. Finally.","Damn cops...","Until next time.","Its about time, pig"}
	end
	Wait(2000)
	res = driverResponseRelease[math.random(#driverResponseRelease)]
	res = driverResponseRelease[math.random(#driverResponseRelease)]
	res = driverResponseRelease[math.random(#driverResponseRelease)]
	res = driverResponseRelease[math.random(#driverResponseRelease)]
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
	TriggerEvent('po:release')
	end
end)

RegisterNetEvent('pis:warn')
AddEventHandler('pis:warn', function()
	if stopped then
		if speech == "Normal" then
			officerSays = {"You can go, but don't do it again.","Don't make me pull you over again!","Have a good day. Be a little more careful next time.","I'll let you off with a warning this time."}
		else
			officerSays = {"Don't do that again.","Don't make me pull you over again!","I'll let you go this time.","I'll let you off with a warning this time."}
		end
		if driverAttitude < 50 then
			driverResponseWarn = {"Thanks.","Thank you officer.","Okay, thank you.","Okay, thank you officer.","Thank you so much!","Alright, thanks!","Yay! Thank you!","I'll be more careful next time!","Sorry about that!"}
		elseif driverAttitude > 50 and driverAttitude < 80 then
			driverResponseWarn = {"Thanks... I guess...","Yeah, whatever.","Finally.","Ugh..",}
		elseif driverAttitude > 80 then
			driverResponseWarn = {"Uh huh, bye.","Yeah, whatever.","Finally.","Ugh..","Prick."}
		end
		res = driverResponseWarn[math.random(#driverResponseWarn)]
		res = driverResponseWarn[math.random(#driverResponseWarn)]
		res = driverResponseWarn[math.random(#driverResponseWarn)]
		res = driverResponseWarn[math.random(#driverResponseWarn)]
		TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

		TriggerServerEvent('3dme:shareDisplay', res,thing == false)
		--ShowNotification("~o~Officer:~w~ " .. officerSays[math.random(#officerSays)])
		Wait(2000)
		--ShowNotification("~b~Driver:~w~ " .. driverResponseWarn[math.random(#driverResponseWarn)])
		Wait(2000)
		TriggerEvent('po:release')
	end
end)

RegisterNetEvent('pis:drunk:q')
AddEventHandler('pis:drunk:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Have you had anything to drink today?")
	Wait(2000)
	if drunk == true then
		driverResponseDrunk = {"*Burp*", "What's a drink?", "No.", "You'll never catch me alive!", "Never", "Nope, i don't drink Ossifer", "Maybe?", "Just a few."}
	else
		driverResponseDrunk = {"No, sir", "I dont drink.", "Nope.", "No.", "Only 1.", "Yes... a water and 2 orange juices."}
	end
	res = driverResponseDrunk[math.random(#driverResponseDrunk)]
	res = driverResponseDrunk[math.random(#driverResponseDrunk)]
	res = driverResponseDrunk[math.random(#driverResponseDrunk)]
	res = driverResponseDrunk[math.random(#driverResponseDrunk)]
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
end)

RegisterNetEvent('pis:locs:q')
AddEventHandler('pis:locs:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Where are you coming from today?")
	
	Wait(1000)
	
	driverResponseLocation = {"From work.", "From home.", "Why does it matter?", "A friends house."}
	
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
end)

RegisterNetEvent('pis:loc:q')
AddEventHandler('pis:loc:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Where are you heading to?")
	
	Wait(1000)
	
	driverResponseLocation2 = {"To work.", "To home.", "No where, just driving around.", "A friends house."}
	
	res = driverResponseLocation2[math.random(#driverResponseLocation2)]
	res = driverResponseLocation2[math.random(#driverResponseLocation2)]
	res = driverResponseLocation2[math.random(#driverResponseLocation2)]
	res = driverResponseLocation2[math.random(#driverResponseLocation2)]
	
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
end)

RegisterNetEvent('pis:stop:q')
AddEventHandler('pis:stop:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Do you know why I stopped you?")
	
	Wait(1000)
	
	driverResponseLocation = {"No officer.", "Speeding?", "I have no clue", "Because you have nothing better to do"}
	
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	res = driverResponseLocation[math.random(#driverResponseLocation)]
	
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
	
end)

RegisterNetEvent('pis:drug:q')
AddEventHandler('pis:drug:q', function()

drugg = math.random(1,100)

	ShowNotification("~o~Officer:~w~ " .. "Have you consumed any drugs recently?")
	Wait(2000)
	if drugg > 85 then
		driverResponseDrug = {"What is life?", "Who is me?", "NoOOOooo.", "Is that a UNICORN?!", "If I've done the what?", "WHAT DRUGS? I DONT KNOW KNOW ANYTHING ABOUT DRUGS.", "What's a drug?"}
	else
		driverResponseDrug = {"No, sir", "I don't do that stuff.", "Nope.", "No.", "Nah"}
	end
	res = driverResponseDrug[math.random(#driverResponseDrug)]
	res = driverResponseDrug[math.random(#driverResponseDrug)]
	res = driverResponseDrug[math.random(#driverResponseDrug)]
	res = driverResponseDrug[math.random(#driverResponseDrug)]
	
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
end)

RegisterNetEvent('pis:illegal:q')
AddEventHandler('pis:illegal:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Is there anything illegal in the vehicle?")
	Wait(2000)
	if theifanswers == true then
	
	driverResponseIllegal = {"I want my lawer.", "I know my rights.", "Why do you care.", "You guys always bugging me.", "I do not need to answer that.", "Maybe? But most probably not.", "I sure hope not."}
	
	else
	
	driverResponseIllegal = {"No, sir", "Not that I know of.", "Nope.", "No.", "Apart from the 13 dead hookers in the back.. No."}
	
	end
	res = driverResponseIllegal[math.random(#driverResponseIllegal)]
	res = driverResponseIllegal[math.random(#driverResponseIllegal)]
	res = driverResponseIllegal[math.random(#driverResponseIllegal)]
	res = driverResponseIllegal[math.random(#driverResponseIllegal)]
	
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
	
end)

RegisterNetEvent('pis:search:q')
AddEventHandler('pis:search:q', function()
	ShowNotification("~o~Officer:~w~ " .. "Would you mind if i search your vehicle?")
	driverResponseSearch = {"I'd prefer you not to...", "I'll have to pass on that","Uuuh... Y- No..","Go ahead. For the record its not my car","No"}
	res = driverResponseSearch[math.random(#driverResponseSearch)]
	res = driverResponseSearch[math.random(#driverResponseSearch)]
	res = driverResponseSearch[math.random(#driverResponseSearch)]
	res = driverResponseSearch[math.random(#driverResponseSearch)]
	
	TriggerEvent('dme:triggerDisplay',res, stoppedDriver)

	TriggerServerEvent('3dme:shareDisplay', res,thing == false)
	
	
end)

RegisterNetEvent('pis:hello')
AddEventHandler('pis:hello', function()
	local player = GetPlayerPed(-1)

	RequestAnimDict("gestures@m@sitting@generic@casual")
	while not HasAnimDictLoaded("gestures@m@sitting@generic@casual") do
				Citizen.Wait(100)
			end
			
	if speech == "Normal" then
		PlayAmbientSpeechWithVoice(stoppedDriver, "KIFFLOM_GREET", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
		TaskPlayAnim(player, "gestures@m@standing@casual", "gesture_hello", 8.0, -8, -1, 49, 0, 0, 0, 0)
		Citizen.CreateThread(function()
			Citizen.Wait(1000)
			ClearPedTasks(player)
		end)
	else
		PlayAmbientSpeechWithVoice(stoppedDriver, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0)
		TaskPlayAnim(player, "gestures@m@standing@casual", "gesture_what_hard", 8.0, -8, -1, 49, 0, 0, 0, 0)
		Citizen.CreateThread(function()
			Citizen.Wait(1000)
			ClearPedTasks(player)
		end)
	end
end)




RegisterCommand("pit", function()
	if stoppedVeh ~= nil then
		Citizen.CreateThread(function()
		if fleeing == true then
			pitting = false
			local vehicleHash = GetEntityModel(stoppedVeh)
			ShowNotification("~b~Officer:~w~ Requesting permission to pit the ~y~"..GetLabelText(GetDisplayNameFromVehicleModel(vehicleHash)).."~w~.")
			pitWait = math.random(3,10)
			Wait(pitWait * 1000)
			ShowNotification("~b~Permission to pit ~g~GRANTED~w~.")
			pitting = true
			while pitting do
				Citizen.Wait(0)
				if GetEntitySpeed(stoppedVeh) < 5 then
				stopped = true
				NetworkRequestControlOfEntity(stoppedVeh)
				NetworkRequestControlOfEntity(stoppedDriver)
				Wait(1000)
				SetVehicleUndriveable(stoppedVeh, true)
				SetVehicleEngineHealth(stoppedVeh, -4000)
				mimicking = false
				lockedin = false
				Wait(1000)
				ShowNotification("~b~Pit ~g~SUCCESSFUL~w~.")
				pitting = false
				end
				end
			end
		end)
	end
end)

RegisterNetEvent('po:release')
AddEventHandler('po:release', function()
	stopped = false
	mimicking = false
	lockedin = false
	NetworkRequestControlOfEntity(stoppedVeh)
				NetworkRequestControlOfEntity(stoppedDriver)
				Wait(1000)
	SetVehicleEngineOn(stoppedVeh, true, false, true)
	--SetVehicleFuelLevel(targetVeh, 100)
	RemovePedFromGroup(stoppedDriver)
	TaskVehicleDriveWander(stoppedDriver, stoppedVeh, 20.0, 786603);
	ShowNotification( "Vehicle released" )
	driverName = nil
	vehPlateNum = nil
	lord = true
end)

RegisterNetEvent('po:lock')
AddEventHandler('po:lock', function()
	lockedin = true
	notification = true
	--targetBlip = AddBlipForEntity(targetVeh)
	ShowHelp()
end)


RegisterNetEvent('po:unlock')
AddEventHandler('po:unlock', function()
	lockedin = false
	notification = false
	RemoveBlip(targetBlip)
end)

RegisterNetEvent('po:stop')
AddEventHandler('po:stop', function()
	fleeing = false
	stopped = true
	mimicking = false
	lockedin = false
	ALPR(targetVeh)
	--ShowNotification("Stopped")
end)

--Pursuit Outcome 1 = When vehicle gets too slow they will make a foot Pursuit
--Pursuit Outcome 2 = When vehicle gets too slow they will surrender
--Pursuit Outcome 3 = When vehicle gets too slow they will keep driving
RegisterNetEvent('po:flee')
AddEventHandler('po:flee', function()
	stopped = false
	mimicking = false
	lockedin = false
	fleeing = true
	--ShowNotification("Runnung")
	if IsVehicleSeatFree(stoppedVeh,-1) then
		TaskShuffleToNextVehicleSeat(stoppedDriver, stoppedVeh)
		Citizen.Wait(2000)
	end
	SetVehicleEngineOn(stoppedVeh, true, false, true)
	SetVehicleCanBeUsedByFleeingPeds(stoppedVeh, true)
	willRam = math.random(5)
	if willRam == 5 then
		TaskVehicleTempAction(stoppedDriver, stoppedVeh, 28, 3000)
	end
	Citizen.Wait(3000)
	
	TaskVehicleTempAction(stoppedDriver, stoppedVeh, 32, 30000)
	--TaskReactAndFleePed(stoppedVeh, player)
	TaskReactAndFleePed(stoppedDriver, player)
	Wait(15000)
	if stoppedVeh ~= nil then
		Citizen.CreateThread(function()
		if fleeing == true then
			pitting = false
			local vehicleHash = GetEntityModel(stoppedVeh)
			--ShowNotification("~b~Officer:~w~ Requesting permission to pit the ~y~"..GetLabelText(GetDisplayNameFromVehicleModel(vehicleHash)).."~w~.")
			pitWait = math.random(10,20)
			Wait(pitWait * 1000)
			--ShowNotification("~b~Permission to pit ~g~GRANTED~w~.")
			pitting = true
			while pitting do
				Citizen.Wait(1000)
				outcome = math.random(1,3)
				if outcome == 2 then
				if GetEntitySpeed(stoppedVeh) < 2 then
				stopped = true
				SetVehicleUndriveable(stoppedVeh, true)
				SetVehicleEngineHealth(stoppedVeh, -4000)
				mimicking = false
				lockedin = false
				
				Wait(1000)
				--ShowNotification("~b~Pit ~g~SUCCESSFUL~w~.")
				pitting = false
				end
				end
				
				if outcome == 1 then 
				if GetEntitySpeed(stoppedVeh) < 2 then
				stopped = true
				SetVehicleUndriveable(stoppedVeh, true)
				SetVehicleEngineHealth(stoppedVeh, -4000)
				mimicking = false
				lockedin = false
				TaskLeaveVehicle(stoppedDriver,stoppedVeh,0)
				Wait(2000)
				TaskSmartFleePed(stoppedDriver,GetPlayerPed(-1),600.0,-1,0,0)
				Wait(1000)
				--ShowNotification("~b~Pit ~g~SUCCESSFUL~w~.")
				pitting = false
				end
				
				end
				
				if outcome == 3 then 
				if GetEntitySpeed(stoppedVeh) < 2 then
				stopped = true
				--SetVehicleUndriveable(stoppedVeh, true)
				--SetVehicleEngineHealth(stoppedVeh, -4000)
				mimicking = false
				lockedin = false
				Wait(1000)
				--ShowNotification("~b~Pit ~g~SUCCESSFUL~w~.")
				pitting = false
				TriggerEvent('po:flee')
				end
				
				end
				
				end
			end
		end)
	end
end)

RegisterNetEvent('po:shoot')
AddEventHandler('po:shoot', function()
	stopped = false
	mimicking = false
	lockedin = false
	local pistol = GetHashKey("WEAPON_COMBATPISTOL")
	TaskLeaveAnyVehicle(stoppedDriver)
	
	Wait (1000)
	
	SetEntityAsMissionEntity(stoppedDriver, true, true)
	GiveWeaponToPed(stoppedDriver, pistol, 1000, 0, 1)
	TaskShootAtEntity(stoppedDriver, player, 100000000, GetHashKey('FIRING_PATTERN_FULL_AUTO'))
end)
RegisterNetEvent('carshoot')
AddEventHandler('carshoot', function()
waiter = math.random(1000,6000)
waiter = math.random(1000,6000)
waiter = math.random(1000,6000)
waiter = math.random(1000,6000)
Wait(waiter)
local pistol = GetHashKey("WEAPON_COMBATPISTOL")
	SetAiWeaponDamageModifier(1.0)
	GiveWeaponToPed(stoppedDriver, pistol, 1000, 0, 1)
	TaskDriveBy(stoppedDriver,GetPlayerPed(-1),0,0.0,0.0,2.0,300.0,40,0,GetHashKey("FIRING_PATTERN_FULL_AUTO"))
	Wait(5000)
	TriggerEvent('po:flee')


end)
RegisterCommand("shit", function()
	local pistol = GetHashKey("WEAPON_COMBATPISTOL")
	SetAiWeaponDamageModifier(1.0)
	GiveWeaponToPed(stoppedDriver, pistol, 1000, 0, 1)
	TaskDriveBy(stoppedDriver,GetPlayerPed(-1),0,0.0,0.0,2.0,300.0,40,0,GetHashKey("FIRING_PATTERN_FULL_AUTO"))
	Wait(5000)
	TriggerEvent('po:flee')
end)
RegisterCommand("shitee", function()
	
	TriggerEvent('po:flee')
end)
RegisterNetEvent('lastalpr')
AddEventHandler('lastalpr', function()
	ALPR(targetVeh)
end)

RegisterCommand("info", function()
	TriggerEvent('getInfo')
	ShowNotification("~w~Reg. Owner: ~y~" .. rregOwner .. "~w~\nReg. Year: ~y~" .. rregYear .. "~w~\nFlags: ~y~" .. rflags)
end)
inscompany = {"Geico","Liberty Mutual","State Farm","Progressive"}
RegisterNetEvent('insurance')
AddEventHandler('insurance', function()
inschance = math.random(1,100)

insurresponse = {"~y~Driver: ~w~I didn't know I needed insurance in this state","~y~Driver: ~w~ I don't have it on me","~y~Driver: ~w~I don't have any","~y~Driver: ~w~Do I need it?"}
if inschance >= 25 then
	ShowNotification("~y~Insurance:~o~ "..inscompany[math.random(#inscompany)])
else
	ShowNotification(insurresponse[math.random(#insurresponse)])
end


end)

RegisterNetEvent('getInfo')
AddEventHandler('getInfo', function()
	rfname = fnamesar[math.random(#fnamesar)]
	rsname = snamesar[math.random(#snamesar)]
	rdob_y = math.random(1949, 1999)
	rdob_m = math.random(1, 12)
	rdob_d = math.random(1, 29)
	rregOwner = (rfname .. " " .. rsname)
	rfullDob = (rdob_m .. "/" .. rdob_d .. "/" .. rdob_y)
	rdriverName = rregOwner
	rfullDriverDob = rfullDob
	rregYear = math.random(1990, 2018)
	
	
	rflags = "~g~NONE"
	rInsuredRand = math.random(8)
	rRegisteredRand = math.random(12)
	rStolenRand = math.random(24)
	rInsuredRand = 8
	if rInsuredRand == 8 then
		rflags = "~r~UNINSURED"
	elseif rRegisteredRand == 12 then
		rflags = "~r~UNREGISTERED"
		rregYear = "~r~UNREGISTERED"
	elseif rStolenRand == 24 then
		rflags = "~r~STOLEN"
		risStolen = true
	end	
							
	if risStolen == true then
		rdfname = fnamesar[math.random(#fnamesar)]
		rdsname = snamesar[math.random(#snamesar)]
		rddob_y = math.random(1949, 1999)
		rddob_m = math.random(1, 12)
		rddob_d = math.random(1, 29)
		rdriverName = (rdfname .. " " .. rdsname)
		rfullDriverDob = (rdob_m .. "/" .. rdob_d .. "/" .. rdob_y)
	end
	
	rpedFlags = "~g~NONE";
	roffRand = math.random(100)
	if  roffRand > 75  then
		rpedFlags = offense[math.random(#offense)] 
	end
	rcitations = math.random(-5, 6)
	if rcitations < 0 then
		rcitations = 0
	end
	
	
	
	rdrugnum_cannabis = math.random(100)
	rdrugnum_cocaine = math.random(100)
	rcannabis = "~g~Negative"
	rcocaine = "~g~Negative"
	if rdrugnum_cannabis > 85 then
		rcannabis = "~r~Positive"
	end
	if rdrugnum_cocaine > 90 then
		rcocaine = "~r~Positive"
	end
	
end)

RegisterNetEvent('getFlags')
AddEventHandler('getFlags', function()
	TriggerEvent('getInfo')
	ShowNotification("~w~Reg. Owner: ~y~" .. rregOwner .. "~w~\nReg. Year: ~y~" .. rregYear .. "~w~\nFlags: ~y~" .. rflags)
end)

RegisterNetEvent('radio')
AddEventHandler('radio', function()
    Citizen.CreateThread(function()
		loadAnimDict("random@arrests")
        TaskPlayAnim(player, "random@arrests", "generic_radio_enter", 1.5, 2.0, -1, 50, 2.0, 0, 0, 0 )
		Citizen.Wait(6000)
		ClearPedTasks(player)
    end)
end)

RegisterNetEvent('search')
AddEventHandler('search', function()
	searching = true
	local search = "PROP_HUMAN_BUM_BIN"
	if not IsPedInAnyVehicle(player)  then
		TaskStartScenarioInPlace(player, search, 0, 1)
		Wait(3000)
		ClearPedTasks(player)
		searching = false
	end
end)		

RegisterNetEvent('anim:mimic')
AddEventHandler('anim:mimic', function()
end)

RegisterNetEvent('ticket')
AddEventHandler('ticket', function()
	local ticket = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(GetPlayerPed(-1),"CODE_HUMAN_MEDIC_TIME_OF_DEATH", 0, 1)
		emotePlaying = true
	end
	namee = GetPlayerName(PlayerId())
	TriggerServerEvent('AddTicket',namee)
	TriggerServerEvent('DiscordBot:playerDied', GetPlayerName(GetPlayerId()) .. ' Just wrote a ticket!', "")
end)

Citizen.CreateThread(function()
    while true do
        if emotePlaying then
            if (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35)) then
                cancelEmote() -- Cancels the emote if the player is moving
            end
        end
        Citizen.Wait(0)
    end
end)




-- F U N C T I O N S --
	
	-- Gets a vehicle in a certain direction
	-- Credit to Konijima
function GetVehicleInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, player, 0 )
    local _, _, _, _, targetVeh = GetRaycastResult( rayHandle )
    return targetVeh
end

	-- Shows a notification on the player's screen 
function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

function ShowHelp()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Activate your ~r~stage 3 lights~w~ to stop the vehicle!")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end

function ShowAnother()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Press Shift and E to talk to driver")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end

function ShowMenuHelp()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Press ~b~G ~w~to talk to the driver.")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (10000)
	notification = false
end

function ALPR(vehicle)
	local vehicleHash = GetEntityModel(vehicle)
	local numPlate = GetVehicleNumberPlateText(vehicle)
		
	--ShowNotification("Getting vehicle information...")
	Wait(2000)
	--ShowNotification("~b~LSPD Database:~w~\nPlate: ~y~" .. numPlate .. "~w~\nModel: ~y~"..GetLabelText(GetDisplayNameFromVehicleModel(vehicleHash)) .. "~w~\nVehicle class: ~y~" .. carType[GetVehicleClass(vehicle)])
end

local emotePlaying = IsPedActiveInScenario(GetPlayerPed(-1))
local emotePlaying = false

function cancelEmote() -- Cancels the emote
    ClearPedTasks(GetPlayerPed(-1))
    emotePlaying = false
end	


--[ Written By Monty Piper ]--

local hwaycop = GetHashKey("s_m_y_hwaycop_01")
local cop = GetHashKey("s_m_y_cop_01")
local sheriff = GetHashKey("s_m_y_sheriff_01")
local pilot = GetHashKey("s_m_m_pilot_02")
local fireman = GetHashKey("s_m_y_fireman_01")
local medic = GetHashKey("s_m_m_paramedic_01")


hat = false

  RegisterNetEvent( 'haton' )
AddEventHandler( 'haton', function()
	if ahat == true then
	ahat = false
	else
	ahat = true
	end
	
end)

sg = false

  RegisterNetEvent( 'sung' )
AddEventHandler( 'sung', function()
	sg = not sg
	if(GetEntityModel(GetPlayerPed(-1)) == hwaycop) then
		if sg then
			SetPedPropIndex(GetPlayerPed(-1), 1, 0, 1, 2)
		else
			ClearPedProp(GetPlayerPed(-1), 1)
		end
	elseif(GetEntityModel(GetPlayerPed(-1)) == cop) then
		if sg then
			SetPedPropIndex(GetPlayerPed(-1), 1, 0, 0, 2)
		else
			ClearPedProp(GetPlayerPed(-1), 1)
		end
	elseif(GetEntityModel(GetPlayerPed(-1)) == sheriff) then
		if sg then
			SetPedPropIndex(GetPlayerPed(-1), 1, 1, 0, 2)
		else
			ClearPedProp(GetPlayerPed(-1), 1)
		end
	elseif(GetEntityModel(GetPlayerPed(-1)) == pilot) then
		if sg then
			SetPedPropIndex(GetPlayerPed(-1), 1, 0, 0, 2)
		else
			ClearPedProp(GetPlayerPed(-1), 1)
		end
	elseif(GetEntityModel(GetPlayerPed(-1)) == medic) then
		if sg then
			SetPedPropIndex(GetPlayerPed(-1), 1, 0, 0, 2)
		else
			ClearPedProp(GetPlayerPed(-1), 1)
		end
	end
end)


Citizen.CreateThread(function()
	while true do
		local coordA = GetEntityCoords(GetPlayerPed(-1), 1)
		local coordB = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 1.0, 0.0)
		local vehicle = getVehicleInDirection(coordA, coordB)
		
		Citizen.Wait(200)
	end
end)


function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local _, _, _, _, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

	

function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
		RequestAnimDict( dict )
		Citizen.Wait( 0 )
	end
end