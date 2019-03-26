-- Title: LivesAndTimers
-- Name: Your Name
-- Course: ICS2O/3C
-- This program 


-- variables for timer
local totalSeconds = 5
local secondsLeft = 5
local clockText
local countDownTimer

local lives = 3
local heart1
local heart2

------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------

local function UpdateTime()

	-- decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		-- reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1

		-- *** IF THERE ARE NO LIVES LEFT, PLAY A LOSE SOUND, SHOW A YOU LOSE IMAGE
		-- AND CANCEL THE TIMER REMOVE THE THIRD HEART BY MAKING IT INVISABLE
		if (lives == 2) then
			heart2.isVisable = false
		elseif	(lives == 1) then
			heart1.isVisable = false
		end
		
		-- *** CALL THE FUNCTION TO ASK A NEW QUESTUION

	end		
end

-- function that calls the timer
local function StartTimer()
	-- create a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0 )
end	

------------------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------------------
heart1 = display.newImageRect("Images/heart (1).png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

heart2 = display.newImageRect("Images/heart (1).png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

display.setStatusBar(display.HiddenStatusBar)
-- set background colour
display.setDefault("background", 24/255, 146/255, 30/255)

-- sreate local variables
local randomNumber1
local randomNumber2
local correctAnswer
local questionObject
local correctObject
local userAnswer
local randomOperator
local numericField

local function AskQuestion()
	-- genarate a random number between 1 and 2

	randomOperator = math.random(1,2)

	-- genarate 2 random numbers
	randomNumber1 = math.random(0, 4)
	randomNumber2 = math.random(0, 4)

	-- if the random operator is 1, then do addition
	if (randomOperator == 1) then

		-- calculate the correct answer
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	     -- otherwise, if the random operator is 2, do subtraction
	elseif (randomOperator == 2) then
		-- calculate the correct answer
		correctAnswer = randomNumber1 - randomNumber2

		-- create question in the text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
	end	
end

-- call function
AskQuestion()