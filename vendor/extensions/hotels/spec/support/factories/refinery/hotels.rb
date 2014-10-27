
FactoryGirl.define do
  factory :hotel, :class => Refinery::Hotels::Hotel do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

