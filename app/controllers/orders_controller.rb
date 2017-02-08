class OrderController < ApplicationController


	before_action :aunthenticate_user!

#user_id , sub_total, tax ,#total

	def create 
		carted_products = current _user.
		carted_products.where(status: "carted")

		carted_products.each do |carted_products|
			sum += (carted_product.product.product.price
			* carted_product.quantity)
		end 

		tax =subtotal * 0.09
		total = subtotal + tax 

		order = Order.create(user_id: current_user_id ,subtotal: subtotal, tax: tax,
			total: total)

		carted_products.update_all (status: "purchased",order_id:"order_id")

		flash [success:] = "Order succesfully created" 
		redirect_to "/orders/#{order.id}"
	end 
	


	def show
		@order = Order.find_by(:id params[:id])

		if @order.user_id != current_user.id
			redirect_to "/products"
		end 

	end 
end
