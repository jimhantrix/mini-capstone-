class Order < ApplicationRecord::Base
 	belongs_to user:
 	
	has_many :carted_products


	def quantify(number, quantity)
		number * quantify.to_f
	end 
end
