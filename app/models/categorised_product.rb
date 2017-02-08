class CategorisedProduct < ApplicationRecord
	belaongs_to :category
	belaongs_to :product


end
