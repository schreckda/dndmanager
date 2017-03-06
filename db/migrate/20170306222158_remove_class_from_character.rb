class RemoveClassFromCharacter < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :characterClass, :string
  end
end
