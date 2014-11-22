Refinery::Cooperations::CooperationsController.class_eval do
  before_filter :find_cooperation_page

  def find_cooperation_page
    @cooperation_page = ::Refinery::Page.find("cooperation")
  end

  protected :find_cooperation_page

end
