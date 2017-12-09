local string_rep = string.rep
local status = status
local texio_write = texio.write
local texio_write_nl = texio.write_nl

local category2character_start = {
	"(",
	"{",
	"<",
	"<",
	"<"
}

return function(category, filename)
	texio_write_nl("log", string_rep("\t", status.input_ptr - 1))
	if category == 1 then
		texio_write("log", category2character_start[category], " ", filename)
	else
		texio_write("log", category2character_start[category], filename)
	end
end