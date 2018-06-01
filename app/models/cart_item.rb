class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :shopping

	def item_total
		self.quantity * self.shopping.price
	end

end
