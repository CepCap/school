class Teacher < ApplicationRecord
  validates :first_name, :last_name, :email, :phone_number, presence: true
  has_many :classrooms
  has_many :students, through: :classrooms
end
