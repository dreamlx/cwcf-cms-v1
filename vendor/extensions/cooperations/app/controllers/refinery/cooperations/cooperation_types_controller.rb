module Refinery
  module Cooperations
    class CooperationTypesController < ::ApplicationController

      before_filter :find_all_cooperation_types
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cooperation_type in the line below:
        present(@page)
      end

      def show
        @cooperation_type = CooperationType.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cooperation_type in the line below:
        present(@page)
      end

    protected

      def find_all_cooperation_types
        @cooperation_types = CooperationType.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/cooperation_types").first
      end

    end
  end
end
