
FactoryGirl.define do
  factory :corp_partner, :class => Refinery::CorpPartners::CorpPartner do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

