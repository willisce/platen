# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry_type do
    name "MyString"
    model "MyText"
    form_code "MyText"
    user nil
  end
end
