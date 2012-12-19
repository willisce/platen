# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :field_type do
    name "MyString"
    label "MyString"
    data_type nil
    user nil
  end
end
