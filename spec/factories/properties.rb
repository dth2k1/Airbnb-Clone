FactoryBot.define do
  factory :property do
    name { Faker::Lorem.word} 
    title {Faker::Lorem.sentence}
    description {Faker::Lorem.paragraph}
    address1 {Faker::Address.street_address}
    city {Faker::Address.city}
    state {Faker::Address.state}
    country {"United States"}
    price {Money.from_amount((25..100).to_a.sample)}
  end
end
