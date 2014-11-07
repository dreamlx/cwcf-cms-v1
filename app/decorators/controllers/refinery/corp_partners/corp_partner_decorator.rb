Refinery::CorpPartners::CorpPartnersController.class_eval do
  before_filter :find_corp_partners_page

  def find_corp_partners_page
    @corp_partners_page = ::Refinery::Page.find("corp_partners")
  end

  protected :find_corp_partners_page

end
