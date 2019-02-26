-- Title: AreaOfRectangleAndCircle
-- Name: Bryan Rodriguez
-- Course: ICS2O/3C
-- This program displays a coloured rectangle with a border 
--of a different colour. It also calculates the rectangle 
--are and displays on the screen. Then i added the code 
--to draw a circle of a given radius that is coloured and a 
--border of a different colour. I used the radius to calculate 
--the area and displayed this on the ipad.

-- Create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle
local myCircle
local AreaOfCircle
local PI = 3.14
local radius = 100
local newAreaText

-- set the background colour of my screen.
--Remember that colors are between 0 and 1.
display.setDefault("background", 66/255, 213/255, 115/255)

-- to remove status bar\
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and 
--height of the screen size.
myRectangle = display.newRect(0,0, widthOfRectangle,heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen 
--and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(108/255, 32/255, 159/255)

-- set the color of border
myRectangle:setStrokeColor(171, 125, 202)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration 
-- the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of 	\n" ..
	widthOfRectangle .." and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. "pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/3

-- set the colour of the newText
areaText:setTextColor( 1,1,1 )

-- create circle
myCircle = display.newCircle(850,660, radius)

-- set colour of the circle
myCircle:setFillColor(108/255, 32/255, 159/255)

-- set border for circle
myCircle.strokeWidth = 10

-- calculate area of circle
AreaOfCircle = PI * radius * radius

-- write area on screen
newAreaText = display.newText("The area of this circle with a radius of \n" ..
	radius .." is " ..
	AreaOfCircle ..  " pixels².", 0, 0, Arial, textSize)

-- set text (x.y) position
newAreaText.x = 450
newAreaText.y = display.contentHeight/1.4