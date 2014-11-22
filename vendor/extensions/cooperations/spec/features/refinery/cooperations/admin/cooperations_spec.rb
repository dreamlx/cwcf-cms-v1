# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Cooperations" do
    describe "Admin" do
      describe "cooperations" do
        refinery_login_with :refinery_user

        describe "cooperations list" do
          before do
            FactoryGirl.create(:cooperation, :title => "UniqueTitleOne")
            FactoryGirl.create(:cooperation, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.cooperations_admin_cooperations_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.cooperations_admin_cooperations_path

            click_link "Add New Cooperation"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Cooperations::Cooperation.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Cooperations::Cooperation.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:cooperation, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.cooperations_admin_cooperations_path

              click_link "Add New Cooperation"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Cooperations::Cooperation.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:cooperation, :title => "A title") }

          it "should succeed" do
            visit refinery.cooperations_admin_cooperations_path

            within ".actions" do
              click_link "Edit this cooperation"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:cooperation, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.cooperations_admin_cooperations_path

            click_link "Remove this cooperation forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Cooperations::Cooperation.count.should == 0
          end
        end

      end
    end
  end
end
