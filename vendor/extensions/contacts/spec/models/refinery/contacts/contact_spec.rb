require 'spec_helper'

module Refinery
  module Contacts
    describe Contact do
      describe "validations" do
        subject do
          FactoryGirl.create(:contact,
          :telephone => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:telephone) { should == "Refinery CMS" }
      end
    end
  end
end
