FactoryBot.define do
    factory :video do
      title { Faker::Movies::StarWars.character }
      filepath { Faker::Movies::StarWars.character }
      user_id nil
      description { Faker::Quote.matz }
      address_1 { Faker::Address.street_address }
      address_2 { Faker::Address.secondary_address }
      city { Faker::Address.city }
      state { Faker::Address.state_abbr }
      zip_code { Faker::Address.zip_code }
    #   date { Faker::Address.zip_code }
    #   time { Faker::Address.zip_code }

    end
  end