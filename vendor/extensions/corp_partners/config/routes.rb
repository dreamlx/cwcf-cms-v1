Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :corp_partners do
    resources :corp_partners, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :corp_partners, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :corp_partners, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :corp_partners do
    resources :corp_partner_types, :only => [:index, :show]
  end

  # Admin routes
  namespace :corp_partners, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/corp_partners" do
      resources :corp_partner_types, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
