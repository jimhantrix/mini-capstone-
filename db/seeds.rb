# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Supplier.destroy_all
Image.destroy_all

Product.create([
  #product 1
  { :product "Vegan pizza", 
  	:price "$ 10", 
  	:description "Tofu,Tomatoes,Parmesan cheese,Red olives",
  	supplier_id: 1

    #product 2
  { :product "Truffel sandwich", 
  	:price "$ 20",
    :description "flowers and dressing" 
  	supplier_id: 2
  },


  {  #product 3 
  	:product "Edible flower salad ",
    :price " $ 30", 
    :description "edible flowers, blue cheese,sour dough",
   supplier_id: 3
   }, 


  {  #product 4 
  	:product "Dutch babies", 
    :price " $ 12", 
    :description "berries,strawberries,pineapples",
    supplier_id: 4

  },


  { #product 5 
  	:product "Sea food tray", 
    :price "$ 14", 
    :description "crab cakes, shrimp kebab, salmon", 
    supplier_id: 5
  },

  { #product 6 
  	:product "Full chicken", 
    :price "$ 20", 
    :description "full chicken ,baked potatoes",
    supplier_id: 6
  }
])

Supplier.create([
  {
    name: "Woot", 
    email: "woot@wootwoot.com", 
    phone: "1-800-woo-woot"
  },
  {
    name: "Dumbledore Electronics Inc.", 
    email: "dumble@doors.com", 
    phone: "867-5309"
  },
  {
    name: "Amazon", 
    email: "amazon@amazon.com", 
    phone: "1-800-amazon"
  }
  ])
  Image.create([
  {
    url: "https://i0.wp.com/anodetomungbeans.com/wp-content/uploads/2013/08/dsc_0128.jpg",  
    product_id: 1
  },
  {
    url: ,  
    product_id: 1
  },
  {
    url: "https://s-media-cache-ak0.pinimg.com/564x/5b/93/06/5b93063259a45a81a440c5528e73a553.jpg", 
    product_id: 2
  },
  {
    url:"https://s-media-cache-ak0.pinimg.com/originals/9e/c4/58/9ec458c0820331a0464fee162ed2e27f.jpg"
 , 
    product_id: 3
  },
  {
    url:"https://s-media-cache-ak0.pinimg.com/236x/47/8f/32/478f325089dd876055c0bb92647c9c2b.jpg",  
    product_id: 4
  },
  {
    url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjVgqjb4tzRAhUL5WMKHU_pCREQjRwIBw&url=http%3A%2F%2Fwww.foodnetwork.com%2Frecipes%2Fspanish-seafood-salad.html&psig=AFQjCNH3K-COUx9NFVRFW7xYdJcrF5e_xQ&ust=1485415611436974"
, 
    product_id: 5
  },
  {
    url: "https://buttoni.files.wordpress.com/2009/08/lebanesebakedchicken.jpg", 
    product_id: 6
  }
  ])
