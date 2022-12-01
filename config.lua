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
        showblip = true,
		showmarker = true
    },
    {  --rhodes
        name = 'Rhodes Cart Rental', 
        location = 'rhodes-rental',
        coords = vector3(1326.1086, -1349.499, 78.475563),
        spawn = vector4(1327.3864, -1353.267, 78.667251, 252.41503),
        showblip = true,
		showmarker = true
    },
    {  --stdenis
        name = 'St Denis Cart Rental', 
        location = 'stdenis-rental',
        coords = vector3(2496.9257, -1445.485, 46.326038),
        spawn = vector4(2490.4243, -1445.646, 46.024135, 186.20204),
        showblip = true,
		showmarker = true
    },
    {  --vanhorn
        name = 'Van Horn Cart Rental', 
        location = 'vanhorn-rental',
        coords = vector3(2983.3496, 588.80401, 44.175907),
        spawn = vector4(2980.6357, 586.26287, 44.161964, 103.93789),
        showblip = true,
		showmarker = true
    },
    {  --annesburg
        name = 'Annesburg Cart Rental', 
        location = 'annesburg-rental',
        coords = vector3(2984.9394, 1420.586, 44.992458),
        spawn = vector4(2987.5661, 1415.221, 44.752227, 115.65804),
        showblip = true,
		showmarker = true
    },
    {  --strawberry
        name = 'Strawberry Cart Rental', 
        location = 'strawberry-rental',
        coords = vector3(-1780.192, -441.0309, 155.09544),
        spawn = vector4(-1784.438, -439.6345, 155.23538, 82.847785),
        showblip = true,
		showmarker = true
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
        showblip = true,
		showmarker = true
    },
}
