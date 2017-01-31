
class Product < ApplicationRecord 

	def description_list
		return description.split(",")
		
	end  

	def friendly_product_time
		created_at.strftime("% %e,%l:%M %p")
	end 


	def friendly_product_time
	hours = Product_time / 60
	minutes = Product_time % 60
	result = ""
	result += "#{hours} hours" if 
	hours	>= 1
	result += "#{minutes} minutes"
	if minutes > 0
		return result 
	end 

	def sale_message 

		if price.to_f <= 2 
	end 

end 