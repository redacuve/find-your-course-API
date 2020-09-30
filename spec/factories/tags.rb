FactoryBot.define do
  factory :tag do
    title { Faker::ProgrammingLanguage.name }
  end
end
