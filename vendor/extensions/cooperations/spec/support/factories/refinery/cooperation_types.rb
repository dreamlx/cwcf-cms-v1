
FactoryGirl.define do
  factory :cooperation_type, :class => Refinery::Cooperations::CooperationType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

