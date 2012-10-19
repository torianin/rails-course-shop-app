class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :opis
      t.string :nazwa
      t.string :cena

      t.timestamps
    end
  end
end
