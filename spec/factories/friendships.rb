# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friendship do
    association :player, factory: :player, strategy: :build
    association :friend, factory: :player, strategy: :build
    status 0
  end
end
