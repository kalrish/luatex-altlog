local texio_write = texio.write
local texio_write_nl = texio.write_nl
local register_incident = require("altlog.box_quality_log").register_incident

return function(box_letter, incident, detail)
	local log_target
	if incident == "underfull" or incident == "overfull" then
		log_target = "term and log"
	else
		log_target = "log"
	end
	
	texio_write_nl(log_target, "")
	texio_write(log_target, "pack quality: ", incident, " ", box_letter, "box ")
	if incident == "overfull" then
		texio_write(log_target, "by ", tostring(detail), "sp")
	else
		texio_write(log_target, "(badness ", tostring(detail), ")")
	end
	
	register_incident(box_letter, incident)
end