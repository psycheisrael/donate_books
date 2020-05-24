require 'faker'
FactoryBot.define do
  factory :user do |f|
    f.full_name { Faker::Name.first_name }
    f.email { Faker::Internet.email }
  end
end
