GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})
getmetatable(TheSim).__index.HasPlayerSkeletons = function() return true end

modimport("main/support.lua")