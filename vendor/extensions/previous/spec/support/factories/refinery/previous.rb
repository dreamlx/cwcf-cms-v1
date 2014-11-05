
FactoryGirl.define do
  factory :previou, :class => Refinery::Previous::Previou do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

