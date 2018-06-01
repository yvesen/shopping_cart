class Cart < ApplicationRecord
	has_many :cart_items, dependent: :destroy
  has_many :shoppings, through: :cart_items

	def add_cart_item(shopping)
    existing_item = self.cart_items.find_by( shopping_id: shopping )
    if existing_item
      existing_item.quantity += 1
      existing_item.save!
    else
      cart_item = cart_items.build( shopping_id: shopping.id )
      cart_item.save!
    end
    self.cart_items
  end

  def subtotal
    # cart_items.map{ |x| x.item_total }.sum
    cart_items.map do |item|
      item.item_total
    end.sum
  end

end
