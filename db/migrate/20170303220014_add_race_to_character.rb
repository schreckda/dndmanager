class AddRaceToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :characterRace, :string
  end
end
