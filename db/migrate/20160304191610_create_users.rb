class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_id, null: false
      t.string :password, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone
      t.string :child_name
      t.date :child_birthdate
      t.integer :child_gender
      t.text :child_comment

      t.timestamps
    end
    add_index :users, :user_id, unique: true
  end
end
