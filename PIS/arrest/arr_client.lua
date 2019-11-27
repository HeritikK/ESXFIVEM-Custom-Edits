-- W A R N I N G ! --
--THIS SCRIPT OFTEN DOESN'T WORK WHEN YOU HAVE MORE THAN 1 PERSON ON THE SERVER (probably something to do with player's relationship group... and most of the stuff being clientside)

-- common issues (most of them to do with the game not properly syncing the script for all of the players)
--   * the script glitches out in unpredictable ways
--   * /book won't work sometimes
--   * some animations (walking with cuffs) may not be seen by other players
--   * peds making surprised gestures while being detained
--   * peds deciding to just run away from you
--   * (rare, when spamming e) peds will run away in fear, you won't be able to arrest them again.
--   * peds will enter the second seat (instead of sitting in the backseat)
--   * /secure freezes players inside the vehicle (can be fixed, just need to check if the ped is a player or not)




--DECORS-----------------------------------------------------------------------------------------------------
DecorRegister("Intent",3)
DecorRegister("NameId",3)
DecorRegister("IsSelected",3)




local fnamesar = {"Tod","Bud","Colin","Nova","Boyd","Vivienne","John","Donald","Mike","Sally","George","Sam","Reuben","Wade","Arthur","Raiden","Camren","Trystan","Hugo","Samir","Ayaan","Curtis","Philip","Elijah","Jeffrey","Frank","Cedric","Payton","Ross","Marshall","Antwan","Jamison","Samuel","Abram","Camron","Luis","Morgan","Ronin","Marcus","Niko","Armani","Jeramiah","Justin","Uriel","Jessie","Alexzander","Tony","Remington","George","London","Brent","Lewis","Edward","Davon","Rigoberto","Denzel","Jamal","Demarion","Reilly","Atticus","Micheal","Clay","Soren","Isiah","Harry","Aryan","Asa","Glenn","Kasen","Marvin","Jeremy","Yusuf","Luciano","Sheldon","Marc","Brody","Coleman","Damari","Darien","Layton","Rafael","Gregory","Luka","Keagan","Zack","Jan","Layne","Keegan","Augustus","Clinton","Jair","Jairo","Chaim","Landyn","Louis","Kolby","Maximus","Hector","Javier","Jorge","Finn","Demetrius","Terrence","Davion","Jordon","Cael","Bradley","Jayvon","Marlon","Axel","Santiago","Kade","Jeffery","Milo","Alijah","Addison","Jasper","Winston","Kolton","Brady","Bailey","Damion","Rocco","Isaiah","Nathanial","Hunter","Cory","Maurice","Jean","Brogan","Benjamin","Raul","Moses","Kaden","Blaze","Trevin","Gunner","Lamont","Jared","Ben","Abel","Dax","Tripp","Isaias","Joel","Deon","Oswaldo","Zain","Korbin","Aaron","Allan","Chad","Tucker","Mario","Isai","Conor","Leonard","Owen","Cyrus","Deegan","Jaron","Pablo","Cristopher","Javion","Leonardo","Gordon","Orlando","William","Gavin","Rishi","Arnav","Jermaine","Bo","Tommy","Issac","Judah","Lincoln","Paxton","Collin","Gerald","King","Oscar","Aron","Blake","Victor","Adriel","Jovanny","Camden","Frederick","Koen","Kaleb","Nikhil","Colby","Emery","Easton","Zion","Callum","Greyson","Ezequiel","Rashad","Pranav","Alex","Jonathon","Urijah","Cristofer","Case","Jaden","Desmond","Colin","Weston","Camryn","Jayvion","Mason","Owen","Ray","Callum","Scotty","Fucking","Cock","Bay","Jeff","Paul","Kanersps","Adam","Jimmy","Garry","Bobby","Arnold","Dick","Maia","Ebonie","Anne","Elijah","Kathryne","Sheryl","Tomika","Stefanie","Laci","Josefina","Clara","Amy","Mary","Emillia","Emily","June","Garry","Bob","Jessy","Bailey","Hadley","Kendall","Laci","Lizeth","Ashlynn","Lesly","Lorelei","Meredith","Tanya","Raina","Cynthia","Eileen","Evie","Lyla","Sonia","Angel","Alexis","Anabella","Layla","Claire","Shania","Aniya","Frida","Celeste","Lindsey","Samara","Tamia","Luz","Lola","Ryann","Kenya","Cassidy","Clare","Litzy","Ashlyn","Cheyenne","Ava","Maggie","Kiera","Rayne","Janelle","Reagan","Martha","Adeline","Giovanna","Elena","June","Annabella","Abril","Karlie","Deja","Belinda","Heather","Lea","Myla","Rhianna","Amirah","Selena","Nina","Amaris","Serenity","Riya","Payton","Cheyanne","Sadie","Dakota","Alison","Mikaela","Jaelyn","Evelyn","Joanna","Jaslene","Zoie","Paola","Ali","Marlee","Charlee","Alma","Kamryn","Avery","Aisha","Rachel","Mckenzie","Alissa","Makenzie","Brenna","Virginia","Rosemary","Wendy","Natasha","Yamilet","Michelle","Maribel","Elyse","Julissa","Lily","Susan","Hailey","Liberty","Tianna","Bella","Roselyn","Naomi","Kinsley","Cameron","Aracely","Averi","Eva","Malia","Sara","Danica","Morgan","Shannon","Raegan","Lyric","Johanna","Melany","Jaqueline","Kennedi","Amy","Chanel","Kaliyah","Zoe","Kaylyn","Chaya","Julie","Alivia","Karissa","Eliza","Kiana","Thalia","Sarahi","Samantha","Noelle","Vivian","Desirae","Dayanara","Aryanna","Teresa","Jordan","Camryn","Ariella","Chana","Sidney","Hana","Princess","Kayley","Jaida","April","Genevieve","Kathryn","Violet","Marlie","Iliana","Kallie","Isla","Cecilia","Stacy","Phoenix","Eliana","Mylie","Amani","Sanaa","Giuliana","Maleah","Amanda","Norah","Gwendolyn","Bailee","Brooklyn","Leia","Amari","Margaret","Kaia","Breanna","Rose","Leslie","Aylin","Celia","Alia","Kasey","Azul","Halle","Tara","Miracle","Shirley","Katrina","Shiloh","Catherine","Addison","Laurel","Jaylah","Heidy","Anabel","Madalyn","Shelby","Saige","Carleigh","Kaelyn","Mommy","Kitchen","Woman","Emma"}
local snamesar = {"Hansen","Malone","Barnett","Cooper","Sosa","Castaneda","Quinn","Stanton","Orozco","Salazar","Gonzalez","Hull","Colon","Vincent","Poole","Good","Serrano","Lozano","Hancock","Travis","Ortega","Mcguire","Carney","Velasquez","Moore","Rosales","Cross","Mullins","Hahn","Carlson","Chase","Glass","Walter","Holmes","Rivera","Medina","Perez","Carson","King","Lloyd","Christian","Franklin","Bautista","Ball","Bowers","Sampson","Harmon","Hutchinson","Rogers","Knight","Sullivan","Christensen","Lindsey","Cantrell","Rush","Reid","Hawkins","Ferrell","Li","Sheppard","Clay","Riley","Blevins","Forbes","Raymond","Hodge","Austin","Skinner","Walsh","Bridges","Jacobson","Wilson","Pacheco","Moss","Randolph","Hoffman","Gilmore","Bryan","Deleon","Oneal","Church","Curtis","Santana","Bruce","Woods","Klein","Vaughan","Solomon","Maxwell","Downs","Strong","Mcmahon","Suarez","Mccall","Ewing","Barron","Zamora","Webster","Hinton","Vargas","Robbins","Roman","Reeves","Douglas","Reilly","Blair","Glover","Arnold","Tran","Maynard","Cuevas","Todd","Kramer","Yoder","Conway","Owens","Wu","Fritz","Hoover","Vance","Green","Frederick","Vega","Osborn","Buck","Pratt","Trujillo","Cortez","Mcclain","Richmond","Krueger","Mayo","Mahoney","Hartman","Bowman","Arias","Boyle","Simmons","Bush","Davenport","Roberts","Ochoa","Chang","Luna","Villegas","Rios","Dodson","Johnston","Shah","Guerrero","Stuart","Rocha","Landry","Estes","Fleming","Davila","Merritt","Love","Petersen","Callahan","Robertson","Hood","Frank","Duke","Lawson","Stevens","Whitney","Benitez","Payne","Gibson","Castillo","Greer","Henson","Dougherty","Nunez","Wells","Wallace","Byrd","Doyle","Goodman","Webb","Ortiz","Houston","Sanchez","Duarte","Mccoy","Lam","Monroe","Carroll","Nash","Parks","Peters","Sutton","Atkins","Bonilla","Mcclure","Leonard","Murphy","Davidson","Harrington","Whitehead","Le","Vazquez","Tucker","Gallagher","Wiley","Larson","Mcconnell","Chandler","Pierce","Salas","Day","Taylor","Shields","Mcdonald","Fowler","Neal","Wall","Murillo","Hopkins","Macdonald","Banks","Acevedo","Bauer","Weeks","Summers","Saunders","Stevenson","Newton","Kent","Sellers","Barber","Rubio","Mejia","Fischer","Thomas","Mccarty","Carter","Duran","Short","Watkins","Meyers","Kirby","Velazquez","Bright","Rivas","Mcneil","Caldwell","Santiago","Zavala","Perkins","Khan","Miller","Ward","Small","Gilbert","Nixon","Cochran","Blackburn","Gates","Stafford","Stein","Wilcox","Morgan","Lyons","Lynn","Cannon","Yates","Wise","Olsen","White","Holt","Riggs","Bond","Heath","Schmitt","Willis","Turner","Ibarra","Burns","Anthony","Weber","Daniels","Higgins","Mayer","Burch","Garner","Trevino","Avila","Woodward","Bray","Fuentes","Terrell","Porter","Mathis","Garrison","Stokes","Marsh","Bailey","Allen","Marshall","Richard","Huffman","Roach","Murray","Preston","Lucas","Mccarthy","Francis","Esparza","Powell","Dunlap","Norman","Crosby","Holland","Brandt","Finley","Delacruz","Romero","Ayala","Pollard","Madden","Irwin","Armstrong","Frye","Mora","Osborne","Wood","Gibbs","Glenn","Hunt","Winters","Bell","Morris","Key","Wolf","Garrett","Rodriguez","Pope","Fisher","Mcintyre","Tyler","Rodgers","Hill","Macias","Brennan","Hines","Conley","Jennings","Ayers","Hernandez","Cole","Beck","Odonnell","Zhang","Hunter","Waller","Cowan","Valentine","Underwood","Donaldson","Bolton","Steele","Wheeler","George","Hester","Richards","Sandoval","Grant","Franco","Everett","Gay","Knox","Sexton","Coleman","Gregory","Young","Pineda","Howard","Combs","Villa","Padilla","Huerta","Hughes","Werner","Kim","Barajas","Pearson","Chan","Robles","Carey","Joseph","Patrick","Lewis","Cantu","Donovan","Rose","Harvey","Strickland","Hammond","Fox","Wiley","Terry","Mendoza","Maldonado","Garrison","Waters","Weber","Pena","Macdonald","Allison","Thompson","Ramsey","Mosley","Hester","Bowman","Blake","Caldwell","Villegas","Case","Moran","Welch","Ortiz","Pham","Mcclure","Reid","Orr","Poole","Rivera","King","Powell","Burns","Salas","Velazquez","Huang","Collins","Pollard","Alvarado","Campbell","Merritt","May","Ford","Wilkins","Durham","Olsen","Barnett","Mahoney","Norman","Nash","Davis","Morton","Woodman","Markozov","Thomas","Hughes","Cena","Gobbler"}

local fmalenamesar = {"Tod","Bud","Colin","Nova","Boyd","Vivienne","John","Donald","Mike","Sally","George","Sam","Reuben","Wade","Arthur","Raiden","Camren","Trystan","Hugo","Samir","Ayaan","Curtis","Philip","Elijah","Jeffrey","Frank","Cedric","Payton","Ross","Marshall","Antwan","Jamison","Samuel","Abram","Camron","Luis","Morgan","Ronin","Marcus","Niko","Armani","Jeramiah","Justin","Uriel","Jessie","Alexzander","Tony","Remington","George","London","Brent","Lewis","Edward","Davon","Rigoberto","Denzel","Jamal","Demarion","Reilly","Atticus","Micheal","Clay","Soren","Isiah","Harry","Aryan","Asa","Glenn","Kasen","Marvin","Jeremy","Yusuf","Luciano","Sheldon","Marc","Brody","Coleman","Damari","Darien","Layton","Rafael","Gregory","Luka","Keagan","Zack","Jan","Layne","Keegan","Augustus","Clinton","Jair","Jairo","Chaim","Landyn","Louis","Kolby","Maximus","Hector","Javier","Jorge","Finn","Demetrius","Terrence","Davion","Jordon","Cael","Bradley","Jayvon","Marlon","Axel","Santiago","Kade","Jeffery","Milo","Alijah","Addison","Jasper","Winston","Kolton","Brady","Bailey","Damion","Rocco","Isaiah","Nathanial","Hunter","Cory","Maurice","Jean","Brogan","Benjamin","Raul","Moses","Kaden","Blaze","Trevin","Gunner","Lamont","Jared","Ben","Abel","Dax","Tripp","Isaias","Joel","Deon","Oswaldo","Zain","Korbin","Aaron","Allan","Chad","Tucker","Mario","Isai","Conor","Leonard","Owen","Cyrus","Deegan","Jaron","Pablo","Cristopher","Javion","Leonardo","Gordon","Orlando","William","Gavin","Rishi","Arnav","Jermaine","Bo","Tommy","Issac","Judah","Lincoln","Paxton","Collin","Gerald","King","Oscar","Aron","Blake","Victor","Adriel","Jovanny","Camden","Frederick","Koen","Kaleb","Nikhil","Colby","Emery","Easton","Zion","Callum","Greyson","Ezequiel","Rashad","Pranav","Alex","Jonathon","Urijah","Cristofer","Case","Jaden","Desmond","Colin","Weston","Camryn","Jayvion","Mason","Owen","Ray","Callum","Scotty","Fucking","Cock","Bay","Jeff","Paul","Kanersps","Adam","Jimmy","Garry","Bobby","Arnold","Dick"}
local ffemalenamesar = {"Maia","Ebonie","Anne","Elijah","Kathryne","Sheryl","Tomika","Stefanie","Laci","Josefina","Clara","Amy","Mary","Emillia","Emily","June","Garry","Bob","Jessy","Bailey","Hadley","Kendall","Laci","Lizeth","Ashlynn","Lesly","Lorelei","Meredith","Tanya","Raina","Cynthia","Eileen","Evie","Lyla","Sonia","Angel","Alexis","Anabella","Layla","Claire","Shania","Aniya","Frida","Celeste","Lindsey","Samara","Tamia","Luz","Lola","Ryann","Kenya","Cassidy","Clare","Litzy","Ashlyn","Cheyenne","Ava","Maggie","Kiera","Rayne","Janelle","Reagan","Martha","Adeline","Giovanna","Elena","June","Annabella","Abril","Karlie","Deja","Belinda","Heather","Lea","Myla","Rhianna","Amirah","Selena","Nina","Amaris","Serenity","Riya","Payton","Cheyanne","Sadie","Dakota","Alison","Mikaela","Jaelyn","Evelyn","Joanna","Jaslene","Zoie","Paola","Ali","Marlee","Charlee","Alma","Kamryn","Avery","Aisha","Rachel","Mckenzie","Alissa","Makenzie","Brenna","Virginia","Rosemary","Wendy","Natasha","Yamilet","Michelle","Maribel","Elyse","Julissa","Lily","Susan","Hailey","Liberty","Tianna","Bella","Roselyn","Naomi","Kinsley","Cameron","Aracely","Averi","Eva","Malia","Sara","Danica","Morgan","Shannon","Raegan","Lyric","Johanna","Melany","Jaqueline","Kennedi","Amy","Chanel","Kaliyah","Zoe","Kaylyn","Chaya","Julie","Alivia","Karissa","Eliza","Kiana","Thalia","Sarahi","Samantha","Noelle","Vivian","Desirae","Dayanara","Aryanna","Teresa","Jordan","Camryn","Ariella","Chana","Sidney","Hana","Princess","Kayley","Jaida","April","Genevieve","Kathryn","Violet","Marlie","Iliana","Kallie","Isla","Cecilia","Stacy","Phoenix","Eliana","Mylie","Amani","Sanaa","Giuliana","Maleah","Amanda","Norah","Gwendolyn","Bailee","Brooklyn","Leia","Amari","Margaret","Kaia","Breanna","Rose","Leslie","Aylin","Celia","Alia","Kasey","Azul","Halle","Tara","Miracle","Shirley","Katrina","Shiloh","Catherine","Addison","Laurel","Jaylah","Heidy","Anabel","Madalyn","Shelby","Saige","Carleigh","Kaelyn","Mommy","Kitchen","Woman","Emma"}
local flagsWalk = {"Failure To Appear","Wanted For Murder","None","Sex Offender","Prostitution","Drug Abuse","Domestic Violence","Child Abuse", "Grand Theft Auto", "Gas Station Robery"}









local spawnDistance = 50 	--	Default 50
							---								---
local drivingStyle = 1074528293 --	**c  - "Normal"**
								--	**1074528293 - "Rushed"**
								--	**2883621 - "Ignore Lights" - Default**
								--	**5 - "Sometimes Overtake Traffic"**
								--	**Customize Driving Style: https://vespura.com/drivingstyle/

local distanceToCheck = 5.0

enroute = false
onscene = false
cleartask = false

isPedCuffed = false
backSeatOnly = true

--Zones
local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" }

AddRelationshipGroup("arrested")
AddRelationshipGroup("hostile")

SetRelationshipBetweenGroups(5, GetHashKey("hostile"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("hostile"))

SetRelationshipBetweenGroups(2, GetHashKey("arrested"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(2, GetHashKey("PLAYER"), GetHashKey("arrested"))

-- Animation Dictionary
function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Wait( 0 )
    end
end





currentmoney = 0



local cord = {
    x=1.160,
    y=0.500
}


		




--On Key Press
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		if IsControlJustPressed(0, CTakeDown) then --Press X or E
            player = GetPlayerPed(-1)
			_ , target = GetEntityPlayerIsFreeAimingAt(PlayerId()) -- get the ped you're aiming at
			if IsPedBeingStunned(target,0) then
			DecorSetInt(target,"Intent",math.random(1,2))
			
			else
			
			if GetEntityType(target) == 1 and GetPedType(target) ~= 28  then
					
					Wait(3000)
			distanceToTarget = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(target)) -- get the distance between peds.
				if distanceToTarget <= 15 then
					
					TriggerEvent("arresting")
					if DecorExistOn(target) then
					DecorSetInt(target,"Intent",1)
					else
					DecorSetInt(target,"Intent",1)
					end
					RequestAnimDict("mp_arresting") --Cuff Animation
					loadAnimDict( "random@arrests" ) --Kneeling Animations
					loadAnimDict( "random@arrests@busted" )
					
					if IsPedInAnyVehicle(target) then -- if the target ped is in a vehicle...
						SetBlockingOfNonTemporaryEvents(target, true)
						if target == stoppedDriver then -- and if the ped is a driver during a pullover...
							ShowNotification("~o~Officer:~w~ Out of the vehicle! Now!")
							local resistExitChance = math.random(-5,30) -- random chance of the guy resisting.
							if drunk then
								resistExitChance = math.random(15,29)
							end
							if isStolen then
								resistExitChance = math.random(25,29)
							end
							if resistExitChance > 25 then
								stopped = false
								mimicking = false
								lockedin = false
								SetVehicleEngineOn(stoppedVeh, true, false, true)
								Citizen.Wait(500)
								local driverResponseResist = {"No way!","Fuck off!","Not today!","Shit!","Uhm.. Nope.","Get away from me!","Pig!","No.","Never!"}
								ShowNotification("~b~Driver:~w~ ".. driverResponseResist[math.random(#driverResponseResist)])
								Citizen.Wait(5000)
								TriggerEvent("po:flee")
							else
								while IsPedInAnyVehicle(target) do
									TaskLeaveAnyVehicle(target)
									Citizen.Wait(100)
								end
								TriggerEvent("arresting")
							end
						else -- .. but if it's just a random guy driving by (not in a pullover)
							while IsPedInAnyVehicle(target) do
								TaskLeaveAnyVehicle(target) -- make him exit the vehicle.
								Citizen.Wait(100)
							end
							TriggerEvent("arresting")
						end
					elseif target == sus1ab or target == sus2ab then --if the target is part of a callout then do nothing.
					-- if the guy is currently doing animations - do nothing.
					elseif IsEntityPlayingAnim(target, "random@arrests", "idle_2_hands_up", 3) or IsEntityPlayingAnim(target, "random@arrests", "kneeling_arrest_idle", 3) or IsEntityPlayingAnim(target, "random@arrests@busted", "enter", 3) or IsEntityPlayingAnim(target, "random@arrests@busted", "exit", 3) or IsEntityPlayingAnim(target, "random@arrests", "kneeling_arrest_get_up", 3) then
					-- if the guy is kneeling, ready to be handcuffed, free him.
					elseif IsEntityPlayingAnim(target, "random@arrests@busted", "idle_a", 3) then

						TriggerEvent("freeing")

					else -- otherwise, make him kneel and put his hands up.
						
						
						
				if IsPedArmed(target,7) == 1 then
				--ShowNotification("Armed")
				sur = math.random(1,100)
				sur = math.random(1,100)
				sur = math.random(1,100)
				sur = math.random(1,100)
				if sur > 20 then
				
				else
				TriggerEvent("arresting")
				end
				end
				
						

					end
				end
			elseif true then
			

			end
			end
		end
	end
end)

RegisterNetEvent('pis:arr')
AddEventHandler('pis:arr', function()
	local spawnDistance = math.random(spawnDistance, spawnDistance + 25)
	local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)
    local pmodels = {"s_m_y_sheriff_01"}
    
    local driver = GetHashKey(pmodels[math.random(#pmodels)])
    local vehiclehash = GetHashKey("pd1")
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, distanceToCheck, 0.0)
    RequestModel(vehiclehash)
    RequestModel(driver)

		while not HasModelLoaded(vehiclehash) and RequestModel(driver) do
			RequestModel(vehiclehash)
			RequestModel(driver)
			Citizen.Wait(0)
		end
		
		if DoesEntityExist(vehicle) then
			SetEntityAsMissionEntity(driver)
			SetEntityAsMissionEntity(vehicle)
			
			DeleteEntity(driver)
			DeleteEntity(vehicle)
			
			while DoesEntityExist(driver) do
				Wait(0)
				DeleteEntity(driver)
			end
		end
	
		local targetPed = dick
	
		if DoesEntityExist(targetPed) then
			TriggerEvent('radio')
			
			NetworkRequestControlOfEntity(targetPed)
			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
			local heading, vector = GetNthClosestVehicleNode(x, y, z, spawnDistance, 0, 0, 0)
			local sX, sY, sZ = table.unpack(vector)	
			vehicle = CreateVehicle(vehiclehash, sX, sY, sZ, heading, true, true)
			Wait(1000)
			
			
			ShowNotification('~o~Officer: ~w~Dispatch, requesting PT to my 20.')
			
			Wait(5000)

			local driver = CreatePedInsideVehicle(vehicle, 26, driver, -1, true, false)
			local pedPos = GetEntityCoords(targetPed)
			TaskVehicleDriveToCoord(driver, vehicle, pedPos.x, pedPos.y, pedPos.z, 17.0, 0, vehiclehash, drivingStyle, 1.0, true)
			SetVehicleFixed(vehicle)
			SetVehicleOnGroundProperly(vehicle)
			
			SetVehicleExtra(vehicle,1,false)
			SetVehicleExtra(vehicle,2,false)
			SetVehicleExtra(vehicle,3,false)
			SetVehicleExtra(vehicle,4,false)
			SetVehicleExtra(vehicle,5,true)
			SetVehicleExtra(vehicle,6,false)
			SetVehicleExtra(vehicle,7,false)
			SetVehicleExtra(vehicle,8,false)
			SetVehicleExtra(vehicle,9,false)
			SetVehicleExtra(vehicle,10,false)
			SetVehicleExtra(vehicle,11,false)
			if DoesEntityExist(driver) and DoesEntityExist(vehicle) then
			SetEntityAsMissionEntity(driver, true, true)
			vanBlip = AddBlipForEntity(vehicle)
			SetBlipColour(vanBlip, 29)
			SetBlipFlashes(vanBlip, true)

			local distanceToVan = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed))

			if distanceToVan < 100 then
			  eta = '~g~1 Mike'
			elseif distanceToVan < 300 then
			  eta = '~g~2 Mikes'
			elseif distanceToVan < 500 then
			  eta = '~o~3 Mikes'
			elseif distanceToVan > 500 then
			  eta = '~r~5 Mikes'
			end

			ShowNotification('~o~Dispatch: ~w~PT has been dispatched to your location. ~w~\nETA: ' .. eta)
			enroute = true
			while (enroute) do
			Citizen.Wait(300)
			local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed), 1)
			SetEntityInvincible(vehicle, true)
			if distanceToVeh <= 25 then
			local isopen = GetVehicleDoorAngleRatio(vehicle,2)
				
				SetEntityInvincible(vehicle, false)
					
				SetVehicleIndicatorLights(vehicle, 1, true)
				SetVehicleIndicatorLights(vehicle, 2, true)
				
				TaskVehicleTempAction(driver, vehicle, 27, 5000)
				SetVehicleSiren(vehicle, true)
					
					if GetEntitySpeed(vehicle) < 5 then
						TaskLeaveVehicle(driver, vehicle, 256)
						TaskOpenVehicleDoor(driver, vehicle, -1, 1, 2.0)
							Wait(1000)
							SetVehicleDoorOpen(vehicle,2,false,true)
						TaskGoToEntity(driver, targetPed, -1, 3, 1.0, 0, 0)
						cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
		
							end
					end
							
						if isopen ~= 0 then
							RemovePedFromGroup(dick)
							TaskEnterVehicle(targetPed, vehicle, 10000, 1, 2.0, 1, 0)
							--ShowNotification("~o~Officer: ~w~Don't drop the soap!")
							
							
							if IsPedInVehicle(targetPed, vehicle, false) then
								TaskEnterVehicle(driver, vehicle, -1, -1, 2.0, 1, 0)
								SetDriveTaskDrivingStyle(vehicle, 786603)
								SetVehicleDoorShut(vehicle,2,0)
								SetVehicleDoorShut(vehicle,3,0)
								TaskVehicleDriveWander(driver, vehicle, 15.0, drivingStyle)
											
								ShowNotification("~o~Jail Driver:~w~ Dispatch show me enroute to jail.")
								enroute = false
								vanBlip = RemoveBlip(vanBlip)
								SetVehicleIndicatorLights(vehicle, 1, false)
								SetVehicleIndicatorLights(vehicle, 2, false)
								Wait(30000)
								dofade(vehicle)
								dofade(driver)
								dofade(targetPed)
							end
						--end
					end
				end
			end
		end
		else
		ShowNotification("No ped found!")
	end
end)


RegisterNetEvent('taxi')
AddEventHandler('taxi', function()
	local spawnDistance = math.random(spawnDistance, spawnDistance + 25)
	local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)
    local pmodels = {"a_m_m_indian_01"}
    
    local driver = GetHashKey(pmodels[math.random(#pmodels)])
    local vehiclehash = GetHashKey("taxi")
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, distanceToCheck, 0.0)
    RequestModel(vehiclehash)
    RequestModel(driver)

		while not HasModelLoaded(vehiclehash) and RequestModel(driver) do
			RequestModel(vehiclehash)
			RequestModel(driver)
			Citizen.Wait(0)
		end
		
		if DoesEntityExist(vehicle) then
			SetEntityAsMissionEntity(driver)
			SetEntityAsMissionEntity(vehicle)
			
			DeleteEntity(driver)
			DeleteEntity(vehicle)
			
			while DoesEntityExist(driver) do
				Wait(0)
				DeleteEntity(driver)
			end
		end
	
		local targetPed = dick
	
		if DoesEntityExist(targetPed) then
			TriggerEvent('radio')
			
			NetworkRequestControlOfEntity(targetPed)
			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
			local heading, vector = GetNthClosestVehicleNode(x, y, z, spawnDistance, 0, 0, 0)
			local sX, sY, sZ = table.unpack(vector)	
			vehicle = CreateVehicle(vehiclehash, sX, sY, sZ, heading, true, true)
			Wait(1000)
			
			
			ShowNotification('~o~Officer: ~w~Dispatch, requesting taxi to my 20.')
			
			Wait(5000)

			local driver = CreatePedInsideVehicle(vehicle, 26, driver, -1, true, false)
			local pedPos = GetEntityCoords(targetPed)
			TaskVehicleDriveToCoord(driver, vehicle, pedPos.x, pedPos.y, pedPos.z, 17.0, 0, vehiclehash, drivingStyle, 1.0, true)
			SetVehicleFixed(vehicle)
			SetVehicleOnGroundProperly(vehicle)
			
			SetVehicleExtra(vehicle,1,false)
			SetVehicleExtra(vehicle,2,false)
			SetVehicleExtra(vehicle,3,false)
			SetVehicleExtra(vehicle,4,false)
			SetVehicleExtra(vehicle,5,true)
			SetVehicleExtra(vehicle,6,false)
			SetVehicleExtra(vehicle,7,false)
			SetVehicleExtra(vehicle,8,false)
			SetVehicleExtra(vehicle,9,false)
			SetVehicleExtra(vehicle,10,false)
			SetVehicleExtra(vehicle,11,false)
			if DoesEntityExist(driver) and DoesEntityExist(vehicle) then
			SetEntityAsMissionEntity(driver, true, true)
			vanBlip = AddBlipForEntity(vehicle)
			SetBlipColour(vanBlip, 29)
			SetBlipFlashes(vanBlip, true)

			local distanceToVan = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed))

			if distanceToVan < 100 then
			  eta = '~g~1 Mike'
			elseif distanceToVan < 300 then
			  eta = '~g~2 Mikes'
			elseif distanceToVan < 500 then
			  eta = '~o~3 Mikes'
			elseif distanceToVan > 500 then
			  eta = '~r~5 Mikes'
			end

			ShowNotification('~o~Dispatch: ~w~Taxi has been called ~w~\nETA: ' .. eta)
			enroute = true
			while (enroute) do
			Citizen.Wait(1000)
			local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed), 1)
			SetEntityInvincible(vehicle, true)
			if distanceToVeh <= 25 then
			local isopen = GetVehicleDoorAngleRatio(vehicle,2)
				
				SetEntityInvincible(vehicle, false)
					
				SetVehicleIndicatorLights(vehicle, 1, true)
				SetVehicleIndicatorLights(vehicle, 2, true)
				
				TaskVehicleTempAction(driver, vehicle, 27, 5000)
				--SetVehicleSiren(vehicle, true)
					
					if GetEntitySpeed(vehicle) < 5 then
						
						cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
		
							end
					end
							
						
							RemovePedFromGroup(dick)
							TaskEnterVehicle(targetPed, vehicle, 10000, 1, 2.0, 1, 0)
							--ShowNotification("~o~Officer: ~w~Don't drop the soap!")
							
							
							if IsPedInVehicle(targetPed, vehicle, false) then
								
								SetDriveTaskDrivingStyle(vehicle, 786603)
								SetVehicleDoorShut(vehicle,2,0)
								SetVehicleDoorShut(vehicle,3,0)
								TaskVehicleDriveWander(driver, vehicle, 15.0, drivingStyle)
											
								
								enroute = false
								vanBlip = RemoveBlip(vanBlip)
								SetVehicleIndicatorLights(vehicle, 1, false)
								SetVehicleIndicatorLights(vehicle, 2, false)
								Wait(30000)
								dofade(vehicle)
								dofade(driver)
								dofade(targetPed)
							end
						--end
					
				end
			end
		end
		else
		ShowNotification("No ped found!")
	end
end)
EnableDispatchService(5,false)
EnableDispatchService(3,false)

tow = nil
driver = nil
jum = false
RegisterNetEvent('ambdes')
AddEventHandler( 'ambdes', function()
ShowNotification("~g~Ambulance destination set")
towloc = GetEntityCoords(GetPlayerPed(-1))
tow = NetworkGetEntityFromNetworkId(towid)
if DoesEntityExist(tow) then
TaskVehicleDriveToCoordLongrange(driver,tow, towloc, 15.0, drivingStyle, 8.0)
else

jum = true

end
end)

RegisterNetEvent('moveemt')
AddEventHandler( 'moveemt', function()
ShowNotification("~g~EMT Ordered")

driver = NetworkGetEntityFromNetworkId(driverid)
while GetDistanceBetweenCoords(GetEntityCoords(driver), GetEntityCoords(GetPlayerPed(-1))) > 2.0 do
Wait(500)

TaskGoToEntity(driver, GetPlayerPed(-1), -1, 3, 1.0, 0, 0)
end
ClearPedTasksImmediately(driver)
end)

RegisterNetEvent('revemt')
AddEventHandler( 'revemt', function()

driver = NetworkGetEntityFromNetworkId(driverid)
local playerPos = GetEntityCoords( player )
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, -2.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
deadai = GetPedInDirection( playerPos, inFrontOfPlayer )
if DoesEntityExist(deadai) then
SetEntityAsMissionEntity(deadai)
ShowNotification("~g~EMT Ordered to subject") 
while GetDistanceBetweenCoords(GetEntityCoords(driver), GetEntityCoords(deadai)) > 3.0 do
Wait(500)
TaskGoToEntity(driver, deadai, -1, 3, 1.0, 0, 0)
end
NetworkRequestControlOfEntity(driver)
while not NetworkHasControlOfEntity(driver)do
	Wait(10)
	end
ClearPedTasksImmediately(driver)
TaskStartScenarioInPlace(driver,"CODE_HUMAN_MEDIC_TEND_TO_DEAD", 0, 1)
						
						
						
Wait(5000)

deadchance = math.random(1,100)
deadchance = math.random(1,100)
deadchance = math.random(1,100)
deadchance = math.random(1,100)
deadchance = math.random(1,100)
ClearPedTasks(driver)
if deadchance < 50 then
ShowNotification("~y~Paramedic:~w~ Suspect is ~r~deceased")
else
ShowNotification("~y~Paramedic:~w~ Suspect is ~g~still breathing")
end
	NetworkRequestControlOfEntity(deadai)
	while not NetworkHasControlOfEntity(deadai) do
	Wait(10)
	end
	DeleteEntity(deadai)
	end
end)



RegisterNetEvent('samb')
AddEventHandler('samb', function()
	 spawnDistance = math.random(spawnDistance, spawnDistance + 25)
	 player = GetPlayerPed(-1)
	 playerPos = GetEntityCoords(player)
	 pmodels = {"s_m_m_paramedic_01"}
	 vehicles = {"ambulance"}
	driver = GetHashKey(pmodels[math.random(#pmodels)])
	 vehiclehash = GetHashKey(vehicles[math.random(#vehicles)])
     inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, distanceToCheck, 0.0)
	RequestModel(vehiclehash)
	RequestModel(driver)
	
	while not HasModelLoaded(vehiclehash) and not RequestModel(driver) do
		RequestModel(vehiclehash)
		RequestModel(driver)
		Citizen.Wait(0)
	end
	
	
	
	if DoesEntityExist(vehicle) and deleteLastTruck == true then
		SetEntityAsMissionEntity(driver)
		SetEntityAsMissionEntity(vehicle)
		
		
		DeleteEntity(driver)
		DeleteEntity(vehicle)
		
		
		while DoesEntityExist(driver) do
			Wait(0)
			DeleteEntity(driver)
		end
	end
	
	
	TriggerEvent('radio')
	
		Wait(math.random(2000, 6000))
			
		local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
		local heading, vector = GetNthClosestVehicleNode(x, y, z, spawnDistance, 0, 0, 0)
		local sX, sY, sZ = table.unpack(vector)	
		tow = CreateVehicle(vehiclehash, sX, sY, sZ, heading, true, true)
		
		 vehiclehash = GetHashKey(tow)
		
		driver = CreatePedInsideVehicle(tow, 26, driver, -1, true, false)
		NetworkRegisterEntityAsNetworked(driver)
		NetworkRegisterEntityAsNetworked(tow)
		 SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(tow),false)
		 SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(driver),false)
		  ShowNotification("Tow "..NetworkGetNetworkIdFromEntity(tow) .." Driver ".. NetworkGetNetworkIdFromEntity(driver) )
		SetBlockingOfNonTemporaryEvents(driver, true)
		driverid = NetworkGetNetworkIdFromEntity(driver)
		towid = NetworkGetNetworkIdFromEntity(tow)
		 vehpos = GetEntityCoords(GetPlayerPed(-1))
		--TaskVehicleDriveToCoord(driver, tow, vehpos.x, vehpos.y, vehpos.z, 17.0, 0, vehiclehash, drivingStyle, 1.0, true)
		NetworkRequestControlOfEntity(driver)
	NetworkRequestControlOfEntity(tow)
	
	while not NetworkHasControlOfEntity(driver) and not NetworkHasControlOfEntity(tow) do
	Wait(10)
	end
		if jum == true then
		TaskVehicleDriveToCoordLongrange(driver,tow,towloc, 15.0, drivingStyle, 8.0)
		else
		TaskVehicleDriveToCoordLongrange(driver,tow,GetEntityCoords(GetPlayerPed(-1)), 15.0, drivingStyle, 8.0)
		end
		jum = false
		SetVehicleFixed(tow)
		SetVehicleOnGroundProperly(tow)
		ablip = AddBlipForEntity(tow)
		if DoesEntityExist(driver) and DoesEntityExist(tow) then
		SetEntityAsMissionEntity(driver, true, true)
		SetEntityAsMissionEntity(tow, true, true)
		
		SetVehicleSiren(tow, true)
		 distanceToTow = GetDistanceBetweenCoords(GetEntityCoords(tow), GetEntityCoords(GetPlayerPed(-1)))
		
		if distanceToTow < 100 then
			eta = '~g~1 Mike'
		elseif distanceToTow < 300 then
			eta = '~g~2 Mikes'
		elseif distanceToTow < 500 then
			eta = '~o~3 Mikes'
		elseif distanceToTow > 500 then
			eta = '~r~5 Mikes'
		end
		
		ShowNotification("An Ambulance has been dispatched to your location. ~w~\nETA: " .. eta)
		enroute = true
		
		
	else
	ShowNotification("No vehicle found!")
	end
end)
RegisterNetEvent('dely')
AddEventHandler('dely', function()
player = GetPlayerPed(-1)
local playerPos = GetEntityCoords( player )
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, -2.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
deadai = GetPedInDirection( playerPos, inFrontOfPlayer )
if DoesEntityExist(deadai) then
NetworkRequestControlOfEntity(deadai)
while not NetworkHasControlOfEntity(deadai) do
Wait(1000)
NetworkRequestControlOfEntity(deadai)
end
ShowNotification("Patient Loaded into ambulance")
DeleteEntity(deadai)
end
end)
RegisterNetEvent('revem')
AddEventHandler('revem', function()

player = GetPlayerPed(-1)
local playerPos = GetEntityCoords( player )
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, -2.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
deadai = GetPedInDirection( playerPos, inFrontOfPlayer )
if DoesEntityExist(deadai) then
NetworkRequestControlOfEntity(deadai)
while not NetworkHasControlOfEntity(deadai) do
Wait(1000)
NetworkRequestControlOfEntity(deadai)
end
--ShowNotification("Ped Revived")
SetPedConfigFlag(deadai,33,false)
ResurrectPed(deadai)
ClearPedTasksImmediately(deadai)
SetEntityCoords(deadai,GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, 0.0 ))
ReviveInjuredPed(deadai)

--SetPedConfigFlag(deadai,71,false)
--SetPedConfigFlag(deadai,73,false)
--SetPedCanRagdoll(deadai,false)

end

end)
RegisterNetEvent('fixit')
AddEventHandler('fixit', function()
	local spawnDistance = math.random(spawnDistance, spawnDistance + 25)
	local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)
    local pmodels = {"mp_m_waremech_01"}
    local vehicles = {"flatbed3"}
    local driver3 = GetHashKey(pmodels[math.random(#pmodels)])
    local vehiclehash = GetHashKey(vehicles[math.random(#vehicles)])
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, distanceToCheck, 0.0)
    RequestModel(vehiclehash)
    RequestModel(driver)
	leftveh = false

		while not HasModelLoaded(vehiclehash) and RequestModel(driver3) do
			RequestModel(vehiclehash)
			RequestModel(driver3)
			Citizen.Wait(0)
		end
		
		if DoesEntityExist(vehicle3) then
			SetEntityAsMissionEntity(driver3)
			SetEntityAsMissionEntity(vehicle3)
			
			DeleteEntity(driver3)
			DeleteEntity(vehicle3)
			
			while DoesEntityExist(driver3) do
				Wait(0)
				DeleteEntity(driver3)
			end
		end
	
		local targetPed3 = GetVehiclePedIsUsing(GetPlayerPed(-1))
		
		
	
		if DoesEntityExist(targetPed3) then
			TriggerEvent('radio')
			
			
			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
			local heading, vector = GetNthClosestVehicleNode(x, y, z, spawnDistance, 0, 0, 0)
			local sX, sY, sZ = table.unpack(vector)	
			vehicle3 = CreateVehicle(vehiclehash, sX, sY, sZ, heading, true, true)
			
			ShowNotification('~o~Officer: ~w~Dispatch, requesting a fleet maintenance to my 20')
			
			Wait(5000)

			local driver3 = CreatePedInsideVehicle(vehicle3, 26, driver3, -1, true, false)
			local pedPos = GetEntityCoords(targetPed3)
			TaskVehicleDriveToCoord(driver3, vehicle3, pedPos.x, pedPos.y, pedPos.z, 17.0, 0, vehiclehash, drivingStyle, 1.0, true)
			SetVehicleFixed(vehicle3)
			SetVehicleOnGroundProperly(vehicle3)
			SetVehicleSiren(vehicle3, true)
			if DoesEntityExist(driver3) and DoesEntityExist(vehicle3) then
			SetEntityAsMissionEntity(driver3, true, true)
			vanBlip = AddBlipForEntity(vehicle3)
			SetBlipColour(vanBlip, 29)
			SetBlipFlashes(vanBlip, true)

			local distanceToVan3 = GetDistanceBetweenCoords(GetEntityCoords(vehicle3), GetEntityCoords(targetPed))

			if distanceToVan3 < 100 then
			  eta = '~g~1 Mike'
			elseif distanceToVan3 < 300 then
			  eta = '~g~2 Mikes'
			elseif distanceToVan3 < 500 then
			  eta = '~o~3 Mikes'
			elseif distanceToVan3 > 500 then
			  eta = '~r~5 Mikes'
			end

			ShowNotification('~o~Dispatch: ~w~Flatbed has been dispatched to your location. ~w~\nETA: ' .. eta)
			enroute3 = true
			while (enroute3) do
			Citizen.Wait(300)
			local distanceToVeh3 = GetDistanceBetweenCoords(GetEntityCoords(vehicle3), GetEntityCoords(targetPed3), 1)
			SetEntityInvincible(vehicle3, true)
			if distanceToVeh3 <= 25 then
			local isopen = GetVehicleDoorAngleRatio(vehicle3,2)
				
				SetEntityInvincible(vehicle3, false)
					
				SetVehicleIndicatorLights(vehicle3, 1, true)
				SetVehicleIndicatorLights(vehicle3, 2, true)
				
				TaskVehicleTempAction(driver3, vehicle3, 27, 5000)
				SetVehicleSiren(vehicle3, true)
					
					if GetEntitySpeed(vehicle3) < 5 then
					if leftveh == false then
						TaskLeaveVehicle(driver3, vehicle3, 256)
						
						leftveh = true
						Wait(1000)
						
						end
							
							TaskGoToEntity(driver3, targetPed3, -1, 3, 5.0, 0, 0)
							distanceToVan4 = GetDistanceBetweenCoords(GetEntityCoords(driver3), GetEntityCoords(targetPed3))
							--ShowNotification(distanceToVan4)
						if distanceToVan4 <= 3 then 
						talk = {"Wow you really screwed this car up.","Damn son.","Holy Mr. Mowsby."}
						ShowNotification("~o~Mechanic:~w~ "..talk[math.random(#talk)])
						ShowNotification("~o~Mechanic:~w~ Should be good to go in a few")
						TaskStartScenarioInPlace(driver3,"WORLD_HUMAN_HAMMERING", 0, 1)
						Wait(5000)
						
						
						SetVehicleFixed(targetPed3)
						SetVehicleDeformationFixed(targetPed3)
						SetVehicleUndriveable(targetPed3, false)
						TaskEnterVehicle(driver3, vehicle3, -1, -1, 2.0, 1, 0)
								SetDriveTaskDrivingStyle(vehicle3, 786603)
								SetVehicleDoorShut(vehicle3,2,0)
								SetVehicleDoorShut(vehicle3,3,0)
								TaskVehicleDriveWander(driver3, vehicle3, 15.0, drivingStyle)
											
								ShowNotification("~o~Mechanic:~w~ All set boss.")
								enroute3 = false
								vanBlip = RemoveBlip(vanBlip)
								SetVehicleIndicatorLights(vehicle3, 1, false)
								SetVehicleIndicatorLights(vehicle3, 2, false)
								Wait(30000)
								dofade(vehicle3)
								dofade(driver3)
								--dofade(targetPed)
					end
					end
							
						
							
							
							
							
						--end
					
				end
			end
		end
		else
		ShowNotification("No ped found!")
	end
end)
















cuffed = false
RegisterNetEvent('pis:arr:handcuff')
AddEventHandler('pis:arr:handcuff', function()	-- on /handcuff
	Citizen.CreateThread(function()
	local player = GetPlayerPed(-1)
	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    
	
	if IsEntityPlayingAnim(dick, "random@arrests@busted", "idle_a", 3) then -- if the person is doing "kneeling, hands behind head" animation, put him under arrest.
		ShowNotification("~g~Cuffing...")
		cuffed = true
		local player = GetPlayerPed(-1) --Player
		--local playerGroupId = GetPedGroupIndex(player)
		
		isPedCuffed = true
		-- make him stand up and enable handcuff animations.
		--TaskPlayAnim(player, "mp_arresting", "a_uncuff", 8.0, -8, -1, 49, 0, 0, 0, 0)
		TaskPlayAnim(dick, "mp_arresting", "idle", 8.0, -8, -1, 1, 15, 0, 0, 0)
		--AttachEntityToEntity(cuffingPed, player, 11816, 0, 0.3, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
		Citizen.Wait (2000)
		--DetachEntity(cuffingPed, true, false)
		ClearPedSecondaryTask(player)
		--TaskPlayAnim( cuffingPed, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
		Citizen.Wait (1000)
		--TaskPlayAnim( cuffingPed, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0 )
		-- join player's relationship group (make him follow you)
		--SetPedAsGroupMember(cuffingPed, playerGroupId)
		SetEnableHandcuffs(dick, true)
		--SetPedCanTeleportToGroupLeader(cuffingPed,GetPlayerGroup(player),true) -- may not work in mp.      
	elseif DoesEntityExist(dick) then -- if the person in front of you exists, and isn't kneeling, unhandcuff him.
		ShowNotification("~g~Uncuffing...")
		isPedCuffed = false
		cuffed = false
		--TaskPlayAnim(player, "mp_arresting", "a_uncuff", 8.0, -8, -1, 1, 0, 0, 0, 0)
		--AttachEntityToEntity(cuffingPed, player, 11816, 0, 0.65, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
		Citizen.Wait (2000)
		--RemovePedFromGroup(cuffingPed)
		--DetachEntity(cuffingPed, true, false)
		ClearPedSecondaryTask(dick)
		ClearPedSecondaryTask(player)
		ClearPedTasks(dick)
		SetPedCanRagdoll(suspect, true) -- make him able to ragdoll
		SetBlockingOfNonTemporaryEvents(dick, false) -- makes him react to scary things (gunshots etc)
		cuffingPed = nil
	else
		ShowNotification("~r~You must be looking at the suspect.")
	
	end
	end)
end)





function GetPedInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 12, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end

RegisterNetEvent('arresting')
AddEventHandler('arresting', function()
	Citizen.CreateThread(function()
	local suspect = target
	SetBlockingOfNonTemporaryEvents(suspect, true) --makes him ingore anything that could potentially scare him.
	--SetPedCanPlayGestureAnims(suspect, false)
	SetPedCanRagdoll(suspect, true) -- make him unable to ragdoll
	TaskPlayAnim(suspect, "random@arrests", "idle_2_hands_up", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
		Citizen.Wait (4000)
	TaskPlayAnim(suspect, "random@arrests", "kneeling_arrest_idle", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
	GetWeaponObjectFromPed(suspect,false)
	RemoveAllPedWeapons(suspect)

	TaskPlayAnim(suspect, "random@arrests@busted", "enter", 8.0, 3.0, -1, 2, 0, 0, 0, 0 )
		Citizen.Wait (500)
	TaskPlayAnim(suspect, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
	end)
end)

RegisterNetEvent('freeing')
AddEventHandler('freeing', function()
	local suspect = target
	Citizen.CreateThread(function()
	TaskPlayAnim( suspect, "random@arrests@busted", "exit", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
	Citizen.Wait (2000)
	TaskPlayAnim( suspect, "random@arrests", "ing_arrest_get_up", 8.0, 2.0, -1, 128, 0, 0, 0, 0 )
	Citizen.Wait (3000)
	ClearPedSecondaryTask(suspect)
	SetPedCanRagdoll(suspect, true)
	--SetPedCanPlayGestureAnims(suspect, true) -- idk what this does.
	end)
end)

RegisterNetEvent('secure')
AddEventHandler('secure', function()
if IsPedInAnyVehicle(player) then -- if player is in a vehicle.
	local player = GetPlayerPed(-1) --Player
		Citizen.CreateThread(function()
		for n =0,GetVehicleMaxNumberOfPassengers(GetVehiclePedIsIn(dick)),1 do -- make everyone sitting in the car frozen (unable to move/exit the car)
			Citizen.Wait(0)
			if IsPedAPlayer(GetPedInVehicleSeat(GetVehiclePedIsIn(dick),n)) == false then
				SetPedConfigFlag(GetPedInVehicleSeat(GetVehiclePedIsIn(dick),n),292,true)
			end
		end
	end)
end
end)

RegisterNetEvent('emscontrol')
AddEventHandler('emscontrol', function()
player = GetPlayerPed(-1)
	 playerPos = GetEntityCoords(player)
	
	
     inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0)
	 
	 tow = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	 
	 NetworkRequestControlOfEntity(tow)
	 NetworkRequestControlOfEntity(driver)
	 while not NetworkHasControlOfEntity(driver) and not NetworkHasControlOfEntity(tow) do
	Wait(10)
	end
	 if DoesEntityExist(tow) then
	 tow = GetVehicleInDirection(playerPos, inFrontOfPlayer)
	 driver = GetPedInVehicleSeat(tow, -1)
	 
	  
	 ShowNotification("~g~EMS has been set")
	 
	
	 else 
	 
	 end

end)

RegisterNetEvent('emtcontrol')
AddEventHandler('emtcontrol', function()
player = GetPlayerPed(-1)
	 playerPos = GetEntityCoords(player)
	
	
     inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0)
	 
	 driver = GetPedInDirection(playerPos, inFrontOfPlayer)
	 
	 
	 NetworkRequestControlOfEntity(driver)
	 while not NetworkHasControlOfEntity(driver)  do
	Wait(10)
	end
	 if DoesEntityExist(driver) then
	 
	 
	  
	 ShowNotification("~g~EMT has been selected")
	 
	
	 else 
	 
	 end

end)


RegisterNetEvent('disems')
AddEventHandler('disems', function()
driver = NetworkGetEntityFromNetworkId(driverid)
tow = NetworkGetEntityFromNetworkId(towid)
ShowNotification("EMS Dismissed")
RemoveBlip(ablip)
if IsPedInAnyVehicle(driver, false) == false then
TaskEnterVehicle(driver, tow, -1, -1, 2.0, 1, 0)
--TriggerEvent('secure')



end
Wait(2000)
while IsPedInAnyVehicle(driver,false) == false do
Wait(1)
end
SetDriveTaskDrivingStyle(tow, 786603)
					NetworkRequestControlOfEntity(driver)
					NetworkRequestControlOfEntity(tow)
					while not NetworkHasControlOfEntity(driver) and NetworkHasControlOfEntity(tow) do
	Wait(10)
	end
					TaskVehicleDriveWander(driver, tow, 17.0, 786603)
					SetVehicleSiren(tow, true)
					--ShowNotification("~o~Tow Driver:~w~ " .. towDriverQuoteOfTheDay[math.random(#towDriverQuoteOfTheDay)])
					SetEntityAsNoLongerNeeded(tow)
					enroute = false
					towblip = RemoveBlip(towblip)
					SetVehicleIndicatorLights(tow, 1, false)
					SetVehicleIndicatorLights(tow, 2, false)
					SetEntityInvincible(vehicle, false)
					SetEntityInvincible(driver, false)
					Wait(15000)
					NetworkRequestControlOfEntity(driver)
					NetworkRequestControlOfEntity(tow)
					NetworkRequestControlOfEntity(targetVeh)
					while not NetworkHasControlOfEntity(driver) and not NetworkHasControlOfEntity(tow) and not NetworkHasControlOfEntity(targetVeh) do
					Wait(10)
					end
					dofade(tow)
					dofade(targetVeh)
					dofade(driver)





end)
cef = false
RegisterNetEvent('cufem')
AddEventHandler('cufem', function()
if dick ~= nil then
fight = math.random(1,100)
fight = math.random(1,100)
fight = math.random(1,100)
fight = math.random(1,100)
--ShowNotification("~y~Cuffing On Select: ~r~Disabled")
cef = true
fight = 100
NetworkRequestControlOfEntity(dick)
while not NetworkHasControlOfEntity(dick) do
Wait(10)
end
if NetworkHasControlOfEntity(dick) then
if GetPedConfigFlag(dick,292,true) then


SetPedConfigFlag(dick,292,false)
FreezeEntityPosition(dick,false)
TaskPlayAnim( dick, "mp_arresting", "exit", 8.0, 2.0, -1, 2, 0, 0, 0, 0 )
TriggerEvent('vuncuff')

else 
--fight = 20
if fight < 10 then
RemovePedFromGroup(dick)
SetBlockingOfNonTemporaryEvents(dick, false)
		
cuffed = false

SetPedCombatAttributes(dick, 5, true)
SetPedCombatAbility(dick, 100)
TaskCombatPed(dick,GetPlayerPed(-1),0,16)
DecorSetInt(dick,"IsSelected",0)
dick = nil
else
--ShowNotification("~y~Cuffing On Select: ~g~Enabled")
TaskPlayAnim(dick, "mp_arresting", "idle", 8.0, -8, -1, 1, 49, 0, 0, 0)

Wait(500)
SetPedConfigFlag(dick,292,true)
FreezeEntityPosition(dick,true)
end
end
end
end


end)




RegisterCommand('load', function(source, args, rawCommand)

TaskStartScenarioInPlace(GetPlayerPed(-1),"WORLD_HUMAN_WINDOW_SHOP_BROWSE", 0, 1)




end)

RegisterNetEvent('loadd')
AddEventHandler('loadd', function(muny,foodd)

currentmoney = muny
hunger = foodd


end)

function GetVehicleInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end

RegisterNetEvent('setfree')
AddEventHandler('setfree', function()
NetworkRequestControlOfEntity(dick)
while not NetworkHasControlOfEntity(dick) do
Wait(10)
end
RemovePedFromGroup(dick)
SetBlockingOfNonTemporaryEvents(dick, false)

		if cblip ~= nil then
		RemoveBlip(cblip)
		--SetEntityAsNoLongerNeeded(dick)
		
		end


DecorSetInt(dick,"IsSelected",0)
dick = nil

end)


RegisterNetEvent('seatped')
AddEventHandler('seatped', function()
local player = GetPlayerPed(-1)
local playerPos = GetEntityCoords(player)
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 3.0, 0.0)
local targetVehh = GetVehicleInDirection(playerPos, inFrontOfPlayer)



if DoesEntityExist(targetVehh) then
NetworkRequestControlOfEntity(targetVehh)
NetworkRequestControlOfEntity(dick)
while not NetworkHasControlOfEntity(targetVehh) and not NetworkHasControlOfEntity(dick) do
Wait(10)
end
SetVehicleDoorOpen(targetVehh,2,false,false)

if isPedBeingGrabbed == true then
TriggerEvent('pis:arr:grab')

end
SetEntityAsMissionEntity(dick)
SetPedConfigFlag(dick,292,false)
--RemovePedFromGroup(dick)
ClearPedTasksImmediately(dick)
Wait(500)
TaskEnterVehicle(dick, targetVehh, -1, 1, 2.0, 1, 0)
--TriggerEvent('secure')
cuffed = false

while IsPedInAnyVehicle(dick,false) == false do
Wait(1)
end
SetPedConfigFlag(dick,292,true)
SetVehicleDoorShut(targetVehh,2,false)
else

end

end)








Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		ForceAmbientSiren(false)
		if IsControlJustPressed(0,CPedMenu)  then --Press X or E
		
		 WarMenu.OpenMenu('PIS:main')
		 elseif IsDisabledControlPressed(1, 21) and IsControlJustPressed(0,CSearch) then
		 
		TriggerEvent("pis:search")
		end
		
		
		
		end
		
		end)
		
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(1000)
doorr = GetClosestObjectOfType(376.09625244141,-1632.6502685547,28.055376052856,5.0,-577103870,false,false)
SetEntityAsMissionEntity(doorr)
DeleteObject(doorr)
doorrr = GetClosestObjectOfType(461.7,-998.12,24.9,5.0,631614199,false,false)
SetEntityAsMissionEntity(doorrr)
FreezeEntityPosition(doorrr, true)
end

end)
running = 0
local jailed = false

local defaultTime = 60

RegisterNetEvent('jailPlayer')
AddEventHandler('jailPlayer', function(ptime)
    defaultTime = ptime
    if not jailed then
        local ped = GetPlayerPed(PlayerId())
        SetEntityCoordsNoOffset(ped, 459.5, -997.8, 25.6, false, false, false, true)
        jailed = true
    end
end)

function TeleportOutJail()
    SetEntityCoords(GetPlayerPed(PlayerId()), 412.4, -981.1, 29.4, 0.0, 0.0, 0.0, false)
    SetEntityInvincible(GetPlayerPed(PlayerId()), false)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if jailed then
            SetEntityInvincible(GetPlayerPed(PlayerId()), true)
            for i = 1, defaultTime do
                Citizen.Wait(60000)
               --Citizen.Trace("TIME LEFT: " .. tostring(defaultTime - i))
                if defaultTime - i == 0 then
                    jailed = false
                    TeleportOutJail()
                end
            end
        end
    end
end)

dick = nil
RegisterNetEvent('pis:onfootid')
AddEventHandler('pis:onfootid', function()

	
	if speech == "Normal" then
			local OfficerNormalQuotes = {"Can i see some ID?", "ID, please."}
			ShowNotification("~o~Officer:~w~ " .. OfficerNormalQuotes[math.random(#OfficerNormalQuotes)])
		else
			local OfficerAggresiveQuotes = {"Show me your ID.", "Give me your ID.", "Give me your license.", "Show me your info."}
			ShowNotification("~o~Officer:~w~ " .. OfficerAggresiveQuotes[math.random(#OfficerAggresiveQuotes)])
		end
		Wait(200)
		dicknet = NetworkGetNetworkIdFromEntity(dick)
		print(dicknet)
		
		if DecorExistOn(dick,"NameId") then
		
		TriggerServerEvent('getnames',dicknet)
		return
		else
		
		
		
		pedGender = GetPedType(dick)
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
		fullDob = (dob_m .. "-" .. dob_d .. "-" .. dob_y)
		driverName = regOwner
		fullDriverDob = fullDob
		print(fullDob)
		pname = driverName
		pdob = fullDob
		--paddress = "16 Procopio Drive"
		pgender = pedGender
		prace = "N/A"
		TriggerEvent('GetDL',driverName)
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
		
		phair = "N/A"
		pbuild = "Average"
		pwep = "Obtained"
		DecorSetInt(dick,"NameId", dicknet)
		--ShowNotification(driverName)
		TriggerServerEvent('addnames',dicknet,driverName)
		--ShowNotification("Decor has been set to "..DecorGetInt(dick,"NameId"))
		--TriggerServerEvent('makeped',pname,pdob,pgender,prace,pdl,phair,pbuild,pwep)
		
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
		
		--TriggerServerEvent('warn')
		
		citations = math.random(0,4)
		warrentchance = math.random(0, 100)
		
		if warrentchance > 85 then
		pedFlags =  "~r~"..flagsWalk[math.random(#flagsWalk)]
		
		else
		
		pedFlags = "~g~None"
		
		end
		
		
	end	
		




end)

local entityEnumerator = {
  __gc = function(enum)
    if enum.destructor and enum.handle then
      enum.destructor(enum.handle)
    end
    enum.destructor = nil
    enum.handle = nil
  end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
  return coroutine.wrap(function()
    local iter, id = initFunc()
    if not id or id == 0 then
      disposeFunc(iter)
      return
    end
    
    local enum = {handle = iter, destructor = disposeFunc}
    setmetatable(enum, entityEnumerator)
    
    local next = true
    repeat
      coroutine.yield(id)
      next, id = moveFunc(iter)
    until not next
    
    enum.destructor, enum.handle = nil, nil
    disposeFunc(iter)
  end)
end

function EnumerateObjects()
  return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
  return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
  return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
  return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

--[[Usage:
for ped in EnumeratePeds() do
  <do something with 'ped'>
end
]]
function GetClosestPed()
    local closestPed = 0
  
    for ped in EnumeratePeds() do
        local distanceCheck = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(ped), true)
        if distanceCheck <= 1.5 and ped ~= GetPlayerPed(-1) and not IsPedAPlayer(ped)  then
            closestPed = ped
            break
			
		elseif ped == GetPlayerPed(-1) then
        end
    end

    return closestPed
end
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		if IsControlJustPressed(0,CSelectPed) and not IsControlPressed(0,21) then --Press X or E
		if DoesEntityExist(dick) and not IsPedBeingStunned(dick,0) and GetClosestPed() == dick then
		RemovePedFromGroup(dick)
		SetBlockingOfNonTemporaryEvents(dick, false)
		--SetEntityAsNoLongerNeeded(dick)
		ClearPedTasksImmediately(dick)
		TaskWanderStandard(dick,10.0,10)
		 DecorSetInt(dick,"IsSelected",0)
		dick = nil
		cuffed = false
		ShowNotification("~y~Civilian ~o~Released")
		if cblip ~= nil then
		RemoveBlip(ccblip)
		
		
		end
		
		else
		local player = GetPlayerPed(-1)
	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
     dick = GetClosestPed()
	 
	if DoesEntityExist(dick) and not IsPedAPlayer(dick) then -- if the ped exits in front of the player.
	
	--ShowNotification(GetPedType(dick))
	RequestAnimDict("mp_arresting") --Cuff Animation
loadAnimDict( "random@arrests" ) --Kneeling Animations
loadAnimDict( "random@arrests@busted" )
		--ccblip = AddBlipForEntity(dick)
		NetworkRequestControlOfEntity(dick)
		
		--ShowNotification("Yes")
		if IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
		ClearPedTasksImmediately(dick)
		
		else
		cuffed = true
		end
		
		TriggerEvent('selped', NetworkGetNetworkIdFromEntity(dick))
		ShowNotification("~y~Civilian ~g~Selected")
		 DecorSetInt(dick,"IsSelected",1)
		running = math.random(1,100)
		running = math.random(1,100)
		running = math.random(1,100)
		running = math.random(1,100)
			if DecorExistOn(dick,"Intent") then
				if DecorGetInt(dick,"Intent") == 1  and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~g~Calm")
				elseif DecorGetInt(dick,"Intent") == 2  and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~o~Annoyed")
				elseif DecorGetInt(dick,"Intent") == 3  and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~w~Nervous")
				SetPedSweat(dick,100.0)
				Flee = math.random(100,600)
				--ShowNotification(Flee)
					if Flee >= 400 then
					--ShowNotification("Running")
					Wait(math.random(500,4000))
					RemovePedFromGroup(dick)
					SetBlockingOfNonTemporaryEvents(dick, false)
					cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
						--SetEntityAsNoLongerNeeded(dick)
		
						end
						TaskSmartFleePed(dick,GetPlayerPed(-1),600.0,-1,0,0)
						DecorSetInt(dick,"IsSelected",0)
						dick = nil
					end
				elseif DecorGetInt(dick,"Intent") == 4 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false  then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~r~Agitated")
				Flee = math.random(100,600)
					if Flee >= 400 then
					--ShowNotification("Running")
					Wait(math.random(500,4000))
					RemovePedFromGroup(dick)
					SetBlockingOfNonTemporaryEvents(dick, false)
					cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
						--SetEntityAsNoLongerNeeded(dick)
		
						end
						SetPedCombatAttributes(dick, 5, true)
						SetPedCombatAbility(dick, 100)
						TaskCombatPed(dick,GetPlayerPed(-1),0,16)
						DecorSetInt(dick,"IsSelected",0)
						dick = nil
					end
				elseif DecorGetInt(dick,"Intent") == 5 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false  then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~b~Extremely Agitated")
				end
			else
			gametime = GetClockHours()
			
			if gametime > 23 or gametime < 4 then
			Intention = math.random(1,3)
			Intention = math.random(1,3)
			Intention = math.random(1,3)
			--ShowNotification("Night")
			else
			Intention = math.random(1,2)
			Intention = math.random(1,2)
			Intention = math.random(1,2)
			--ShowNotification("Day")
			end
			 DecorSetInt(dick,"Intent",Intention)
			
			 
			if DecorGetInt(dick,"Intent") == 1 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~g~Calm")
				elseif DecorGetInt(dick,"Intent") == 2 then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~o~Annoyed")
				elseif DecorGetInt(dick,"Intent") == 3 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~w~Nervous")
				SetPedSweat(dick,100.0)
				Flee = math.random(100,600)
					if Flee >= 400 then
					--ShowNotification("Running")
					Wait(math.random(500,4000))
					RemovePedFromGroup(dick)
					SetBlockingOfNonTemporaryEvents(dick, false)
					cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
						--SetEntityAsNoLongerNeeded(dick)
		
						end
						TaskSmartFleePed(dick,GetPlayerPed(-1),600.0,-1,0,0)
						DecorSetInt(dick,"IsSelected",0)
						dick = nil
					end
				elseif DecorGetInt(dick,"Intent") == 4 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~r~Agitated")
				Flee = math.random(100,600)
					if Flee >= 400 then
					--ShowNotification("Running")
					Wait(math.random(500,4000))
					RemovePedFromGroup(dick)
					SetBlockingOfNonTemporaryEvents(dick, false)
					cuffed = false
						if cblip ~= nil then
						RemoveBlip(cblip)
						--SetEntityAsNoLongerNeeded(dick)
		
						end
						SetPedCombatAttributes(dick, 5, true)
						SetPedCombatAbility(dick, 100)
						TaskCombatPed(dick,GetPlayerPed(-1),0,16)
						 DecorSetInt(dick,"IsSelected",0)
						dick = nil
					end
				elseif DecorGetInt(dick,"Intent") == 5 and IsEntityPlayingAnim(dick, "mp_arresting", "idle", 3) == false then
				ShowNotification("~y~Observation:~w~ Civilian Appears ~b~Extremely Agitated")
				end
			end
		 WarMenu.OpenMenu('PIS:main')
		SetEntityAsMissionEntity(dick)
		SetBlockingOfNonTemporaryEvents(dick, true)
		
		playerGroupId = GetPedGroupIndex(player)
		SetPedAsGroupMember(dick, playerGroupId)
		SetGroupFormationSpacing(playerGroupId,1.0,1.0,1.0)
		pressy()
		
		
		
		
	
	--ShowNotification("~r~Ped is talking to another player.")
	end
	end
		end
		
		
		end
		end)
	Citizen.CreateThread(function()
	while true do
        Citizen.Wait(1)
		
		
		local player = GetPlayerPed(-1)
	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 2.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
     dickk = GetPedInDirection( playerPos, inFrontOfPlayer )
	if DoesEntityExist(dickk) and dickk ~= dick then -- if the ped exits in front of the player.
	--DisplayNotification("Press E to select ped")
	else
	--ShowNotification("nO")
	end
		
		
		
		end
		end)

function DisplayNotification(string)
	SetTextComponentFormat("STRING")
	AddTextComponentString(string)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function pedselect()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Press E to select ped")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end
function pressy()
	SetTextComponentFormat("STRING")
	AddTextComponentString("Press Y for interaction menu")
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	notification = true
	Wait (2000)
	notification = false
end

RegisterNetEvent('walk')
AddEventHandler('walk', function()
local player = GetPlayerPed(-1)
	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 10.0, 0.0 )
	falltime = math.random(0,3)
	falltime = math.random(0,3)
	falltime = math.random(0,3)
	falltime = math.random(0,3)
	if dick ~= nil then
	NetworkRequestControlOfEntity(dick)
	while not NetworkHasControlOfEntity(dick) do
	Wait(10)
	end
	TaskAchieveHeading(dick,GetEntityHeading(player),2000)
	Wait(2000)
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(dick, 0.0, 7.0, 0.0 )
	TaskGoToCoordAnyMeans(dick,inFrontOfPlayer,1.0,0,0,786603, 0xbf800000)
	Wait(2000)
	if falltime == 0 then
	
	elseif falltime == 1 then
	SetPedToRagdoll(dick, 2000, 2000, 2, 0,0,0)
	elseif falltime == 2 then
	SetPedToRagdoll(dick, 1000, 1000, 3, 0,0,0)
	Wait(3000)
	SetPedToRagdoll(dick, 1000, 1000, 0, 0,0,0)
	elseif falltime == 3 then
	SetPedToRagdoll(dick, 1000, 1000, 2, 0,0,0)
	Wait(3000)
	SetPedToRagdoll(dick, 1000, 1000, 0, 0,0,0)
	Wait(5000)
	SetPedToRagdoll(dick, 1000, 1000, 0, 0,0,0)
	end
	
	end
	


end)
		
		
RegisterNetEvent('setped')
AddEventHandler('setped', function()
local player = GetPlayerPed(-1)
	--RemoveBlip(blippp)
	local playerPos = GetEntityCoords( player )
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
    local dick = GetPedInDirection( playerPos, inFrontOfPlayer )
	if DoesEntityExist(cuffingPed) then -- if the ped exits in front of the player.
		--blippp = AddBlipForEntity(cuffingPed)
		SetBlockingOfNonTemporaryEvents(dick, true)
		ShowNotification("fuck")
		
	else
	ShowNotification("nO")
	end


end)
RegisterCommand('setped', function(source, args, rawCommand)

RemoveBlip(cblip)


end)



RegisterCommand('unseatped', function(source, args, rawCommand)

local player = GetPlayerPed(-1)
local playerPos = GetEntityCoords(player)
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 3.0, 0.0)
local targetVehh = GetVehicleInDirection(playerPos, inFrontOfPlayer)



if DoesEntityExist(targetVehh) then
		
		Citizen.CreateThread(function()
			for n =0,GetVehicleMaxNumberOfPassengers(targetVehh),1 do
			Citizen.Wait(0)
			SetPedConfigFlag(GetPedInVehicleSeat(targetVehh,n),292,false)
			TaskLeaveAnyVehicle(GetPedInVehicleSeat(targetVehh,n))
			Citizen.Wait(100)
			SetPedConfigFlag(GetPedInVehicleSeat(targetVehh	,n),292,false)
			end
			Wait(1000)
			NetworkRequestControlOfEntity(dick)
			NetworkRequestControlOfEntity(targetVehh)
			while not NetworkHasControlOfEntity(dick) and not NetworkHasControlOfEntity(targetVehh) do
			Wait(10)
			end
			SetVehicleDoorShut(targetVehh,2,false)
			TaskPlayAnim(dick, "mp_arresting", "idle", 8.0, -8, -1, 1, 15, 0, 0, 0)
			Wait(500)
			SetPedConfigFlag(dick,292,true)
	end)
	end

end)


RegisterCommand('grab', function(source, args, rawCommand)

 if isPedBeingGrabbed == false then
			
			NetworkRequestControlOfEntity(dick)
			while not NetworkHasControlOfEntity(dick)  do
			Wait(10)
			end
            AttachEntityToEntity(dick, player, 11816, -0.3, 0.4, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			SetBlockingOfNonTemporaryEvents(dick, true)
            grabbedPed = dick
            isPedBeingGrabbed = true
        elseif isPedBeingGrabbed == true then
            DetachEntity(grabbedPed, true, false)
            isPedBeingGrabbed = false
			cuffingPed = grabbedPed
        end

end)

RegisterNetEvent('pis:arr:unsecure')
AddEventHandler('pis:arr:unsecure', function()
local player = GetPlayerPed(-1)
local playerPos = GetEntityCoords(player)
local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 3.0, 0.0)
local targetVehh = GetVehicleInDirection(playerPos, inFrontOfPlayer)



if DoesEntityExist(targetVehh) then
		
		Citizen.CreateThread(function()
			for n =0,GetVehicleMaxNumberOfPassengers(targetVehh),1 do
			Citizen.Wait(0)
			SetPedConfigFlag(GetPedInVehicleSeat(targetVehh,n),292,false)
			TaskLeaveAnyVehicle(GetPedInVehicleSeat(targetVehh,n))
			Citizen.Wait(100)
			SetPedConfigFlag(GetPedInVehicleSeat(targetVehh	,n),292,false)
			end
			Wait(1000)
			NetworkRequestControlOfEntity(dick)
			while not NetworkHasControlOfEntity(dick)  do
			Wait(10)
			end
			SetVehicleDoorShut(targetVehh,2,false)
			TaskPlayAnim(dick, "mp_arresting", "idle", 8.0, -8, -1, 1, 15, 0, 0, 0)
			Wait(500)
			SetPedConfigFlag(dick,292,true)
	end)
	end
end)

isPedBeingGrabbed = false
RegisterNetEvent('pis:arr:grab')
AddEventHandler('pis:arr:grab', function()
    local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords (player, 0.0, 5.0, 0.0)
    local infrontPed = GetPedInDirection(playerPos, inFrontOfPlayer)
    arrestedPed = infrontPed
    local player = GetPlayerPed(-1)
        if isPedBeingGrabbed == false then
			
			NetworkRequestControlOfEntity(dick)
			while not NetworkHasControlOfEntity(dick)  do
			Wait(10)
			end
            AttachEntityToEntity(dick, player, 11816, -0.3, 0.4, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			SetBlockingOfNonTemporaryEvents(dick, true)
            grabbedPed = dick
            isPedBeingGrabbed = true
        elseif isPedBeingGrabbed == true then
            DetachEntity(grabbedPed, true, false)
            isPedBeingGrabbed = false
			cuffingPed = grabbedPed
        end
end)

isPedKneeling = false
RegisterNetEvent('pis:arr:kneel')
AddEventHandler('pis:arr:kneel', function()
	local playerPos = GetEntityCoords( player )
	local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 )
	local kneelPed = dick
	
	if DoesEntityExist(kneelPed) then
	NetworkRequestControlOfEntity(kneelPed)
	while not NetworkHasControlOfEntity(kneelPed)  do
			Wait(10)
			end
		--if GetPedGroupIndex(kneelPed) == GetPlayerGroup(player) then
			if isPedKneeling == false then
				TaskStartScenarioInPlace(dick, "WORLD_HUMAN_PICNIC", 0, false)
				isPedKneeling = true
			else
				
				ClearPedTasks(dick)
				isPedKneeling = false
			end
		--end
	else
		ShowNotification("~r~You must be looking at the suspect.")
	end
end)



RegisterNetEvent('pis:arr:book')
AddEventHandler('pis:arr:book', function()
	local lspd = GetDistanceBetweenCoords(GetEntityCoords(player),461.9, -989.5, 24.91)
	local sandy = GetDistanceBetweenCoords(GetEntityCoords(player),343.46273803711,-1638.2385253906,23.784456253052)
	local paleto = GetDistanceBetweenCoords(GetEntityCoords(player),-446.9, 6012.8, 31.7)
	if lspd < 10.0  or sandy < 10.0  or paleto < 10.0 then
	if dick ~= nil then
	nameee = GetPlayerName(PlayerId())
	cuffed = false
	NetworkRequestControlOfEntity(dick)
	while not NetworkHasControlOfEntity(dick)  do
			Wait(10)
			end
	DeleteEntity(dick)
	TriggerServerEvent('AddArrest',nameee)
	end
	else
	ShowNotification("You must be at a jail to book peds!")
	end
		
end)

function dofade(vehicle)
    Citizen.CreateThread(function()
    local fadeouttim = 0
    local alpha = 255
    SetEntityAlpha(vehicle,alpha)

    while alpha > 5 and DoesEntityExist(vehicle) and fadeouttim < 3 do
        alpha = alpha - 25
        Citizen.Wait(30)
        SetEntityAlpha(vehicle,alpha)
        if alpha <= 5 then
            while alpha < 255 do
                alpha = alpha + 25
                Citizen.Wait(10)
                SetEntityAlpha(vehicle,alpha)
            end
            fadeouttim = fadeouttim + 1
        end
    end
    SetEntityAsMissionEntity(vehicle)
    DeleteEntity(vehicle)
end)
end

