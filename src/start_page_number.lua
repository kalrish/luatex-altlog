local tostring = tostring
local texio_write = texio.write
local texio_write_nl = texio.write_nl
local tex_getcount = tex.getcount

return function()
	texio_write_nl("log", "[ ")
	texio_write("log", tostring(tex_getcount(0)))
end