local TweenService = game:GetService("TweenService")
local Utils = {}

function Utils.Tween(part: Part, duration: number, propertyTable: { [string]: any })
	local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
	local createdTween = TweenService:Create(part, tweenInfo, propertyTable)

	return createdTween
end

return Utils
