class Student < ApplicationRecord
  validates :first_name, :last_name, presence: true
  belongs_to :classroom
  has_one :teacher, through: :classroom
  has_many :journals

  def male?
    self.gender == 'm'
  end

  def female?
    self.gender == 'f'
  end

  def perfomance_name
    median = self.total_median
    case median
    when 2..2.5
      self.male? ? 'двоечник' : 'двоечница'
    when 2.5..3.7
      self.male? ? 'троечник' : 'троечница'
    when 3.7..4.5
      self.male? ? 'хорошист' : 'хорошистка'
    when 4.5..5.0
      self.male? ? 'отличник' : 'отличница'
    end
  end

  def perfomance_position
    student_medians = Student.all.map { |s| s.total_median }
    student_medians.sort.reverse.find_index { |el| el == self.total_median } + 1
  end

  def total_median
    all_marks = Journal.where(student_id: self.id).pluck(:marks).flatten.map(&:to_i)
    size = all_marks.size
    (all_marks.sum.to_f / size.to_f).round(2)
  end
end
