local EzCollider = require("EzCollider")
local function SetBGColor(r,g,b)
	love.graphics.setBackgroundColor(r/255,g/255,b/255)
end
local function SetupWindow(Size)
	love.window.setMode(Size[1],Size[2])
end
function love.load()
	SetupWindow({1200,720})
	EzCollider.Collider.CreateHitbox('hitbox1', {100,100}, {200,200})
end
function love.update(dt)

end
function love.draw()
	local MouseX, MouseY = love.mouse.getPosition()
	SetBGColor(0,0,0)
	if EzCollider.Collider.CollisionDetect({MouseX,MouseY}, 'hitbox1') then
		love.graphics.setColor(100/255,100/255,100/255)
	else
		love.graphics.setColor(255/255,255/255,255/255)
	end
	love.graphics.rectangle("fill", 100,100, 200, 200)

	love.graphics.setColor(255/255,255/255,255/255)
	love.graphics.print(tostring(EzCollider.Collider.CollisionDetect({MouseX,MouseY}, 'hitbox1')),0,0)

end