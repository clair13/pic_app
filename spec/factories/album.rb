FactoryGirl.define do
  factory :album do
    name { Faker::Name.name }
    member
  end
end