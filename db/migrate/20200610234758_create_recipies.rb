class CreateRecipies < ActiveRecord::Migration[6.0]
  def change
    create_table :recipies do |t|
      t.references :user, foreign_key: true, :default => 1
      t.string :name
      t.string :cuisine
      t.float :costperserving
      t.integer :views
      t.text :instructions
      t.text :image
    end
  end
end
