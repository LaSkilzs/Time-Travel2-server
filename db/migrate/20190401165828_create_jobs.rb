class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :experience
      t.string :work_environment
      t.string :age
      t.string :gender
      t.string :travel
      t.string :start_avg_wage_per_week
      t.string :end_avg_wage_per_week
      t.string :days_of_week
      t.string :education
      t.text :job_description
      t.integer :low_hours_of_work
      t.integer :high_hours_of_work
      t.integer :job_openings
      t.integer :job_score
      t.boolean :apprenticeship
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
