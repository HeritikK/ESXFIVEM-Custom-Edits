Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 119, g = 136, b = 153 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = false -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable map blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.securitasStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-1084.44, -256.87, 37.76),
			Sprite  = 120,
			Display = 4,
			Scale   = 1.2,
			Colour  = 39
		},

		Cloakrooms = {
			vector3(-1041.61, 233.71, 36.96)
		},

		Armories = {
			vector3(-1068.51, -241.47, 39.43)
		},

		Vehicles = {
			{
				Spawner = vector3(-1048.17, -229.55, 38.90),
				InsideShop = vector3(-1064.46, -229.36, 38.2),
				SpawnPoints = {
					{ coords = vector3(-1041.52, -216.21, 37.82), heading = 291.02, radius = 6.0 },
					{ coords = vector3(441.08, -1024.23, 28.30), heading = 90.0, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(46555551.1, -95581.5, 43.6),
				InsideShop = vector3(47557.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(455549.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(-1053.82, -230.56, 43.82)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	officer = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	sergeant = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	intendent = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	lieutenant = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	chef = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	},

	boss = {
		{ weapon  = 'WEAPON_NIGHTSTICK',       price = 200 },
		{ weapon  = 'WEAPON_STUNGUN',          price = 500 },
		{ weapon  = 'WEAPON_FLASHLIGHT',       price = 80 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'pranger', label = 'Securitas', price = 1000 }
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
		{ model = 'polmav', label = 'securitas Maverick', livery = 0, price = 200000 }
	},

	chef = {
		{ model = 'polmav', label = 'securitas Maverick', livery = 0, price = 150000 }
	},

	boss = {
		{ model = 'polmav', label = 'securitas Maverick', livery = 0, price = 100000 }
	}
}

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 129,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 1,
			['torso_1'] = 127,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 36,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 65,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 129,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 1,
			['torso_1'] = 127,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 36,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 129,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 1,
			['torso_1'] = 127,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 36,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 65,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 129,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 1,
			['torso_1'] = 127,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 36,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 65,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
	male = {
		['tshirt_1'] = 122,  ['tshirt_2'] = 0,
		['torso_1'] = 129,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 41,
		['pants_1'] = 25,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = 66,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 152,  ['tshirt_2'] = 1,
		['torso_1'] = 127,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 36,
		['pants_1'] = 34,   ['pants_2'] = 0,
		['shoes_1'] = 27,   ['shoes_2'] = 0,
		['helmet_1'] = 65,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0
	}
},
	chef_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 129,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 66,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 1,
			['torso_1'] = 127,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 36,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 65,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
	male = {
		['tshirt_1'] = 122,  ['tshirt_2'] = 0,
		['torso_1'] = 129,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 41,
		['pants_1'] = 25,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = 66,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 152,  ['tshirt_2'] = 1,
		['torso_1'] = 127,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 36,
		['pants_1'] = 34,   ['pants_2'] = 0,
		['shoes_1'] = 27,   ['shoes_2'] = 0,
		['helmet_1'] = 65,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0
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