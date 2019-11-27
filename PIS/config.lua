--|--------------------------------------------------------------------------------|--
--|--------------------------------  C O N F I G  ---------------------------------|--
--|--------------------------------------------------------------------------------|--
--To find your desired key visit http://docs.fivem.net/game-references/controls/ for a list of all compatible keys.

--K E Y B I N D I N G S--

CMimic = 119 --Mimic Key, Note that Shift must be held down when using this key!
CMainMenu = 303 -- Key for Scene control menu
trfmnu = 51 --Default 'E' [Traffic Stop Interaction Menu]
CTakeDown = 51 --Button used to stop a ped from running while aiming weapon
CSearch = 58 -- Search Key! Shift must be pushed down to activate this key!
CSelectPed = 51 -- Key for selecting Peds on foot!
CPedMenu = 246 -- Ped Interact Menu
---AI OPTIONS
CFleeMax = 10 --Flee chance is chosen 1 through 100! CFleeMax is the value that the suspect will flee. So in the instance if the Flee Chance is below 10 they will flee. AKA %10 chance to flee. Set to 0 to disable.
CShoot = 15 --If the Chance Flee rolls a 15 then the Suspect will shoot. Change this to 0 to disable.

illegalItems = {"Fake ID card","Phone","Wallet","Pistol","Camera","Umbrella","Headphones","Pocket Change","Ball of tinfoil","Plastic Bottle","Tape","Lighter","Cigar","Vape","Knife","Empty bottle of beer","Bags with suspicious white powder","Gameboy","Body Spray","Candy","Used Needle","Vape Juice","Wire cutters","Phone Charger"}

----THIS IS FOR illegalItems!! THESE ARE NOT ALL ILLEGAL! Search will randomly choose items from this Table! If you want to find more or less Illegal items edit the list to have more or less illegal items!
observations = {"~o~You observe heavy breathing from the driver","~o~You smell a strong odor of marijuana","~g~You observe the driver is calm", "~o~You smell an odor of alchohal","~The driver appears sad/depressed","~o~You notice the driver is heavily sweating","~o~You notice the drivers eyes are red","~g~The driver appears nervous","~o~You notice small bags on the passenger floor"}
--The following above is what you may observe on a traffic stop! You may color it the text using ~~ (Example: Green ~g~, Red ~r~) Add as many as you wish





---WOULD NOT RECOMMEND TOUCHING THESE, HAVE NOT TESTED THEM
modifier = 210 --Default 'Left Control'
kbpomnu = 21 --Default 'Shift' [Pullover keybinding keyboard]
--ctrpomnu = 22 --Default 'Shift' [Pullover keybinding controller]
trfcveh = 246 --Default 'Y' [Mimic/Follow Menu]
mainmnu = 303 --Default 'U' [Interaction Menu]



--O T H E R--
reverseWithPlayer = true  --While using mimic, the stopped vehicle will reverse with you, if set to 'false' the stopped vehicle will accelerate when you reverse.
towfadetime = 6