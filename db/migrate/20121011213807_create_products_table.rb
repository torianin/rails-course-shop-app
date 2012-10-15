class CreateProductsTable < ActiveRecord::Migration
  def up
   create_table :products do |t|
      t.string :nazwa
      t.text :opis
      t.integer :cena

      t.timestamps
    end
  end
 
  def down
    drop_table :products
  end
end
