class AddReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :student, :parent, index: true
  end
end
