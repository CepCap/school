class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.belongs_to :student, index: true
      t.belongs_to :subject, index: true
      t.string :marks, array: true

      t.timestamps
    end
  end
end
