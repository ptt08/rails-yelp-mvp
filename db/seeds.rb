puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating restaurants..."
french = {name: "LeParkour", address: "Somewhere in France", category: "french"}
chinese = {name: "Good Chinese Food", address: "Chinatown", category: "chinese"}
italian = {name: "Mama mia", address: "Italy", category: "italian"}
belgian = {name: "Compagnie Belge Artisan Gelato", address: "Grote Markt nr 16, Antwerp 2000 Belgium", category: "belgian"}
japanese = {name: "Maruetsu", address: "Meguro", category: "japanese"}

restaurants = [french, chinese, italian, belgian, japanese]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "Created #{Restaurant.count} restaurants!"
