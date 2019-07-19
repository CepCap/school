class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, unique: true
      t.string :password_digest
      t.string :phone_number, unique: true

      t.timestamps
    end
  end
end
