FactoryBot.define do
  factory :classroom do
    student
    teacher
    grade { '1A' }
  end
end
