class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :ethnicity, default: 'no response'
      t.string :religion,  default: 'no response'
      t.string :marital_status
      t.string :education
      t.date :available_for_work
      t.string :experience
      t.string :avatar, default: 'https://cdn1.vectorstock.com/i/thumb-large/82/55/anonymous-user-circle-icon-vector-18958255.jpg'
      t.boolean :trade, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
