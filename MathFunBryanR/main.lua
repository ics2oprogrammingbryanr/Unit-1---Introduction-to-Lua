-- Title: MathFun
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...

display.setStatusBar(display.HiddenStatusBar)
-- set background colour
display.setDefault("background", 24/255, 146/255, 30/255)

--------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------
--------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericTextField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

--------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------

local function AskQuestion()
	-- genarate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

end

local function  HideCorrect()
	correctObject.isVisable = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisable = true
				timer.performWithDelay(2000, HideCorrect)

			end	

	end
end			

-------------------------------------------------------------
-- OBJECT CREATION
-------------------------------------------------------------

-- disaplays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(100/255, 3/255, 50/255)

-- create the correct text object and make it invisable
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(155/255, 155/255, 3/255)
correctObject.isVisable = false

-- Create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numericField.inputType = "number"

-- add the event listener for numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

-----------------------------------------------------------------------------
-- FUNCTION CALLS
-----------------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()
-- sreate local variables



local function AskQuestion()
	-- genarate a random number between 1 and 2

	randomOperator = math.random(1,4)

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

		-- create question in text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
    end
end


-- call function
AskQuestion()
--------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------

-- create local variables


--------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------

