class Supplier < ApplicationRecord
	has_many :products

	add_coumn :products, :supplier_id :integer
end
