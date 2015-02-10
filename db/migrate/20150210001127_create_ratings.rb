class CreateRatings < ActiveRecord::Migration
  def change
    drop_table :ratings
    create_table :ratings do |t|
      t.boolean :available?
      t.float :total
      t.integer :out_of
      t.string :unit

      t.timestamps null: false
    end
  end
end
