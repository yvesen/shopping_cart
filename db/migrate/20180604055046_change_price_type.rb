class ChangePriceType < ActiveRecord::Migration[5.1]
  def change
  	change_column :shoppings, :price, :integer
  end
end
