Fabricator(:outlet) do
  name        { Faker::Company.name }
  description { Faker::Company.catch_phrase }
  website     { Faker::Internet.url }
  location    { Faker::Address.secondary_address }
  campus      { Campus.all.sample }
end
