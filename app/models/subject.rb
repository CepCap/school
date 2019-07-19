class Subject < ApplicationRecord
  validates :name, presence: true
  has_many :journals
  has_many :students, through: :journals
end
