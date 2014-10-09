class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.belongs_to :posts, index: true
    end
  end
end
