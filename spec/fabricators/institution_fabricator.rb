Fabricator(:institution) do
  name    { Faker::Company.name }
  website { Faker::Internet.url }
end
