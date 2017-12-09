local string_gsub = string.gsub
local log = require("altlog.log")
local til = require("altlog.til").string

return function()
	log(string_gsub(status.lasterrorstring, "\n", "\n" .. til()))
end