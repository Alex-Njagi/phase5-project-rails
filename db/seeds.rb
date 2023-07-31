#Creates seed data for 5 different users
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
puts "Users seeded 🌱"


#Creates seed data for 8 different products
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
        image: "https://tinyurl.com/23hynj5v",
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