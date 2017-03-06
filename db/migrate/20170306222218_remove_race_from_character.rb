class RemoveRaceFromCharacter < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :characterRace, :string
  end
end
