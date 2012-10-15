# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'hg@test.com'
    # email { generate(:email) }
    
    first_name "Hermann"
    last_name  "Goering"
  end
end
