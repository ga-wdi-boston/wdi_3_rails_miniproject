class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :question
      t.string :name

      t.timestamps null: false
    end
  end
end
