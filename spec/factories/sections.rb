# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :section do
    title "MyString"
    site nil
    section_type nil
    parent_section nil
    user nil
  end
end
