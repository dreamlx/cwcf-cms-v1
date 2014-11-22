
FactoryGirl.define do
  factory :cooperation, :class => Refinery::Cooperations::Cooperation do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

