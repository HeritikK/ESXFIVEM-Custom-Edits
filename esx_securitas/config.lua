Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true-- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = false-- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'en'

Config.securitas = {

	securitas = {

		Blip = {
			Coords  = vector3(-1084.44, -256.87, 37.76),
			Sprite  = 188,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-1041.61, -233.71, 36.96)
		},

		Armories = {
			vector3(-1068.51, -241.47, 38.73)
		},

		Vehicles = {
			{
				Spawner = vector3(-1048.17, -229.55, 38.01),
				InsideShop = vector3(-328.11, -1055.33, 22.02),
				SpawnPoints = {
					{ coords = vector3(-355.66, -1090.33, 22.02), heading = 252.24, radius = 6.0 },
					{ coords = vector3(-355.2, -1087.74, 22.03), heading = 262.12, radius = 6.0 }
				}
			}
		},

		BossActions = {
			vector3(-1053.82, -230.56, 43.02)
		}

	},
}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	officer = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},


	sergeant = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	
	lieutenant = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},


	boss = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},


}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'securitas1', label = 'Securitas', price = 1 },
	},
	
	recruit = {
	},

	officer = {
	},

	sergeant = { 
	},

	lieutenant = { 
	},

	boss = { 
	},
}
	