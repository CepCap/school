class Student < ApplicationRecord
  validates :first_name, :last_name, presence: true
  belongs_to :classroom
  has_one :teacher, through: :classroom
  has_many :journals
end
