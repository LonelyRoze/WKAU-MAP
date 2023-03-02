local widget = require("widget")
local mapM = require ("mapMaganer")

local composer = require("composer")
local scene = composer.newScene()
function scene:create(event)
local sceneGroup = self.view
mapImage = mapM.new("maps/glK/4fl.png", 2000, 500, 1000, 200, sceneGroup)

local back = widget.newButton{
    width = 100, height = 55,
    left = 10, top = -70,
    defaultFile = "buttons/back.png",
    onPress = function (event)
        composer.gotoScene ("mainMap")
        composer.removeScene( "mainBuild4" )
    end
    }
local b1 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button1prsd.png",
    onPress = function (event)
        composer.gotoScene ("mainBuild")
        composer.removeScene( "mainBuild4" )
    end
    }
b1.x = display.contentCenterX-75
b1.y = 500

local b2 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button2prsd.png",
    onPress = function (event)
        composer.gotoScene ("mainBuild2")
        composer.removeScene( "mainBuild4" )
    end
    }
b2.x = display.contentCenterX-25
b2.y = 500

local b3 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button3prsd.png",
    onPress = function (event)
        composer.gotoScene ("mainBuild3")
        composer.removeScene( "mainBuild4" )
    end
    }
b3.x = display.contentCenterX+25
b3.y = 500

local b4 = widget.newButton{
    width = 50, height = 50,
    defaultFile = "buttons/button4.png",
    }
b4.x = display.contentCenterX+75
b4.y = 500


sceneGroup:insert(back)
sceneGroup:insert(b1)
sceneGroup:insert(b2)
sceneGroup:insert(b3)
sceneGroup:insert(b4)
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene