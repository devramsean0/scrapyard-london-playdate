import "CoreLibs/graphics"
import "CoreLibs/object"

local gfx <const> = playdate.graphics

thingy={}
class("thingy").extends()

function thingy:init()
    self.label = {
		x = 155,
		y = 110,
		width = 100,
		height = 20
	}
end

function thingy:draw()
    local label = self.label;
    gfx.drawTextInRect("Uhh idk", label.x, label.y, label.width, label.height)
end