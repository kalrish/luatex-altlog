local string_rep = string.rep
local status = status
local texio_write_nl = texio.write_nl

local str = function()
	return string_rep("\t", status.input_ptr)
end

return {
	string = str,
	newline = function()
		texio_write_nl("log", str())
	end
}