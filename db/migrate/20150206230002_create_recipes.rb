class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.integer :serves
      t.string :difficulty
      t.string :image_file
      t.string :comment

      t.timestamps null: false
    end
  end
end
