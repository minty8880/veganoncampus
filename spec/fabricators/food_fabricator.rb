Fabricator(:food) do
  description { Faker::Lorem.sentence }
  outlet      { Outlet.all.sample }
  user        { User.all.sample }
end
