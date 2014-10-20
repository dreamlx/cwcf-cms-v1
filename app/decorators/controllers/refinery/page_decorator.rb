
Refinery::PagesController.class_eval do
  # before_filter :fetch_events, :only => [:show]

  # def fetch_events
  #   @events = ::Refinery::Events::Event.all
  # end
  # protected :fetch_events

  skip_before_filter :find_page, :only => [:about_us]
  def about_us
    @page = ::Refinery::Page.where(:link_url => '/about-us').first || error_404
    @events = ::Refinery::Events::Event.all
    render_with_templates?
  end
end