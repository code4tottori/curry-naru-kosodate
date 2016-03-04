class CreateNurseries < ActiveRecord::Migration[5.0]
  def change
    create_table :nurseries do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :business_hours
      t.integer :capacity
      t.text :condition
      t.string :fee
      t.text :things
      t.text :medical_system
      t.text :comment

      t.timestamps
    end
  end
end
