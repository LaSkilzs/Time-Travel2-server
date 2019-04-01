class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :job_title
      t.string :work_location
      t.string :status, default: "applied"
      t.boolean :citizenship, default: false
      t.boolean :parent_union, default: false
      t.boolean :parent_trade, default: false
      t.boolean :entreprenuership, default: false
      t.boolean :work_with_others, default: false
      t.boolean :monotous_task, default: false
      t.boolean :work_life_balance, default: false
      t.boolean :work_environment, default: false
      t.boolean :too_many_hours, default: false
      t.integer :app_score, default: 65
      t.references :profile, foreign_key: true
      # t.references :helpwanted, foreign_key: true

      t.timestamps
    end
  end
end
