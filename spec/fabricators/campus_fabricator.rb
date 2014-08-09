Fabricator(:campus) do
  name        { Faker::Company.name }
  institution { Institution.all.sample }
end
