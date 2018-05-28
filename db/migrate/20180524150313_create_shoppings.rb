class CreateShoppings < ActiveRecord::Migration[5.1]
  def change
    create_table :shoppings do |t|
      t.string :name
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end
