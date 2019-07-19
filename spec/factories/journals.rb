FactoryBot.define do
  factory :journal do
    marks { ['3', '4', '5'] }
    student
    subject
  end
end
