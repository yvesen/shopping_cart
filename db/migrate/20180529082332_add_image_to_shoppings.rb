class AddImageToShoppings < ActiveRecord::Migration[5.1]
  def change
  	add_column :shoppings, :image, :string
  end
end
