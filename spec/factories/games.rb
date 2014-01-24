# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    title "MyString"
    studio "MyString"
    comment "MyText"
    stars 1
  end
end
