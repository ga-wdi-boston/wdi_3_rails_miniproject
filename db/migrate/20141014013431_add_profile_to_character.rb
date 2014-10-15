class AddProfileToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :profile, :string
  end
end
