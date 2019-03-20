-- Title: TouchAndReact
-- Name: Your Name
-- Course: ICS2O/3C
-- This program 

-- set background colour
display.setDefault ("background", 100/255, 255/255, 150/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button
local BlueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
BlueButton.x = display.contentWidth/2
BlueButton.y = display.contentHeight/2
BlueButton.isVisable = true

-- create red button, set its position and make it invisable
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisable = false

-- create text object, set its position and make it invisable
local textObject = display.newText("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (0, 0, 0)
textObject.isVisable = false

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button,
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		BlueButton.isVisable = false
		redButton.isVisable = true
		textObject.isVisable = true
	end
	
	if (touch.phase == "ended") then
	BlueButton.isVisable = true
	redButton.isVisable = false
	textObject.isVisable = false
	end
end		

local function redButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisable = false
        textObject.isVisable = false
        BlueButton.isVisable = true
    end
    
    if (touch.phase == "began") then
        redButton.isVisable = true
        textObject.isVisable = true
        BlueButton.isVisable = false  
	end  
end



-- add the respective listener to each object	
BlueButton:addEventListener("touch", BlueButtonListener)

redButton:addEventListener("touch", redButtonListener)