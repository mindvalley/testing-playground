FactoryGirl.define do
  sequence(:random_string) {|n| Forgery::LoremIpsum.words(2, random:true) }
  
  sequence :email do |n|
    "person#{n}@example.com"
  end
end
