print("The LuaPLUS test script!")
print "Written by fishy!"

--[[
	LuaPLUS syntax:
		Assignments: +=, -=, /=, *=, ^=, %=, ..=
		Other: json{} | json[] (Enters a JSON parser, still access to variables, but can't parse functions, or anything non json, subarrays and objects will automatically be parsed as json, so no need to rewrite keyword)
		nil has a new alias "null"
		continue statement exists for continuing loops with respect to the loop condition.
		Can call functions with numbers without (), ex: abc 15
--]]




-- Json parser test
-- https://opensource.adobe.com/Spry/samples/data_region/JSONDataSetSample.html
local jsonSample = json[
	{
		"id": "0001",
		"type": "donut",
		"name": "Cake",
		"ppu": 0.55,
		"batters":
			{
				"batter":
					[
						{ "id": "1001", "type": "Regular" },
						{ "id": "1002", "type": "Chocolate" },
						{ "id": "1003", "type": "Blueberry" },
						{ "id": "1004", "type": "Devil's Food" }
					]
			},
		"topping":
			[
				{ "id": "5001", "type": "None" },
				{ "id": "5002", "type": "Glazed" },
				{ "id": "5005", "type": "Sugar" },
				{ "id": "5007", "type": "Powdered Sugar" },
				{ "id": "5006", "type": "Chocolate with Sprinkles" },
				{ "id": "5003", "type": "Chocolate" },
				{ "id": "5004", "type": "Maple" }
			]
	},
	{
		"id": "0002",
		"type": "donut",
		"name": "Raised",
		"ppu": 0.55,
		"batters":
			{
				"batter":
					[
						{ "id": "1001", "type": "Regular" }
					]
			},
		"topping":
			[
				{ "id": "5001", "type": "None" },
				{ "id": "5002", "type": "Glazed" },
				{ "id": "5005", "type": "Sugar" },
				{ "id": "5003", "type": "Chocolate" },
				{ "id": "5004", "type": "Maple" }
			]
	},
	{
		"id": "0003",
		"type": "donut",
		"name": "Old Fashioned",
		"ppu": 0.55,
		"batters":
			{
				"batter":
					[
						{ "id": "1001", "type": "Regular" },
						{ "id": "1002", "type": "Chocolate" }
					]
			},
		"topping":
			[
				{ "id": "5001", "type": "None" },
				{ "id": "5002", "type": "Glazed" },
				{ "id": "5003", "type": "Chocolate" },
				{ "id": "5004", "type": "Maple" }
			]
	}
]


function readJson(num)
	table.foreach(jsonSample[num], print)
end


-- Calling functions with numbers test
readJson 1
readJson 2
readJson 3


-- Addition assignment and continue statement test
sum = 0
for i = 1, 50 do
	if i % 5 != 0 then continue else print("mod 5:", i); sum += i end
end

print("sum:", sum)



-- Label test
print("Hello there!")

for i = 1, 100 do
	print("the loop is:", i)
	goto skipEnding
	print"I will never speak"
end

label sayDone
print"loop is done!"
goto errorTests

label skipEnding
print"I am finished!"
for x = 1, 100 do 
	print(x)
	if x == 5 then 
		goto sayDone 
	else 
		continue 
	end
end

label errorTests

local function print2(_, msg)
	print(msg)
end	

print2(loadstring([[
goto a
goto b
goto c
goto d
goto e
goto f
goto g
goto h
goto i
goto j
goto k
goto l
goto m
goto n
goto o
goto p
goto q
goto r
goto s
goto t
goto u
goto v
goto w
goto x
goto y
goto z
goto A
goto B
goto C
goto D
goto E
goto F
goto G
goto H
goto H1
goto H2
goto H3
goto H4
goto H5
goto H6
goto H7
goto H8
goto H0
goto H9
goto H10
goto H11
goto H12
goto H13
goto H14
goto H15
goto H16
goto H17
goto H18
goto H19
goto H20
goto H21
goto H22
goto H23
goto H24
goto H25
goto H26
goto H27
goto H28
goto H29
goto H30
goto H31
goto H32
goto H33
]]))

print2(loadstring([[
	label x
	label y
	goto y
	label y
]]))

print2(loadstring([[
	goto x
]]))

print"Test script is done!"
