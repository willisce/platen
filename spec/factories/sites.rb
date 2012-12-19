# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site do
    title "MyString"
    site_type nil
    user nil
  end
end
