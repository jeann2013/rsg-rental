Config = {}

-- settings
Config.WaitTime = 10000
Config.CartRentalPrice = 50
Config.BuggyRentalPrice = 75
Config.CoachRentalPrice = 100

-- blip settings
Config.Blip = {
    blipName = 'Cart Rental', -- Config.Blip.blipName
    blipSprite = 'blip_teamsters', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

-- rental locations
Config.RentalLocations = {
	{  --valentine
		name = 'Valentine Cart Rental', 
		location = 'valentine-rental',
		coords = vector3(-359.7764, 802.31512, 116.25724),	
		spawn = vector4(-357.472, 805.90936, 116.25698, 210.50601),
		showblip = true
	},
	{  --rhodes
		name = 'Rhodes Cart Rental', 
		location = 'rhodes-rental',
		coords = vector3(1326.1086, -1349.499, 78.475563),	
		spawn = vector4(1327.3864, -1353.267, 78.667251, 252.41503),
		showblip = true
	},
	{  --stdenis
		name = 'St Denis Cart Rental', 
		location = 'stdenis-rental',
		coords = vector3(2496.9257, -1445.485, 46.326038),	
		spawn = vector4(2490.4243, -1445.646, 46.024135, 186.20204),
		showblip = true
	},
	{  --vanhorn
		name = 'Van Horn Cart Rental', 
		location = 'vanhorn-rental',
		coords = vector3(2983.3496, 588.80401, 44.175907),	
		spawn = vector4(2980.6357, 586.26287, 44.161964, 103.93789),
		showblip = true
	},
	{  --annesburg
		name = 'Annesburg Cart Rental', 
		location = 'annesburg-rental',
		coords = vector3(2984.9394, 1420.586, 44.992458),	
		spawn = vector4(2987.5661, 1415.221, 44.752227, 115.65804),
		showblip = true
	},
	{  --strawberry
		name = 'Strawberry Cart Rental', 
		location = 'strawberry-rental',
		coords = vector3(-1780.192, -441.0309, 155.09544),	
		spawn = vector4(-1784.438, -439.6345, 155.23538, 82.847785),
		showblip = true
	},
	{  --armadillo
		name = 'Armadillo Cart Rental', 
		location = 'armadillo-rental',
		coords = vector3(-3676.431, -2606.413, -13.75346),	
		spawn = vector4(-3677.256, -2610.204, -14.08433, 95.46231),
		showblip = true
	},
	{  --tumbleweed
		name = 'Tumbleweed Cart Rental', 
		location = 'tumbleweed-rental',
		coords = vector3(-5513.243, -2930.745, -2.288692),	
		spawn = vector4(-5516.071, -2933.612, -2.14677, 232.88562),
		showblip = true
	},
}

Config.CartRentalNpc = {
	[1] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(-361.3422, 802.80828, 116.25799 -1), ["Heading"] = 297.24212 }, -- valentine
	[2] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(1325.3746, -1348.853, 78.371551 -1), ["Heading"] =  230.81137 }, -- rhodes
	[3] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(2497.6079, -1445.624, 46.326683 -1), ["Heading"] =  82.215194 }, -- stdenis
	[4] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(2983.6984, 589.40747, 44.193241 -1), ["Heading"] =  140.94485 }, -- vanhorn
	[5] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(2984.9604, 1421.2645, 44.958709 -1), ["Heading"] =  180.149 }, -- annesburg
	[6] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(-1779.948, -441.1491, 155.0829 -1), ["Heading"] =  72.061584 }, -- strawberry
	[7] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(-855.3488, -1360.902, 43.630363 -1), ["Heading"] =  274.14013 }, -- blackwater
	[8] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(-3676.465, -2605.684, -13.72589 -1), ["Heading"] =  184.95193 }, -- armadillo
	[9] = { ["Model"] = "CS_BivCoachDriver", ["Pos"] = vector3(-5512.892, -2930.157, -2.305891 -1), ["Heading"] =  149.23376 }, -- tumbleweed
}
