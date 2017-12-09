local texio_write = texio.write
local log_newline = require("altlog.til").newline

return function(...)
	log_newline()
	texio_write("log", ...)
end