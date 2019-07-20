
teacher = Teacher.create(first_name: 'Мария', last_name: 'Васильева',
                         email: Rails.application.credentials.teacher[:email],
                         phone_number: Rails.application.credentials.teacher[:phone_number],
                         password: Rails.application.credentials.teacher[:password],
                         password_confirmation: Rails.application.credentials.teacher[:password])

classroom = Classroom.create(teacher: teacher, grade: '4Б')

subjects = Subject.create([{ name: 'Русский язык' },
                          { name: 'Математика' },
                          { name: 'Информатика'},
                          { name: 'Окружающий мир' },
                          { name: 'Английский язык'}])

female_names = %w[Мария Валентина Александра Валерия]
male_names = %w[Василий Александр Андрей Вадим]
surnames = %w[Иванов Сидоров Кузнецов Воронов]
genders = %w[m f]

35.times do
  gender = genders.sample
  if gender == 'm'
    student = Student.create(first_name: male_names.sample,
                             last_name: surnames.sample,
                             classroom: classroom, gender: gender)
  else
    student = Student.create(first_name: female_names.sample,
                             last_name: (surnames.sample + 'а'),
                             classroom: classroom, gender: gender)
  end
  subjects.each do |subj|
    range = [(2..5), (3..4), (4..5)].sample
    marks = Array.new(80).map { rand(range) }
    Journal.create(student: student, subject: subj, marks: marks)
  end
end
