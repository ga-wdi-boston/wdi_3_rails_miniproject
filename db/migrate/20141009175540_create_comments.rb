class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.posts :belongs_to, index: true
    end
  end
end
