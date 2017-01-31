class ProductsController < ApplicationController


	def index
	    @products = Products.all 
	    sort_attr = params[:sort]

	    sort_order = params[:sort_order]
	    if sort_attr
	      @Products =Products.all.order 
	      (params[:sort] => params[:sort_order])
	    if params[:quick]
	      @products= Products.where("prep_time < ?", 60)
	    end  

		    render "index.html.erb"
		    # Add a link that allows the user to see products in order of price, lowest to highest.  
	end

	def search 
	    search_term = params[:search]
	    @recipes = Recipes.where ("title LIKE ?","%#{search_term}%")
	    render :index
	end 



	  def new
	    render "new.html.erb"
	  end

	  def create
	    recipe = Product.create(
	    :name params[:name],
	    :price params[:price],
	   	:description params[:description],
	    :image params[:image], 
	    flash[:success] = "Product successfully created!"
	    redirect_to "/products/#{product.id}"
	  end






	  def show
	    product_id = params[:id]
	    @product = Product.find_by(id: recipe_id)
	    render "show.html.erb"

	    if product_id == "random"
	      @product = product.all.sample 
	  end



	  	def edit
		   product_id = params[:id]
		    @product = Product.find_by(id: product_id)
		    render "edit.html.erb"
	  	end





	  	def update
		   product_id = params[:id]
		    product = Product.find_by(id: product_id)
		    product.update(name: params[:name],
		      price: params[:price],
		      description: params[:description],
		      image: params[:image],
		      
		    flash[:success] = "Product successfully updated!"
		    redirect_to "/products/#{product.id}"
	  	end

	  def destroy
	    product_id= params[:id]
	   product = Product.find_by(id: product_id)
	    Product.destroy
	    flash[:warning] = "Product successfully deleted!"
	    redirect_to "/products"
	  end

end
