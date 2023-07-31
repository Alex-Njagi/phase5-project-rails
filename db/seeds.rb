=begin 
    User.create(
        name: "Britney Spears",
        status: "Farming Group Administrator",
        group_number: 5,
        location: "In The Zone",
        phone_number: "7182638475",
        email: "princessofpop@gmail.com",
        password: "Toxic"
    )
    FarmerProduct.create(
        name: "Bag Of Fertilizer",
        price: 2500,
        image: "https://tinyurl.com/2jee46ce",
        description: "A lovely bag of fertilizer to help pep up the step of your farm!"
    )

    #There's a small issue with this one but you can still seed it anyway
        FarmerProductSale.create(
            user_id: 1,
            farmer_product_id: 1,
            quantity: 12
        )
        total_sale = FarmerProductSale.calculate_sale_total
        puts "Total Sale Value: #{total_sale}"

    FarmerProduceSale.create(
            user_id: 1,
            produce_name: "Honey",
            produce_unit_price: 450.50,
            produce_quantity: 12
    )
=end