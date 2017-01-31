require 'test_helper'

class ProductsControllerTest < ApplicationController 
  
   def get_products
    @products = Product.all
    render "products.html.erb"
  end# test "the truth" do
  #   assert true
  # end
end
