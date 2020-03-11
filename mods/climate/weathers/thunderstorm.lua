------------------------------
-- thunderstorm weather
-- grey sky rain, heavy intensity, lightning

------------------------------

local thunderstorm = {


	name = 'thunderstorm',

	--day, night, sunrise/sunset
	sky_color_day = 60,
	sky_color_night = 15,

	fog = 180,

	clouds_color = "#505050",
	clouds_density = 0.6,
	clouds_height = 460,
	clouds_thickness = 128,
	clouds_speed = {x=2, z=0},

	sound_loop = 'heavy_rain_loop',

	--probabilities in each temp class
	chain = {
		--name, p_cold, p_mid , p_hot
		{'heavy_rain', 0.01, 0.25, 0.5, 0.75},
		{'superstorm', 0, 0, 0, 0.05},
		{'snowstorm', 1, 0, 0, 0}


	},


	particle_interval = 0.001,

	particle_function = function()
		local vel = -10
		local acc = -10
		local ext = 6
		local size = 40
		local tex = "heavy_rain_drops.png"
		local sound = ""

		climate.add_particle(vel, acc, ext, size, tex)

		if math.random() < 0.002 then
			lightning.strike()
		end
	end,


}

--add this weather to register
climate.register_weather(thunderstorm)


------
