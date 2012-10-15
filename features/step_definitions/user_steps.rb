Given /^a user exists$/ do
  @user = FactoryGirl.create(:user)
end

Given /^a user with email "([^"]*)" and first name "([^"]*)" and last name "([^"]*)" exists$/ do |email, first_name, last_name|
  @user = FactoryGirl.create(:user, {
    email:      email,
    first_name: first_name,
    last_name:  last_name  
  })

end
