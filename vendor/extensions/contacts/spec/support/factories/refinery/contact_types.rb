
FactoryGirl.define do
  factory :contact_type, :class => Refinery::Contacts::ContactType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

