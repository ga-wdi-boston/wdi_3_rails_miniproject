class CreateStatSheets < ActiveRecord::Migration
  def change
    create_table :stat_sheets do |t|
      t.integer :hp, null: false
      t.integer :sp, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :speed, null: false
      t.belongs_to :character, null: false

      t.timestamps null: false
    end
  end
end
