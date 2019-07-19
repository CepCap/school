class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.belongs_to :teachers
      t.belongs_to :students
      t.string :grade

      t.timestamps
    end
  end
end
