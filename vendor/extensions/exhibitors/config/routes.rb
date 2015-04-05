Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :exhibitors do
    resources :exhibitors, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :exhibitors, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :exhibitors, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
