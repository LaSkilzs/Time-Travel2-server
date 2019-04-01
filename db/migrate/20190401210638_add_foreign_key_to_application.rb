class AddForeignKeyToApplication < ActiveRecord::Migration[5.2]
  def change
    add_reference :applications, :helpwanted, index: true
    add_foreign_key :applications, :helpwanteds

  end
end
