class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :alignment
      t.integer :experience

      t.timestamps
    end
  end
end
