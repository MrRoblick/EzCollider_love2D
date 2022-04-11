local HitBoxes = {}
local EzCollider = EzCollider
function EzCollider.CreateHitbox(Name, Pos, size)
	HitBoxes[tostring(Name)] = {Position={Pos[1],Pos[2]}, Size={size[1],size[2]}}
end
function EzCollider.CollisionDetect(PositionStart, HitName)
	if HitName ~= nil and HitBoxes[tostring(HitName)] ~= nil then
		local FindHitbox = HitBoxes[tostring(HitName)]
		if (PositionStart[1] >= FindHitbox.Position[1] and PositionStart[1] <= FindHitbox.Position[1] + FindHitbox.Size[1]) and (PositionStart[2] >= FindHitbox.Position[2] and PositionStart[2] <= FindHitbox.Position[2] + FindHitbox.Size[2]) then
			return true
		else
			return false
		end
	end
end
return EzCollider