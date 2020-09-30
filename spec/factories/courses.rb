FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    description { Faker::Marketing.buzzwords }
    price { Faker::Number.decimal(l_digits: 2) }
  end
end
