Refinery::Exhibitors::ExhibitorsController.class_eval do
  # before_filter :find_exhibitors_by_tag, :only => [:index]
  before_filter :find_visitors_page

  protected

  def find_exhibitors_by_tag
    tag_ = params[:tag]

  end

  def find_visitors_page
    @visitors_page = ::Refinery::Page.find("visitors")
  end

end
