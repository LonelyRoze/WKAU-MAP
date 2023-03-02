local widget = require("widget")
local composer = require("composer")
local scene = composer.newScene()


function scene:create(event)
local sceneGroup = self.view

display.setDefault('background', 247/255, 246/255, 232/255)
local mapImage = display.newImageRect("maps/улица2.png", 500, 600)
mapImage.x = 170
mapImage.y = 260

local button1 = widget.newButton {
        width = 141,8, height = 125,1, 
        left = 169,5, top = 221,5,
        defaultFile = "buttons/02Button.png",
        onPress = function (event)
            composer.gotoScene( "mainBuild" )
            composer.removeScene( "mainMap" )
            end
        }

local button2 = widget.newButton{
        width = 92,4, height = 19,8, 
        left = 153, top = 160,
        defaultFile = "buttons/03Button.png",
        onPress = function (event)
            composer.gotoScene( "agroBuild1" )
            composer.removeScene( "mainMap" )
            end
        }
local button3 = widget.newButton {
        width = 93, height = 20, 
        left = 152, top = 119,
        defaultFile = "buttons/04Button.png",
        onPress = function (event)
            composer.gotoScene( "vetBuild1" )
            composer.removeScene( "mainMap" )
            end
        }
local button4 = widget.newButton {
        width = 90, height = 37, 
        left = 45, top = 93,
        defaultFile = "buttons/06Button.png",
        onPress = function (event)
            composer.gotoScene( "masBuild1" )
            composer.removeScene( "mainMap" )
            end
    }
local button5 = widget.newButton {
        width = 102, height = 53, 
        left = 148, top = -2,
        defaultFile = "buttons/05Button.png",
        onPress = function (event)
            composer.gotoScene( "polBuild1" )
            composer.removeScene( "mainMap" )
            end
    }
sceneGroup:insert(mapImage)
sceneGroup:insert(button1)
sceneGroup:insert(button2)
sceneGroup:insert(button3)
sceneGroup:insert(button4)
sceneGroup:insert(button5)

end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene