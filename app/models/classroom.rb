class Classroom < ApplicationRecord
  has_one :teacher
  has_many :students
end
