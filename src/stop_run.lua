return function()
	local tostring = tostring
	local status = status
	local texio_write = texio.write
	local texio_write_nl = texio.write_nl
	
	texio_write_nl("term", "")
	texio_write_nl("log", "\nMemory statistics:")
	texio_write_nl("log", "\tcs_count         ")
	texio_write("log", tostring(status.cs_count))
	texio_write_nl("log", "\tdyn_used         ")
	texio_write("log", tostring(status.dyn_used))
	texio_write_nl("log", "\tstr_ptr          ")
	texio_write("log", tostring(status.str_ptr))
	texio_write_nl("log", "\tnode_mem_usage   ")
	texio_write("log", status.node_mem_usage)
	texio_write_nl("log", "\tvar_mem_max      ")
	texio_write("log", tostring(status.var_mem_max))
	texio_write_nl("log", "\tvar_used         ")
	texio_write("log", tostring(status.var_used))
	
	local log, something_to_report = require("altlog.box_quality_log").retrieve_log()
	if something_to_report then
		texio_write_nl("log", "Pack quality issues:")
		
		local f = function(v, s)
			if v > 0 then
				texio_write_nl("log", "\t")
				texio_write("log", tostring(v), " ", s, "box")
				if v > 1 then
					texio_write("log", "es")
				end
			end
		end
		
		f(log.h.loose    , "loose h")
		f(log.h.tight    , "tight h")
		f(log.h.underfull, "underfull h")
		f(log.h.overfull , "overfull h")
		f(log.v.loose    , "loose v")
		f(log.v.tight    , "tight v")
		f(log.v.underfull, "underfull v")
		f(log.v.overfull , "overfull v")
		
		--texio_write_nl("term and log", "")
	end
	
	if status.node_mem_usage ~= "" then
		texio_write_nl("term and log", "Possibly leaked: ")
		texio_write("term and log", status.node_mem_usage)
		--texio_write_nl("term", "")
	end
end