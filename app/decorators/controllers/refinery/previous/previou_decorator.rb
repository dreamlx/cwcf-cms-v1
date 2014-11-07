Refinery::Previous::PreviousController.class_eval do
  before_filter :find_previous_page

  def find_previous_page
    @previous_page = ::Refinery::Page.find("previous")
  end

  protected :find_previous_page

end
