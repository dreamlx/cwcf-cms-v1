
FactoryGirl.define do
  factory :exhibitor, :class => Refinery::Exhibitors::Exhibitor do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

