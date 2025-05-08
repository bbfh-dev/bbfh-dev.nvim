return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		user_default_options = {
			names = false,
			RGB = true, -- #RGB hex codes
			RGBA = true, -- #RGBA hex codes
			RRGGBB = true, -- #RRGGBBAA hex codes
			RRGGBBAA = true, -- #RRGGBBAA hex codes
			AARRGGBB = false, -- 0xAARRGGBB hex codes
			rgb_fn = true, -- CSS rgb() and rgba() functions
			hsl_fn = true, -- CSS hsl() and hsla() functions
			css = true, -- Enable all CSS *features*:
			-- names, RGB, RGBA, RRGGBB, RRGGBBAA, AARRGGBB, rgb_fn, hsl_fn
			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			mode = "virtualtext",
			virtualtext = "",
		},
	},
}
