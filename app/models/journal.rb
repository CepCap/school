class Journal < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  def median
    size = self.marks.size
    (self.marks.map(&:to_i).sum.to_f / size.to_f).round(2)
  end
end
