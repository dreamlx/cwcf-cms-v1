
Refinery::PagesController.class_eval do
  before_filter :fetch_hotels, :only => [:show]
  before_filter :find_all_contact_types

  def fetch_hotels
    @hotels = ::Refinery::Hotels::Hotel.all
  end
  protected :fetch_hotels

  def find_all_contact_types
    @contact_types = ::Refinery::Contacts::ContactType.all
  end

  protected :find_all_contact_types

end
