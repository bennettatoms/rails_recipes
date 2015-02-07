class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.float :total
      t.float :out_of
      t.string :unit

      t.timestamps null: false
    end
  end
end
