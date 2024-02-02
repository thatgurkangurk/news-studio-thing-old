local ServerStorage = game:GetService("ServerStorage")
local IsScreenOn = ServerStorage.IsScreenOn

local ScreenManager = {}

function ScreenManager.ToggleScreen()
	IsScreenOn.Value = not IsScreenOn.Value
end

return ScreenManager
