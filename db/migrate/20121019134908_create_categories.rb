class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nazwa

      t.timestamps
    end
  end
end
