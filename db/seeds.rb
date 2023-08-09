#Creates seed data for 7 different users
puts "seeding Users... 🌱"
    User.create(
        name: "Alex Njagi",
        status: "Farming Group Administrator",
        group_number: 8,
        location: "Chromatica",
        phone_number: "1903948576",
        email: "aisforalex@gmail.com",
        password: "Oh! Oh No! Oh No! Oh No! Oh!"
    )
    User.create(
        name: "Anita Galina",
        status: "Farming Group Administrator",
        group_number: 4,
        location: "Wattenbek",
        phone_number: "1728501938",
        email: "anitawgalina@gmail.com",
        password: "Anita Galina"
    )
    User.create(
        name: "Dennis Marangu",
        status: "Farming Group Administrator",
        group_number: 3,
        location: "Blejoiu",
        phone_number: "1728374838",
        email: "dennismarangu@gmail.com",
        password: "Dennis Marangu"
    )
    User.create(
        name: "Lewis Mawira",
        status: "Farming Group Administrator",
        group_number: 9,
        location: "Montecito",
        phone_number: "3928275608",
        email: "lewismawira@gmail.com",
        password: "Lewis Mawira"
    )
    User.create(
        name: "Mark Chege",
        status: "Farming Group Administrator",
        group_number: 7,
        location: "Oceanport",
        phone_number: "5738495824",
        email: "markchege@gmail.com",
        password: "Mark Chege"
    )
    User.create(
        name: "Marina and the Diamonds",
        status: "Public Client",
        location: "FROOT",
        phone_number: "7676767676",
        email: "marinadiamonds@gmail.com",
        password: "Primadonna"
    )
    User.create(
        name: "Claire Lynch",
        status: "Public Client",
        location: "Parklands",
        phone_number: "5656565656",
        email: "clairelynch@gmail.com",
        password: "Claire Lynch"
    )
puts "Users seeded 🌱"


#Creates seed data for 8 different farmer products
puts "seeding FarmerProducts... 🌱"
    FarmerProduct.create(
        name: "Bag Of Fertilizer",
        price: 2500,
        image: "https://tinyurl.com/2jee46ce",
        description: "A lovely bag of fertilizer to help pep up the step of your farm!"
    )
    FarmerProduct.create(
        name: "A Pair Of Hoes",
        price: 900,
        image: "https://tinyurl.com/23hynj5v",
        description: "A pair of wonderful hoes to make working at your farm easier!"
    )
    FarmerProduct.create(
        name: "Pesticide",
        price: 900,
        image: "https://tinyurl.com/45zpy886",
        description: "A useful bottle of pesticide to keep those nasty vermin out of your farm!"
    )
    FarmerProduct.create(
        name: "A Packet Of Seeds",
        price: 200,
        image: "https://tinyurl.com/y5y58fb7",
        description: "A packet of seeds for whatever crop you wish to make a part of your farm family!"
    )
    FarmerProduct.create(
        name: "Watering Can",
        price: 700,
        image: "https://tinyurl.com/344ahya7",
        description: "A handy dandy watering can to irrigate and water your lovely crops!"
    )
    FarmerProduct.create(
        name: "Wheelbarrow",
        price: 3500,
        image: "https://tinyurl.com/3mj9kxa5",
        description: "A most convenient and resilient wheelbarrow to help you make your magic!"
    )
    FarmerProduct.create(
        name: "Pruning Shears",
        price: 900,
        image: "https://tinyurl.com/54yr4z9x",
        description: "Perhaps it's time you taught your crops about a 'close shave'...?"
    )
    FarmerProduct.create(
        name: "Safety Boots",
        price: 1800,
        image: "https://tinyurl.com/7fmv34cv",
        description: "Time to shop and save with these safety boots that keep you looking sharp and safe"
    )
puts "FarmerProducts seeded 🌱"


#Creates 3 different sales for FarmerProductSales
puts "seeding FarmerProductSales... 🌱"
    #There's a small "issue" with this one but you can still seed it anyway
    FarmerProductSale.create(
        user_id: 3,
        farmer_product_id: 1,
        quantity: 12
    )
    FarmerProductSale.create(
        user_id: 5,
        farmer_product_id: 4,
        quantity: 5
    )
    FarmerProductSale.create(
        user_id: 1,
        farmer_product_id: 7,
        quantity: 15
    )
    #total_sale = FarmerProductSale.calculate_sale_total
    #puts "Total Sale Value: #{total_sale}"
puts "FarmerProductSales seeded 🌱"


#Creates 3 different sales for FarmerProduceSales
puts "seeding FarmerProduceSales... 🌱"
    FarmerProduceSale.create(
        user_id: 1,
        produce_name: "Honey",
        produce_unit_price: 450.50,
        produce_quantity: 12
    )
    FarmerProduceSale.create(
        user_id: 3,
        produce_name: "Coffee Berries",
        produce_unit_price: 950.50,
        produce_quantity: 15
    )
    FarmerProduceSale.create(
        user_id: 5,
        produce_name: "Tea Leaves",
        produce_unit_price: 1150.50,
        produce_quantity: 23
    )
puts "FarmerProduceSales seeded 🌱"


#Creates 2 different trainee signups for FarmerTrainings
puts "seeding FarmerTrainings... 🌱"
    FarmerTraining.create(
        user_id: 2,
        training_date: Date.current,
        number_of_trainees: 4
    )
    FarmerTraining.create(
        user_id: 4,
        training_date: Date.current,
        number_of_trainees: 2
    )
puts "FarmerTrainings seeded 🌱"


#Creates 5 different pieces of land signups for FarmingLands
puts "seeding FarmingLands... 🌱"
    FarmingLand.create(
        user_id: 1,
        image: "https://tinyurl.com/y5kz8d4z",
        description: "A lovely piece of land located on the outskirts of Chromatica",
        size_in_acres: 800
    )
    FarmingLand.create(
        user_id: 2,
        image: "https://tinyurl.com/muk7nrfc",
        description: "A wonderful piece of land located on the east side of Wattenbeck",
        size_in_acres: 1600
    )
    FarmingLand.create(
        user_id: 3,
        image: "https://tinyurl.com/4nypprbt",
        description: "A fertile piece of land located just off the coast of Blejoiu",
        size_in_acres: 2400
    )
    FarmingLand.create(
        user_id: 4,
        image: "https://tinyurl.com/r6stchc2",
        description: "A scenic piece of land located on the west side of Montecito",
        size_in_acres: 3200
    )
    FarmingLand.create(
        user_id: 5,
        image: "https://tinyurl.com/7chfwrnw",
        description: "A lovely piece of land located on the north shore of Oceanside",
        size_in_acres: 4000
    )
puts "FarmingLands seeded 🌱"


#Creates 2 different land operations (one for renting and one for leasing) for LandOperations
puts "seeding LandOperations... 🌱"
    LandOperation.create(
        user_id: 1,
        farming_land_id: 3,
        type_of_operation: "rent",
        operation_duration: 2,
        cost_of_operation: 1200.05
    )
    LandOperation.create(
        user_id: 4,
        farming_land_id: 2,
        type_of_operation: "lease",
        operation_duration: 7,
        cost_of_operation: 5000.75
    )
puts "LandOperations seeded 🌱"

#Creates seed data for 15 different farmer products
puts "seeding PublicClientProducts... 🌱"
    PublicClientProduct.create(
        name: "Tomato Sauce",
        price: 300,
        image: "https://tinyurl.com/bdhuvp2p",
        description: "A bloody red bottle of tomato sauce made from freshly harvested tomatoes!"
    )
    PublicClientProduct.create(
        name: "Apple Jam",
        price: 400,
        image: "https://tinyurl.com/3npc8fwm",
        description: "Give your bread the knockout taste it needs to become a knuckle sandwich!"
    )
    PublicClientProduct.create(
        name: "Carrot Chips",
        price: 250,
        image: "https://tinyurl.com/bp5bmvua",
        description: "What's up, doc? These chips are wonderfully made from our excellent carrots!"
    )
    PublicClientProduct.create(
        name: "Strawberry Yoghurt",
        price: 350,
        image: "https://tinyurl.com/34nv5zs5",
        description: "Give yourself a tasty taste of heaven with our amazing strawberry yoghurt!"
    )
    PublicClientProduct.create(
        name: "Banana Bread",
        price: 280,
        image: "https://tinyurl.com/3kn2ajw7",
        description: "We know you want it; Treat yourself with a most magnificent loaf today!"
    )
    PublicClientProduct.create(
        name: "Sweet Potato Fries",
        price: 220,
        image: "https://tinyurl.com/2utpby7f",
        description: "What's sweet about these fries is that they're made from fresh potatoes!"
    )
    PublicClientProduct.create(
        name: "Spinach Pasta",
        price: 280,
        image: "https://tinyurl.com/mw2zkwj7",
        description: "Try a new spin on pasta with our pack of spinach pasta today!"
    )
    PublicClientProduct.create(
        name: "Mango Chutney",
        price: 320,
        image: "https://tinyurl.com/mr4xhpdv",
        description: "You have to...no...you Chut-need to try a jar of our famous mango chutney!"
    )
    PublicClientProduct.create(
        name: "Corn Salsa",
        price: 200,
        image: "https://tinyurl.com/5n7psryb",
        description: "Ain't nothing corny about this salsa; Find out by sccoring yoursef a container today!"
    )
    PublicClientProduct.create(
        name: "Pumpkin Soup",
        price: 250,
        image: "https://tinyurl.com/wvcp2d5a",
        description: "A lovely bowl of our pumpkin soup has been scientifically proven to make Halloween more exciting!"
    )
    PublicClientProduct.create(
        name: "Blueberry Muffins",
        price: 150,
        image: "https://tinyurl.com/5er9chr3",
        description: "Who the heck put the muffins in the freezer? Not us cause our blueberry muffins are warm and soft to the senses!"
    )
    PublicClientProduct.create(
        name: "Ginger Lemonade",
        price: 150,
        image: "https://tinyurl.com/ydsr889m",
        description: "We're here to lemon-aid you quench your thirst with our bottles of refreshing ginger lemonade!"
    )
    PublicClientProduct.create(
        name: "Mixed Berry Smoothie",
        price: 300,
        image: "https://tinyurl.com/y7mksm9t",
        description: "Feeling fun and fruity? Get yourself a mixed berry smoothie today!"
    )
    PublicClientProduct.create(
        name: "Cucumber Face Mask",
        price: 90,
        image: "https://tinyurl.com/5a8enmy8",
        description: "Try a sachet of our cucumber face mask to change your 'r&r' to 'R&R!"
    )
    PublicClientProduct.create(
        name: "Honey Wheat Bread",
        price: 350,
        image: "https://tinyurl.com/2s388cud",
        description: "Are you 'bread-y' to handle the awesome bliss of a loaf of our quality honey wheat bread? 'Wheat' like to see you try!"
    )
puts "PublicClientProducts seeded 🌱"


#Creates 2 different sales for PublicClientProductSales
    #If seeding for the first time, change the user_id fields to 6 for the first one and 7 for the second one
puts "seeding PublicClientProductSales... 🌱"
    PublicClientProductSale.create(
        user_id: 6,
        public_client_product_id: 5,
        quantity: 16
    )
    PublicClientProductSale.create(
        user_id: 7,
        public_client_product_id: 12,
        quantity: 3
    )
puts "PublicClientProductSales seeded 🌱"