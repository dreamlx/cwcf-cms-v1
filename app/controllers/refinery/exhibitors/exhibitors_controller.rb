module Refinery
  module Exhibitors
    class ExhibitorsController < ::ApplicationController

      before_filter :find_all_exhibitors
      before_filter :find_page

      def index
        fiter = params[:place_name]
        @exhibitors = Exhibitor.where("title like '%#{fiter}%'").paginate(:page => params[:page], :per_page => 20)
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @exhibitor in the line below:
        present(@page)
      end

      def show
        @exhibitor = Exhibitor.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @exhibitor in the line below:
        present(@page)
      end

    protected

      def find_all_exhibitors
        @exhibitors = Exhibitor.order('title ASC').paginate(:page => params[:page], :per_page => 20)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/exhibitors").first
      end

    end
  end
end
