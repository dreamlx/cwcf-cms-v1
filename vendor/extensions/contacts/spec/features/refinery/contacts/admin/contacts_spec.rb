# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Contacts" do
    describe "Admin" do
      describe "contacts" do
        refinery_login_with :refinery_user

        describe "contacts list" do
          before do
            FactoryGirl.create(:contact, :telephone => "UniqueTitleOne")
            FactoryGirl.create(:contact, :telephone => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.contacts_admin_contacts_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.contacts_admin_contacts_path

            click_link "Add New Contact"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Telephone", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Contacts::Contact.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Telephone can't be blank")
              Refinery::Contacts::Contact.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:contact, :telephone => "UniqueTitle") }

            it "should fail" do
              visit refinery.contacts_admin_contacts_path

              click_link "Add New Contact"

              fill_in "Telephone", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Contacts::Contact.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:contact, :telephone => "A telephone") }

          it "should succeed" do
            visit refinery.contacts_admin_contacts_path

            within ".actions" do
              click_link "Edit this contact"
            end

            fill_in "Telephone", :with => "A different telephone"
            click_button "Save"

            page.should have_content("'A different telephone' was successfully updated.")
            page.should have_no_content("A telephone")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:contact, :telephone => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.contacts_admin_contacts_path

            click_link "Remove this contact forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Contacts::Contact.count.should == 0
          end
        end

      end
    end
  end
end
