class ApplicationController < ActionController::Base


	  helper_method :current_user, :is_admin?
	
	  protect_from_forgery with: :exception
	   helper_method :current_user , :is_admin


	  def current_user 
	  	@current_user ||=  User.find_by(id: session[:user_id]) if session[:user_id]
	  end 


	  def is_admin?
	  	 #returns true or false
	  	current_user && current_user.admin
	  end 

	  def aunthenticate_user!
	  	 redirect_to "/login" unless current_user
	  end 

	  def aunthentic_admin!
	  	unless current_user && current_user
	  		redirect_to "/"
	  		
	  	end


 	before_action :clalculate_cart_count 



	  private #################

		def calculate_cart_count

			if user_signed_in?
			cat_count = current_user.carted_products.where (status: "carted").count
			else 
			cart_count = 0
			end 
		end 

end
