-- Title: PhysicsAndCollisions
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays balls that bounce around

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

local physics = require("physics")

-- start physics
physics.start()
-------------------------------------------------------------------
--OBJECTS
-------------------------------------------------------------------

-- ground
local ground = display.newImage("Images/Images/ground.png", 0, 0)
   
   -- Change height
   ground.height = 104
   
   -- Change the width to be the same as the screen
   ground.width = display.contentWidth

   -- add physics
   physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

--------------------------------------------------------------------------------

   -- create beam
   local beam = display.newImage("Images/Images/beam.png")

   -- set x and y position of beam
   beam.x = display.contentCenterX/5
   beam.y = display.contentCenterY*1.65

   beam.height = 104
   beam.width = 512

   -- send it to the back layer
   beam:toBack()

   -- add to physics
   physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- create bkg
local bkg = display.newImage("Images/Images/bkg.png", 0, 0)

-- set the x and y position of bkg
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

bkg.width = 1024
bkg.height = 768