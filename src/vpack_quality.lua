local pack_quality = require("altlog.pack_quality")

return function(incident, detail)
	pack_quality("v", incident, detail)
end