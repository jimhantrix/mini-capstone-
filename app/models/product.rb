
class Product < ApplicationRecord

	has_many :product_categories
	has_many :categories,through: :product_categories 
	belongs_to :supplier
	has_many :images 

	has_many :user
	has_many :orders, through: :users 



	def description_list
		return description.split(",")
		
	end  


	def tax 
		price.to_f * 0.9

	end 

	def total 


		return price.to_f + tax


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
	end 

	def sale_message 

		if price.to_f <= 2 
		end
	end 

end 