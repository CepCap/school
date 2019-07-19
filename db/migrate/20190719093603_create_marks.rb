class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.belongs_to :student
      t.belongs_to :subject

      t.timestamps
    end
  end
end
