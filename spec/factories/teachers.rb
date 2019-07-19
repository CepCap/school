FactoryBot.define do
  factory :teacher do
    first_name { 'Мария' }
    last_name { 'Васильева' }
    email { 'teacher@example.com' }
    password_digest { '1234567890' }
    phone_number { '8 999 000 00 00' }
  end
end
