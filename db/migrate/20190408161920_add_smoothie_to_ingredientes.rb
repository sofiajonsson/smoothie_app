class AddSmoothieToIngredientes < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredientes, :smoothie_id, :integer
  end
end
