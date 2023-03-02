local widget = require("widget")
local mapM = require ("mapMaganer")

local composer = require("composer")
local scene = composer.newScene()
function scene:create(event)
local sceneGroup = self.view
mapImage = mapM.new("maps/pol/1fl.png", 1500, 750, -150, 100, sceneGroup)

local back = widget.newButton{
    width = 100, height = 55,
    left = 10, top = -70,
    defaultFile = "buttons/back.png",
    onPress = function (event)
        composer.gotoScene ("mainMap")
        composer.removeScene( "polBuild1" )
    end
    }
local b1 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button1.png",
    }
b1.x = display.contentCenterX - 50
b1.y = 500

local b2 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button2prsd.png",
    onPress = function (event)
        composer.gotoScene ("polBuild2")
        composer.removeScene( "polBuild1" )
    end
    }
b2.x = display.contentCenterX
b2.y = 500

local b3 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button3prsd.png",
    onPress = function (event)
        composer.gotoScene ("polBuild3")
        composer.removeScene ("polBuild1")
    end
    }
b3.x = display.contentCenterX + 50
b3.y = 500



sceneGroup:insert(back)
sceneGroup:insert(b1)
sceneGroup:insert(b2)
sceneGroup:insert(b3)
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene