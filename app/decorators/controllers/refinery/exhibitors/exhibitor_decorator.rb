Refinery::Exhibitors::ExhibitorsController.class_eval do
  # before_filter :find_exhibitors_by_tag, :only => [:index]

  protected

  def find_exhibitors_by_tag
    tag_ = params[:tag]
    
  end
end