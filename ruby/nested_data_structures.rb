street = {
	yellow_car: { 
					amount_of_people_inside: 2,
					fred: {
						function: "driver",
						clothes: ["jeans", "t-shirt", "sunglasses", "baseball hat"],
						appearance: ["blue eyes", "brown hair", "skinny"]
							},
					sara: {
						function: "navigator ",
						clothes: ["dress" , "sunglasses", "jewelry"],
						appearance: ["brown eyes", "blond hair"]
							}
					
				},				
	truck:  { 
			amount_of_people_inside: 1,
					bob: {
						function: "driver",
						clothes: ["jeans", "tank-top", "sunglasses", "baseball hat"],
						appearance: ["green eyes", "brown hair", "mullet"]
							}

			},
	
	school_bus: { 	amount_of_people_inside: 5,
					marc: {
						function: "driver",
						clothes: ["school uniform", "hoodie" ],
						appearance: ["brown eyes", "brown hair"]
							},
					Kate: {
						function: "student",
						clothes: ["school uniform", "necklace" ],
						appearance: ["brown eyes", "blond hair"]
							},
					don: {
						function: "student",
						clothes: ["school unifrom", "jacket" ],
						appearance: ["brown eyes", "brown hair"]
							},
					stella: {
						function: "student",
						clothes: ["school uniform", "sneakers" ],
						appearance: ["blue eyes", "black hair", "skinny"]
							},
					steve: {
						function: "student",
						clothes: ["School uniform", "sandals", "beanie" ],
						appearance: ["green eyes", "brown hair"]
							}
				

				}
		}


p street

p street[:yellow_car][:fred][:clothes][0]
p street[:school_bus][:stella][:appearance]
p street[:school_bus][:amount_of_people_inside]
p street[:truck][:bob]