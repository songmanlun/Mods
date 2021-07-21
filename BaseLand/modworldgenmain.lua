GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})
require("map/tasks")
require("map/lockandkey")

local Layouts = require("map/layouts").Layouts
local StaticLayout = require("map/static_layout")

Layouts["岛屿"] = StaticLayout.Get("map/static_layouts/" + GetModConfigData('LandType'), 
{
        start_mask = PLACE_MASK.IGNORE_IMPASSABLE_BARREN_RESERVED,
        fill_mask = PLACE_MASK.IGNORE_IMPASSABLE_BARREN_RESERVED,
        layout_position = LAYOUT_POSITION.CENTER,
        disable_transform = true,
    }
)

AddLevelPreInitAny(function(level)
	if level.location == "forest" then
		if level.ocean_prefill_setpieces ~= nil then
			level.ocean_prefill_setpieces["岛屿"]  = 1
		end
	end
end)