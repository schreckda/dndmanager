class AddNameToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :characterName, :string
  end
end
