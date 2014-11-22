Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :cooperations do
    resources :cooperations, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :cooperations, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :cooperations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :cooperations do
    resources :cooperation_types, :only => [:index, :show]
  end

  # Admin routes
  namespace :cooperations, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/cooperations" do
      resources :cooperation_types, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
