class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :job, null: false
      t.belongs_to :party, index: true, null: false

      t.timestamps null: false
    end
  end
end
