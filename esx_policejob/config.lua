Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = false -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 999 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'en'

Config.PoliceStations = {
--mission row--
	Sheriff = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(473.3, -1018.4, 27.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		},

	},
	-- Blaine County Sheriff Office Below (sandy shores) --
	BCSO = {

        Blip = {
            coords = vector3(1853.78, 3688.08, 38),
            Sprite  = 60,
            Display = 4,
            Scale   = 1.2,
            Colour  = 29
        },

        Cloakrooms = {
            vector3(1852.09, 3684.12, 34.3)
        },

        Armories = {
            vector3(1857.17, 3689.45, 34.3)
        },

        Vehicles = {
            {
                Spawner = vector3 (1865.79, 3687.97, 34.3 ),
				InsideShop = vector3(228.5, -993.5, -99.5),
                SpawnPoints = { 
		            {coords = vector3(1872.86, 3687.95, 32.63), heading = 209.31, radius = 6.0 },
		            {coords = vector3(1879.92, 3686.77, 32.32), heading = 121.86, radius = 6.0 },
		            {coords = vector3(1865.93, 3659.4, 32.89), heading = 328.38, radius = 6.0 },
					{coords = vector3(1858.64, 3654.21, 33.05), heading = 31.69, radius = 6.0 }
                }
            },
        
		    {
				Spawner = vector3(473.3, -1018.4, 27.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},
	--- custom spawn	
        Helicopters = {
			{
				Spawner = vector3(1869.53, 3650.07, 33.89),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(1846.67, 3634.85, 35.5), heading = 25.56, radius = 10.0 }
				}
			}
		},

        BossActions = {
            vector3 (1848.6, 3689.64, 33.3)
        },

    },

 -- Paleto Police Department Below --
    PBPD = {

        Blip = {
            coords = vector3(-446.05, 6013.7, 31.7164),
            Sprite  = 60,
            Display = 4,
            Scale   = 1.2,
            Colour  = 29
        },

        Cloakrooms = {
            vector3(-443.283, 6012.85, 31.7)
        },

        Armories = {
            vector3(-449.202, 6017.09, 31.7)
        },

        Vehicles = {
            {
                Spawner = vector3 (-460.34, 6014.79, 31.4829),
				InsideShop = vector3(228.5, -993.5, -99.5),
                SpawnPoints = {
				    {coords = vector3(-472.28, 6028.6, 30.34), heading = 255.36, radius = 6.0 },
					{coords = vector3(-466.91, 6036.58, 30.34), heading = 206.77, radius = 6.0 },
					{coords = vector3(-473.25, 6017.01, 30.34), heading = 296.93, radius = 6.0 }
                }
            }
        },

        Helicopters = {
			{
				Spawner = vector3(1869.53, 3650.07, 33.89),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(1846.67, 3634.85, 35.5), heading = 25.56, radius = 10.0 }
				}
			}
		},

        BossActions = {
            vector3 (1848.6, 3689.64, 33.3)
        },

    },
	
}

Config.AuthorizedWeapons = {
	recruit = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	officer = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	sergeant = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	intendent = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	lieutenant = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	chef = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	},

	boss = {
			{ weapon = 'WEAPON_VINTAGEPISTOL',    price = 80 },		  
			{ weapon = 'WEAPON_FLASHLIGHT',       price = 80 },	
			{ weapon = 'WEAPON_NIGHTSTICK',       price = 200 },	
			{ weapon = 'WEAPON_STUNGUN',          price = 500 },	
			{ weapon = 'WEAPON_COMBATPISTOL',     price = 300 },	
			{ weapon = 'WEAPON_PISTOL',           price = 300 },
			{ weapon = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ weapon = 'WEAPON_FLAREGUN',         price = 60 },
			{ weapon = 'WEAPON_SMG',              price = 1250 },
			{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ weapon = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ weapon = 'WEAPON_SNIPERRIFLE',      price = 300 },
			{ weapon = 'WEAPON_REVOLVER',        price = 300 },
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'sheriff', label = 'BCSO Explorer', price = 1000 },
		{ model = 'sheriff2', label = 'BCSO Tahoe', price = 1000 },
		{ model = 'sheriff3', label = 'BCSO CVPI', price = 1000 },
		{ model = '16tahoe', label = 'BCSO 16 Tahoe', price = 1000 },
		{ model = '17silv', label = 'BCSO 17 Silverado', price = 1000 },
		{ model = 'silv', label = 'BCSO 19 Silverado', price = 1000 },
		{ model = 'hwaycar', label = '1', price = 1000 },
		{ model = 'hwaycar3', label = '2', price = 1000 },
		{ model = 'hwaycar4', label = '3', price = 1000 },
		{ model = 'hwaycar8', label = '4', price = 1000 },	
		{ model = 'hwaycar10', label = '5', price = 1000 },
		{ model = 'unmarked1', label = 'Unmarked 1', price = 1000 },
		{ model = 'unmarked2', label = 'Unmarked 2', price = 1000 },
		{ model = 'unmarked3', label = 'Unmarked 3', price = 1000 },
		{ model = 'unmarked4', label = 'Unmarked 4', price = 1000 },
		{ model = 'unmarked5', label = 'Unmarked 5', price = 1000 },
		{ model = 'unmarked6', label = 'Unmarked 6', price = 1000 },
		{ model = 'unmarked7', label = 'Unmarked 7', price = 1000 },
		{ model = 'unmarked8', label = 'Unmarked 8', price = 1000 },
		{ model = 'unmarked9', label = 'Unmarked 9', price = 1000 },
		{ model = 'police9', label = 'Unmarked 10', price = 1000 },	
		{ model = 'exp', label = 'New Unmarked Explorer', price = 1000 },
		{ model = 'chev', label = 'New Unmarked Chevelless', price = 1000 },	
		{ model = 'hellcat', label = 'New Unmarked hellcat Broken', price = 1000 },	
	},

	recruit = {
	},

	officer = {
	},

	sergeant = {
	},

	intendent = {

	},

	lieutenant = {
	},

	chef = {
	},

	boss = {
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1000 },	
		{ model = 'uh1forest', label = 'Forest UH1H', livery = 0, price = 1000 },
		{ model = 'buzzard2', label = 'Little Bird', livery = 0, price = 1000 },
		{ model = 'annihilator', label = 'Black Hawk', livery = 0, price = 1000 },	
	},

	chef = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1000 },	
		{ model = 'uh1forest', label = 'Forest UH1H', livery = 0, price = 1000 },
		{ model = 'buzzard2', label = 'Little Bird', livery = 0, price = 1000 },
		{ model = 'annihilator', label = 'Black Hawk', livery = 0, price = 1000 },	
	},

	boss = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1000 },	
		{ model = 'uh1forest', label = 'Forest UH1H', livery = 0, price = 1000 },
		{ model = 'buzzard2', label = 'Little Bird', livery = 0, price = 1000 },
		{ model = 'annihilator', label = 'Black Hawk', livery = 0, price = 1000 },	
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}