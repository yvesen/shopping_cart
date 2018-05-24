class CreateShoppings < ActiveRecord::Migration[5.1]
  def change
    create_table :shoppings do |t|

      t.timestamps
    end
  end
end
