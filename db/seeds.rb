# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

Product.create([
  {:product "Vegan pizza", :price "$ 10", ingredients:"Tofu,Tomatoes,Parmesan cheese,Red olives",:image "https://i0.wp.com/anodetomungbeans.com/wp-content/uploads/2013/08/dsc_0128.jpg"},
  {product: "Truffel sandwich", :price "$ 20", :image "https://s-media-cache-ak0.pinimg.com/564x/5b/93/06/5b93063259a45a81a440c5528e73a553.jpg"},
  {product: "Edible flower salad ", :price " $ 30", ingredients: "edible flowers, blue cheese,sour dough",:image "https://s-media-cache-ak0.pinimg.com/originals/9e/c4/58/9ec458c0820331a0464fee162ed2e27f.jpg"}, 
  {product: "Dutch babies", price: " $ 12", ingredients: "berries,strawberries,pineapples",:image "https://s-media-cache-ak0.pinimg.com/236x/47/8f/32/478f325089dd876055c0bb92647c9c2b.jpg"},
  {product: "Sea food tray", price: "$ 14", ingredients: "crab cakes, shrimp kebab, salmon", :image "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjVgqjb4tzRAhUL5WMKHU_pCREQjRwIBw&url=http%3A%2F%2Fwww.foodnetwork.com%2Frecipes%2Fspanish-seafood-salad.html&psig=AFQjCNH3K-COUx9NFVRFW7xYdJcrF5e_xQ&ust=1485415611436974"},
  {product: "Full chicken", price: "$ 20", ingredients: "full chicken ,baked potatoes",:image "https://buttoni.files.wordpress.com/2009/08/lebanesebakedchicken.jpg"}
])