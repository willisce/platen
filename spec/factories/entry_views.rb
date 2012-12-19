# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry_view do
    name "MyString"
    view_code "MyText"
    entry_type nil
    user nil
  end
end
