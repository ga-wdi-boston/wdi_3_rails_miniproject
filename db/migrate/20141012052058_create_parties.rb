class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name, null: false
      t.string :goal
      t.string :motto

      t.timestamps null: false
    end
  end
end
