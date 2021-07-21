--杨戬使用魔法
local function builder(self)
	local old_canbuild = self.CanBuild
	function self:CanBuild(recname, ...)
		local recipe = GetValidRecipe(recname)
		if recipe == nil then
			return false
		elseif self.inst.prefab == "yangjian" and recipe.tab  == RECIPETABS.MAGIC then
			return true
		end
		return old_canbuild(self,recname, ...)
	end
end
AddComponentPostInit('builder', builder)
AddClassPostConstruct('components/builder_replica', builder)
local function nomagic(self)
	if self.owner and self.owner.prefab == "yangjian" then
		self.owner:DoTaskInTime(0.1, function()
			for k,v in pairs(self.tabbyfilter) do 
				if k.str == "MAGIC" then 
					v:Show() 
					break
				end 
			end	
		end)
	end
end
AddClassPostConstruct('widgets/crafttabs', nomagic)