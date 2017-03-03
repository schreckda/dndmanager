class AddClassToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :characterClass, :string
  end
end
