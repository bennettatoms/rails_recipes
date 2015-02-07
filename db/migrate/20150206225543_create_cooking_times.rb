class CreateCookingTimes < ActiveRecord::Migration
  def change
    create_table :cooking_times do |t|
      t.integer :total
      t.integer :prep
      t.integer :cook
      t.integer :inactive

      t.timestamps null: false
    end
  end
end
