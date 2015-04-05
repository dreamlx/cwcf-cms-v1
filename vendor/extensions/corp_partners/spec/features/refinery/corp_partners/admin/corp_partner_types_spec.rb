# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "CorpPartners" do
    describe "Admin" do
      describe "corp_partner_types" do
        refinery_login_with :refinery_user

        describe "corp_partner_types list" do
          before do
            FactoryGirl.create(:corp_partner_type, :name => "UniqueTitleOne")
            FactoryGirl.create(:corp_partner_type, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.corp_partners_admin_corp_partner_types_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.corp_partners_admin_corp_partner_types_path

            click_link "Add New Corp Partner Type"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::CorpPartners::CorpPartnerType.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::CorpPartners::CorpPartnerType.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:corp_partner_type, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.corp_partners_admin_corp_partner_types_path

              click_link "Add New Corp Partner Type"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::CorpPartners::CorpPartnerType.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:corp_partner_type, :name => "A name") }

          it "should succeed" do
            visit refinery.corp_partners_admin_corp_partner_types_path

            within ".actions" do
              click_link "Edit this corp partner type"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:corp_partner_type, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.corp_partners_admin_corp_partner_types_path

            click_link "Remove this corp partner type forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::CorpPartners::CorpPartnerType.count.should == 0
          end
        end

      end
    end
  end
end
