class CreateSubcomment < ActiveRecord::Migration
  def change
    create_table :subcomments do |t|
      t.string :comment
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
