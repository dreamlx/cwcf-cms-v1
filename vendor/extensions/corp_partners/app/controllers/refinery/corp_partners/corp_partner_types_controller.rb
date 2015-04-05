module Refinery
  module CorpPartners
    class CorpPartnerTypesController < ::ApplicationController

      before_filter :find_all_corp_partner_types
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @corp_partner_type in the line below:
        present(@page)
      end

      def show
        @corp_partner_type = CorpPartnerType.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @corp_partner_type in the line below:
        present(@page)
      end

    protected

      def find_all_corp_partner_types
        @corp_partner_types = CorpPartnerType.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/corp_partner_types").first
      end

    end
  end
end
