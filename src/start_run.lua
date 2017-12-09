return function()
	local status = status
	local texio_write = texio.write
	local texio_write_nl = texio.write_nl
	
	texio_write_nl("log", status.banner)
	texio_write_nl("log", "LuaTeX engine   :  ")
	texio_write("log", status.luatex_engine)
	texio_write_nl("log", "LuaTeX version  :  ")
	texio_write("log", tostring(status.luatex_version))
	texio_write_nl("log", "LuaTeX revision :  ")
	texio_write("log", status.luatex_revision)
end
