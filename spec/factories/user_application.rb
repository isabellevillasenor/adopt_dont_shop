FactoryBot.define do
  factory :user_application do
    name {Faker::FunnyName.unique.name}
    address {Faker::Address.street_address}
    city {Faker::Address.city}
    state {Faker::Address.state_abbr}
    zip {Faker::Address.zip}
    description {Faker::Beer.name}
  end
end