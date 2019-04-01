class CreateHelpwanteds < ActiveRecord::Migration[5.2]
  def change
    create_table :helpwanteds do |t|
      t.string :location
      t.string :image
      t.float :wage_per_week
      t.boolean :housing_offered
      t.boolean :female
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
