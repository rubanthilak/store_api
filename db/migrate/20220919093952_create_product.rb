class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.string :description
      t.float :price, :null => false
      t.integer :in_stock, :null => false, :default => 0
    end
  end
end
