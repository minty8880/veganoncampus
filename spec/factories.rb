FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first_name#{n}" }
    sequence(:last_name) { |n| "last_name#{n}" }
    sequence(:email) { |n| "email#{n}@example.com" }
    password "password"
    institution

    factory :admin do
      admin true
    end
  end

  factory :institution do
    sequence(:name)  { |n| "institution#{n}" }
  end
end
