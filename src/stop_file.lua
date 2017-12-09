local texio_write = texio.write
local log_newline = require("altlog.til").newline

local category2character_stop = {
	")",
	"}",
	">",
	">",
	">"
}

return function(category)
	if category == 1 then
		log_newline()
		texio_write("log", category2character_stop[category])
	else
		texio_write("log", category2character_stop[category])
	end
end