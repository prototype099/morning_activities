# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    title "MyString"
    organizer_id 1
    media "MyString"
    main_url "MyString"
    sub_url "MyString"
    memo "MyText"
    disable 1
  end
end
