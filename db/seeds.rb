(1..100).each do |i|
   Item.create(name: "Item-#{i}", description: "This is Item #{i}", quantity: (i*100)%500, price: (i*1000)%1000) 
end