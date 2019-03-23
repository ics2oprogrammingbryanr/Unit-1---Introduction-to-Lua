-- Title: HelloWorld
-- Name: Bryan Rodriguez
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background color
display.setDefault ("background", 0/255, 55/255, 0,255)

-- create text
local textObject1 = display.newText("Hello Bryan", 0, 0, nil, 50)
textObject1.x = display.contentWidth/2
textObject1.y = 300
textObject1:setTextColor (0, 1, 0)

local textObject2 = display.newText("By: Bryan Rodriguez", 0, 0, nil, 50)
textObject2.x = display.contentWidth/2
textObject2.y = 350