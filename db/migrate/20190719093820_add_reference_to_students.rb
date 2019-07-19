class AddReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :parents, index: true
  end
end
