#Make a nested data structure with hashes & arrays

refrigerator = {
	door_storage: {
		storage_location: 'Door',
		storage_space: {
			levels: 2,
			compartments: 2
		},

		items_stored: [
			  "Salad Dressing",
			  "Butter",
			  "Mayo"
		]
	},

	top_storage: {
		storage_location: 'Shelfs',
		storage_space: {
			levels: 3,
			compartments: 1
		},

		items_stored: [
			  "Eggs",
			  "Cheese",
			  "Milk"
		  ]
	},

	bottom_storage: {
		storage_location: 'Drawers',
		storage_space: {
			levels: 0,
			compartments: 2
		},

		items_stored: [
			  "Cucumbers",
			  "Premade Salads",
			  "Carrots"
		  ]
	},

}


#Call on various pieces of data & print them

p refrigerator[:door_storage][:storage_location]

p refrigerator[:bottom_storage][:storage_space]

p refrigerator[:top_storage][:items_stored][2]


#Push new item into a storage area

refrigerator[:top_storage][:items_stored].push("Orange Juice")
puts refrigerator[:top_storage][:items_stored]



