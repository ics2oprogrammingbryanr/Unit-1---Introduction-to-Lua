-- Title: TouchAndDrag
-- Name: Bryan Rodriguez
-- Course: ICS2O/3C
-- This program displays images that react to a person's finger.

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/girl3.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect('Images/girl2.png', 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

local pinkGirl = display.newImageRect("Images/girl1.png", 150, 150)
local pinkGirlWidth = pinkGirl.width
local pinkGirlHeight = pinkGirl.height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false
local alreadyTouchedPinkGirl = false

-- set the initial x and y position of myImage
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

pinkGirl.x = 600
pinkGirl.y = 350

-- Function: BlueGirlListener
-- Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)
	
	if
		(touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) and (alreadyTouchedPinkGirl == false) then
			alreadyTouchedBlueGirl = true
	    end
    end

    if ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
    	blueGirl.x = touch.x
    	blueGirl.y = touch.y
    end	

    if (touch.phase == "ended") then
        alreadyTouchedBlueGirl = false
        alreadyTouchedYellowGirl = false
        alreadyTouchedPinkGirl = false
    end   
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)

local function yellowGirlListener(touch)
	
	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) and (alreadyTouchedPinkGirl == false) then
			alreadyTouchedYellowGirl = true
        end
	end	


    if ( (touch.phase == "moved") and (alreadyTouchedYellowGirl == true) ) then
    	yellowGirl.x = touch.x
    	yellowGirl.y = touch.y
    end
    
    if (touch.phase == "ended") then
        alreadyTouchedYellowGirl = false
        alreadyTouchedBlueGirl = false
        alreadyTouchedPinkGirl = false
    end    	
end

-- add the respective listeners to each object
yellowGirl:addEventListener("touch", yellowGirlListener)   

local function pinkGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) and (alreadyTouchedBlueGirl == false) then
			alreadyTouchedPinkGirl = true
		end
	end
	
	if ( (touch.phase == "moved") and (alreadyTouchedPinkGirl == true) ) then
		pinkGirl.x = touch.x
		pinkGirl.y = touch.y
	end	

	if (touch.phase == "ended") then
	    alreadyTouchedPinkGirl = false
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedYellowGirl = false
	end
end

-- add the respective listeners to each object
pinkGirl:addEventListener("touch", pinkGirlListener)

