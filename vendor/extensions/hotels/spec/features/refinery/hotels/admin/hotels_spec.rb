# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Hotels" do
    describe "Admin" do
      describe "hotels" do
        refinery_login_with :refinery_user

        describe "hotels list" do
          before do
            FactoryGirl.create(:hotel, :title => "UniqueTitleOne")
            FactoryGirl.create(:hotel, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.hotels_admin_hotels_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.hotels_admin_hotels_path

            click_link "Add New Hotel"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Hotels::Hotel.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Hotels::Hotel.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:hotel, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.hotels_admin_hotels_path

              click_link "Add New Hotel"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Hotels::Hotel.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:hotel, :title => "A title") }

          it "should succeed" do
            visit refinery.hotels_admin_hotels_path

            within ".actions" do
              click_link "Edit this hotel"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:hotel, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.hotels_admin_hotels_path

            click_link "Remove this hotel forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Hotels::Hotel.count.should == 0
          end
        end

      end
    end
  end
end
