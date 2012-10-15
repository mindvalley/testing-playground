# Test Driven Development


## RSpec

```bash
 rails generate rspec:install
```

### Auto-Generate factories and specs

```ruby
# application.rb
module YourApp
  class Application < Rails::Application
    config.generators do |g|
      g.view_specs false
      # g.helper_specs false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
```

```ruby
# spec_helper.rb
RSpec.configure do |config|
  
  config.include FactoryGirl::Syntax::Methods
  config.include Mongoid::Matchers
  config.mock_with :rspec
end
```

```bash
rails generate model user
      invoke  mongoid
      create    app/models/user.rb
      invoke    rspec
      create      spec/models/user_spec.rb
      invoke      factory_girl
      create        spec/factories/users.rb
```



## Cucumber

```bash
 brew update
 brew install qt
 bundle install
 rails generate cucumber:install
```

Set up Mongoid with Cucumber for [Mongoid 2][cukemongoid2] or [Mongoid 3][cukemongoid3]


## Further Reading

* [Better Specs](http://betterspecs.org)
* [Factory Girl Introduction](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md)
* [Rspec matchers for Mongoid](https://github.com/evansagge/mongoid-rspec)

[cukemongoid3]: http://adventuresincoding.com/2012/05/how-to-configure-cucumber-and-rspec-to-work-with-mongoid-30
[cukemongoid2]: http://adventuresincoding.com/2010/07/how-to-configure-cucumber-and-rspec-to-work-with-mongoid/
