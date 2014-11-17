
Refinery::PagesController.class_eval do
  before_filter :fetch_hotels, :only => [:show]

  def fetch_hotels
    @hotels = ::Refinery::Hotels::Hotel.all
  end
  protected :fetch_hotels

end
