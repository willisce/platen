# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    data "MyText"
    entry_type nil
    section nil
    user nil
  end
end
