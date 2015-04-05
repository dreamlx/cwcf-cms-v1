
FactoryGirl.define do
  factory :corp_partner_type, :class => Refinery::CorpPartners::CorpPartnerType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

