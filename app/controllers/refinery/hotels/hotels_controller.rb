module Refinery
  module Hotels
    class HotelsController < ::ApplicationController

      before_filter :find_all_hotels
      before_filter :find_page
      before_filter :find_services_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @hotel in the line below:
        present(@page)
      end

      def show
        @hotel = Hotel.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @hotel in the line below:
        present(@page)
      end

    protected

      def find_all_hotels
        @hotels = Hotel.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/hotels").first
      end

      def find_services_page
        @services_page = ::Refinery::Page.find("services")
      end

    end
  end
end
