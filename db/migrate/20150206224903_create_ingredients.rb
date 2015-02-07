class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
