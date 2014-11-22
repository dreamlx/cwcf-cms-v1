module Refinery
  module Cooperations
    class CooperationsController < ::ApplicationController

      before_filter :find_all_cooperations
      before_filter :find_page
      before_filter :find_all_cooperation_types

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cooperation in the line below:
        present(@page)
      end

      def show
        @cooperation = Cooperation.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cooperation in the line below:
        present(@page)
      end

    protected

      def find_all_cooperations
        @cooperations = Cooperation.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/cooperations").first
      end

      def find_all_cooperation_types
        @cooperation_types = CooperationType.all
      end

    end
  end
end
