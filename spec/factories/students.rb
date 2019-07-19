FactoryBot.define do
  factory :student do
    first_name { 'Василий' }
    last_name { 'Пупкин' }
    gender { 'm' }
    classroom
  end
end
