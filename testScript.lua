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


readJson 1
readJson 2
readJson 3


for i = 1, 50 do
	if i % 5 == 0 then continue end
end