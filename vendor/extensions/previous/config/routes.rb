Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :previous do
    resources :previous, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :previous, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :previous, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
