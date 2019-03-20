-- Title: MathFun
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...

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


local function AskQuestion(  )
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
	elseif 	
end