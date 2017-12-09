local something_happened = false
local log = {
	["h"] = {
		loose = 0,
		tight = 0,
		underfull = 0,
		overfull = 0
	},
	["v"] = {
		loose = 0,
		tight = 0,
		underfull = 0,
		overfull = 0
	}
}

return {
	register_incident = function(box_type, incident)
		log[box_type][incident] = log[box_type][incident] + 1
		something_happened = true
	end,
	retrieve_log = function()
		return log, something_happened
	end
}
