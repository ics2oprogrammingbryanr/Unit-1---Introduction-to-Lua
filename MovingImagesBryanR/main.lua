-- Title: MovingObjects
-- Name: Bryan Rodriguez
-- Course: ICS2O/3C
-- This program moves a beetleship 
-- across the screen and then makes it fade out.
-- I added another object that moves in a different 
-- directiion aswell as a background image

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- backgrond image with width and height
local backgrondgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image withwidth and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed
-- to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time 
	-- it moves so that it fades out
end

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", Moveship)