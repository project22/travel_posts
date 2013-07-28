FactoryGirl.define do
  factory :user do
    name     "Nate Dawg"
    email    "nate@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end