class AddStarsToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :stars, :integer
  end
end
