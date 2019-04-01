class CreateGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :generations do |t|
      t.string :nickname
      t.string :description
      t.text :story
      t.integer :decade

      t.timestamps
    end
  end
end
