
FactoryGirl.define do
  factory :contact, :class => Refinery::Contacts::Contact do
    sequence(:telephone) { |n| "refinery#{n}" }
  end
end

