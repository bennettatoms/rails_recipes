class CreateSteps < ActiveRecord::Migration
  def change
    drop_table :steps
    create_table :steps do |t|
      t.text :context

      t.timestamps null: false
    end
  end
end
