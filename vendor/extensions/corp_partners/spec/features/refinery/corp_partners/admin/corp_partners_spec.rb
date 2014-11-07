# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "CorpPartners" do
    describe "Admin" do
      describe "corp_partners" do
        refinery_login_with :refinery_user

        describe "corp_partners list" do
          before do
            FactoryGirl.create(:corp_partner, :title => "UniqueTitleOne")
            FactoryGirl.create(:corp_partner, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.corp_partners_admin_corp_partners_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.corp_partners_admin_corp_partners_path

            click_link "Add New Corp Partner"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::CorpPartners::CorpPartner.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::CorpPartners::CorpPartner.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:corp_partner, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.corp_partners_admin_corp_partners_path

              click_link "Add New Corp Partner"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::CorpPartners::CorpPartner.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:corp_partner, :title => "A title") }

          it "should succeed" do
            visit refinery.corp_partners_admin_corp_partners_path

            within ".actions" do
              click_link "Edit this corp partner"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:corp_partner, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.corp_partners_admin_corp_partners_path

            click_link "Remove this corp partner forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::CorpPartners::CorpPartner.count.should == 0
          end
        end

      end
    end
  end
end
