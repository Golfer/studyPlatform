FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{FFaker::Internet.email}-#{n}" }
    password { FFaker::Internet.password }
    name { FFaker::Name.first_name }
    surname { FFaker::Name.last_name }
    trait :student_user do
      role { 'student' }
    end

    trait :teacher_user do
      role { 'teacher' }
    end
  end
end
