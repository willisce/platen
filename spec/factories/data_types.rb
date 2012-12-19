# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :data_type do
    name "MyString"
    control_code "MyText"
    user nil
  end
end
