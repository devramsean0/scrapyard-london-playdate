import "display" -- DEMO
import "CoreLibs/crank"
import 'CoreLibs/timer.lua'
local thingy = thingy() -- DEMO

local gfx <const> = playdate.graphics
local font = gfx.font.new('font/Mini Sans 2X') -- DEMO

local function loadGame()
	playdate.display.setRefreshRate(50) -- Sets framerate to 50 fps
	math.randomseed(playdate.getSecondsSinceEpoch()) -- seed for math.random
	gfx.setFont(font) -- DEMO
end

local function updateGame()
	-- thingy:update() -- DEMO
end

local function drawGame()
	gfx.clear() -- Clears the screen
	thingy:draw() -- DEMO
end

loadGame()

function sendCrankTicks()
	if playdate.isCrankDocked() then
		print(0)
	end
	local crankTicks = playdate.getCrankTicks(10)
	print(math.abs(crankTicks))
	playdate.timer.new(1000, sendCrankTicks)
end

countdownTimer = playdate.timer.new(0, sendCrankTicks)

function playdate.update()
	updateGame()
	drawGame()
	playdate.drawFPS(0,0) -- FPS widget
	playdate.timer.updateTimers()
end