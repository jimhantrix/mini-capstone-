class CartedPorductsController < ApplicationController


	def index
		#show all carted products where user_id = current_user.id && where status ="carted"

		if current_user.carted_products.where(status:"carted")any?

		@carted_products = current_user.carted_products.where(status:"carted")

	else 
		flash [:warning] = "you have no items in the cart"
	 	redirect_to"/"


	end 

#created method copied from orders controllers

	def create 

			

			product_id = params [:product_id]

			product = Product.find_by(id: product_id)

			quantity = params[:quantity]


			carted_products = CartedProduct.create(

			:user_id  current_user.id,

			:product_id params[:product_id],

			:quantity params [:quantity],
			:status "carted"

			
			)
			flash [:success] = "Product added to cart"
			redirect_to "/"

		end 

	user = current_user.id
  @carted_products = CartedProduct.where(user_id: user, status: "carted")




	def destroy 
	#Locate to delete , change status to "remove"
	carted_product = CartedProduct.find_by(id: params[:id])
	carted_product.update(status: "removed")

	flash [success:] = "product removed"

	redirect_to "carted_products"


	end 
end 

