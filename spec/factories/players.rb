# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    name "MyString"
    
    factory :friend do
        name "MyName"
    end
  end

end
