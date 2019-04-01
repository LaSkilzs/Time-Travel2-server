class CreateFunFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :fun_facts do |t|
      t.string :fact_length
      t.text :fact
      t.references :generation, foreign_key: true

      t.timestamps
    end
  end
end
