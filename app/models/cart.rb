class Cart < ApplicationRecord
	has_many :cart_item, dependent: :destroy

	def add_cart_item(shopping)
    existing_item = self.cart_items.find_by( shopping: shopping )
    if existing_item
      existing_item.quantity += 1
      existing_item.save!
    else
      cart_item = cart_items.build( shopping: shopping )
      cart_item.save!
    end
    self.cart_items
  end

end
