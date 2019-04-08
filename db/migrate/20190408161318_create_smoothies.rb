class CreateSmoothies < ActiveRecord::Migration[5.2]
  def change
    create_table :smoothies do |t|
      t.string :name
      t.string :ingredients
      t.integer :price

      t.timestamps
    end
  end
end
