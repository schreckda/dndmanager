class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.references :character, foreign_key: true
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
