class CreateIndustries < ActiveRecord::Migration[5.2]
  def change
    create_table :industries do |t|
      t.string :name
      t.text :summary
      t.integer :available_jobs
      t.references :generation, foreign_key: true

      t.timestamps
    end
  end
end
