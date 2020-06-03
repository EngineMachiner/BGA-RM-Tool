return Def.ActorFrame{
	LoadActor("BGA-RM-Tool.lua")..{
		OnCommand=function(self)
			local screen = SCREENMAN:GetTopScreen()
			if screen:GetName() ~= "ScreenMiniMenuBackgroundChange" then 
				self:visible(false)
			else
				self:visible(true)
			end
		end,
		OffCommand=function(self)
			self:RunCommandsOnChildren( function(child)
				child:finishtweening()
			end )
		end
	}
}