class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :category
      t.float :cost
      t.string :qtyunit

      t.timestamps
    end
  end
end
