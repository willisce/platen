# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :section_view do
    name "MyString"
    view_code "MyText"
    section_type nil
    user nil
  end
end
