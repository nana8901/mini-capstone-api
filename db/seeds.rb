# Product.create!([
#   {name: "doorway", price: "16.0", image_url: "door.jpg", description: "it's a door", stock: 1},
#   {name: "bowl", price: "7.0", image_url: "bowl.png", description: "a plain bowl. Unexciting.", stock: 2},
#   {name: "not-chair", price: "31.0", image_url: "chair.jpg", description: "a comfortable chair", stock: 0},
#   {name: "not-chair", price: "32.0", image_url: "not-chair.jpg", description: "definitely not a chair", stock: 2},
#   {name: "not-mychair", price: "32.0", image_url: "not-.jpg", description: "definitely not a chair", stock: 4},
#   {name: "not-thischair", price: "32.0", image_url: "notreally.jpg", description: "definitely not a chair", stock: 3},
#   {name: "screenn", price: "175.0", image_url: "screen.njpg", description: "A computer screenn for desktops", stock: 1},
#   {name: "not-thischair", price: "32.0", image_url: "notreally.jpg", description: "definitely not a chair", stock: 1},
#   {name: "not-maybe-a-chair", price: "33.0", image_url: "not-here.jpg", description: "definitely not a chair", stock: 1}
# ])
# Supplier.create!([
#   {name: "Ikea", email: "Ikea@ikea.com", phone_number: "6298343"},
#   {name: "Wood Press Co", email: "WoodPress@Press.com", phone_number: "8888888888"}
# ])
images.create!([
  {url: "door.jpg", product_id: 1},
  {url: "bowl.png", product_id: 2},
  {url: "chair.jpg", product_id: 5},
  {url: "stuff", product_id: 1},
  {url: "stuff", product_id: 1},
  {url: "stuff", product_id: 1},
  {url: "stuff", product_id: 1},
  {url: "stuff", product_id: 1},
  {url: "stuff", product_id: 1}

])