class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.date :date, null: false
      t.text :symptom, null: false
      t.text :comment
      t.references :user
      t.references :nursery

      t.timestamps
    end
    add_index :applications, %i[date user_id nursery_id]
  end
end
