print("^2Jim^7-^2JobGarage ^7v^41^7.^44^7.^43 ^7- ^2Job Garage Script by ^1Jimathy^7")

Loc = {}

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- --performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "cdn-fuel", -- Set this to your fuel script folder

	CarDespawn = true, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	Locations = {
		{ 	zoneEnable = true,
			job = "mechanic",
			garage = {
				spawn = vec4(144.48, -2982.8, 6.32, 269.66),  -- Where the car will spawn
				out = vec4(156.31, -3003.62, 7.03, 273.39),	-- Where the parking stand is
				list = {
					["500x"] = {
						CustomName = "500x",
						--colors = { 136, 137 },
						--grade = 4,
						--livery = 5,
						--bulletproof = true,
						--extras = { 1, 4 },
						trunkItems = {
							{ name = "fuelcan", amount = 2, info = {}, type = "item", slot = 1, },
						}
					},
					["towtruck"] = {
						CustomName = "Tow Truck",
						performance= "max",
					},
				},
			},
		},
	--[[	{ 	zoneEnable = true,
			gang = "mafia",
			garage = {
				spawn = vec4(-3046.43, 116.01, 11.09, 319.24),  -- Where the car will spawn
				out = vec4(-3051.88, 113.86, 11.54, 317.81),	-- Where the parking stand is
				list = {
					["19sclassl"] = {
						CustomName = "19sclassl",
						--colors = { 136, 137 },
						--grade = 4,
						--livery = 5,
						--bulletproof = true,
						rank = { 1 },
						performance= "max",
					},
					["demonhawkk"] = {
						CustomName = "demonhawkk",
						--performance= "max",
					},
					["g700brabusretuned"] = {
						CustomName = "g700brabusretuned",
						performance= "max",
					},
				},
			},
		},]]
		{ 	zoneEnable = true,
			job = "uwu",
			garage = {
				spawn = vec4(-608.69, -1059.49, 21.42, 88.95),  -- Where the car will spawn
				out = vec4(-604.87, -1062.7, 21.79, 90.68),	-- Where the parking stand is
				list = {
					["pwd_uwu"] = {
						CustomName = "Delivery Van",
						colors = { 136, 137 },
						--grade = 4,
						livery = 5,
						--bulletproof = true,
						--extras = { 1, 4 },
						trunkItems = {
							{ name = "fuelcan", amount = 2, info = {}, type = "item", slot = 1, },
						}
					},
					["UwUCafeV"] = {
						CustomName = "Delivery Semi Truck",
						colors = { 136, 137 },
						--grade = 4,
						livery = 5,
						--bulletproof = true,
						extras = { 1, 4 },
						trunkItems = {
							{ name = "fuelcan", amount = 2, info = {}, type = "item", slot = 1, },
						}
					},
	
				},
			},
		},
		{ 	zoneEnable = true,
			job = "police",
			garage = {
				spawn = vec4(-1112.5, -854.75, 13.53, 49.64),  -- Where the car will spawn
				out = vec4(-1115.58, -861.8, 13.58, 39.53),
				list = {
					["rexon_dmp3"] = {
						CustomName = "Crown Victoria Patrol Car", ---- Police Rank 0 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp2"] = {
						CustomName = "Caprice Patrol Car", ----- Police Rank 1 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["r1200rtp"] = {
						CustomName = "Patrol Bike", ----- Police Rank 1 to 12 
						livery = 5,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp9"] = {
						CustomName = "Dodge Charger",  ----- Polce Rank 2 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rmodgt63police"] = {
						CustomName = "Mercedes Benz GT63",  ----- Polce Rank 3 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["modelsleo"] = {
						CustomName = "Model S Tesla",   ----- Polce Rank 4 to 12
						livery = 5,
						extras = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp1"] = {
						CustomName = "Chevrolot Camero", ----- Polce Rank 5 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
                    ["polamggtr"] = {
						CustomName = "Mercedes Benz AMG-GTR",   ----- Polce Rank 6 to 12
						livery = 5,
						extras = { 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					-- ["pd_c8"] = {
					-- 	CustomName = "Chevrolet Corvette C8", ----- Polce Rank 6 to 12
					-- 	livery = 5,
					-- 	extras = { 5, 6, 7, 8, 9, 10, 11, 12 },
					-- 	performance = "max",
					-- 	trunkItems = {
					-- 		{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
					-- 		{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
					-- 		{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
					-- 	},
					-- },
                    ["nm_avent"] = {
						CustomName = "Lamborghini SPEED Unit",   ----- Polce Rank 6 to 12
						livery = 5,
						extras = { 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					 ["yzfr6"] = {
						CustomName = "Bike Speed Unit - High Command",  ----- Polce Rank 6 to 12
						livery = 5,
						extras = { 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp7"] = {
						CustomName = "Ford Mustang GT",   ----- Polce Rank 6 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["17cheyenne2"] = {
						CustomName = "FORD Cheyenne OFF-Road",   ----- Polce Rank 2 to 12
						livery = 5,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp5"] = {
						CustomName = "FORD F150 - Off Road",    ----- Polce Rank 3 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp6"] = {
						CustomName = "Ford Tahoe - SUV",   ----- Polce Rank 4 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp8"] = {
						CustomName = "Ford Explorer - SUV", ----- Polce Rank 5 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["rexon_dmp4"] = {
						CustomName = "Dodge Durango - SUV",  ----- Polce Rank 6 to 12
						livery = 5,
						extras = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
						trunkItems = {
							-- { name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							-- { name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							-- { name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},

				},
			},
		},
		{ 	zoneEnable = true,
			job = "police",
			garage = {
				spawn = vec4(-1095.62, -834.98, 37.83, 213.72),
				out = vec4(-1108.93, -833.49, 37.68, 227.73),
				list = {
					["polmav"] = {
						CustomName = "polmav",
						livery = 2,
						extras = { 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
				},
			},
			
		},
		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(289.56, -572.29, 43.19, 67.98),
				out = vec4(299.1, -573.53, 43.26, 111.38),
				list = {
					["emx_ambulance"] = {
						CustomName = "Ambulance",
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						rank = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emx_avent"] = {
						CustomName = "EMS LAMBO",
						livery = 1,
						rank = { 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emx_speedunit"] = {
						CustomName = "EMS AMG GT63",
						rank = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emx3"] = {
						CustomName = "EMS BMW X6",
						rank = { 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emx7"] = {
						CustomName = "EMS TESLA",
						rank = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emx14"] = {
						CustomName = "Motorcycle",
						rank = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emscode3camero"] = {
						CustomName = "EMS CAMERO",
						rank = { 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emscode318tahoe"] = {
						CustomName = "EMS TAHOE",
						rank = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["pd_gwagon"] = {
						CustomName = "G-Wagon",
						rank = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(351.25, -587.48, 74.16, 250.95),
				out = vec4(344.81, -578.24, 74.16, 211.88),
				list = {
					["emx_heli"] = {
						CustomName = "Ems Heli",
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						--performance = "max",
						rank = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						trunkItems = {
							-- { name = "painkillers", amount = 20, info = {}, type = "item", slot = 1, },
							-- { name = "bandage", amount = 20, info = {}, type = "item", slot = 2, },
							-- { name = "firstaid", amount = 10, info = {}, type = "item", slot = 3, },
						},
					},
				},
			},

		},
	},
}
