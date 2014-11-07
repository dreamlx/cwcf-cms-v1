Refinery::Hotels::HotelsController.class_eval do
  before_filter :find_services_page

  def find_services_page
    @services_page = ::Refinery::Page.find("services")
  end

  protected :find_services_page

end
