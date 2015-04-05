Refinery::Hotels::HotelsController.class_eval do
  before_filter :find_services_page, :find_hotel_page

  protected

    def find_services_page
      @services_page = ::Refinery::Page.find("services")
    end

    def find_hotel_page
      @hotel_page = ::Refinery::Page.find("hotels")
    end


end
