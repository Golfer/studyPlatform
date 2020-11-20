FactoryBot.define do
  factory :company do
    name { Faker::Company.name&.truncate(30) }
  end
end
