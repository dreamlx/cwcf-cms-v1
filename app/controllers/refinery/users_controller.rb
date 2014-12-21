module Refinery
  class UsersController < Devise::RegistrationsController

    # Protect these actions behind an admin login
    # before_filter :redirect?, :only => [:new, :create]

    helper Refinery::Core::Engine.helpers
    layout 'refinery/layouts/login'

    def new
      @user = User.new
    end

    def show
      @user = current_refinery_user
    end

    # This method should only be used to create the first Refinery user.
    def create
      @user = User.new(params[:user])
      role = params[:jiaose]
      @user.add_role(role)

      if @user.create_first
        flash[:message] = "<h2>#{t('welcome', :scope => 'refinery.users.create', :who => @user.username).gsub(/\.$/, '')}.</h2>".html_safe

        sign_in(@user)
        
        OrderMailer.confirm_user(@user).deliver
        
        if @user.has_role?(:superuser)
          redirect_back_or_default(refinery.admin_root_path)
        else
          if @user.has_role?(:exhibitor)
            redirect_to("/partners/apply")
          elsif @user.has_role?(:journalist)
            redirect_to("/media/reporter-reg")
          else
            redirect_back_or_default(refinery.root_path)
          end
        end
      else
        render :new
      end
    end

    protected

    def redirect?
      if refinery_user?
        redirect_to refinery.admin_users_path
      elsif refinery_users_exist?
        redirect_to refinery.login_path
      end
    end

    def refinery_users_exist?
      Refinery::Role[:refinery].users.any?
    end

  end
end
