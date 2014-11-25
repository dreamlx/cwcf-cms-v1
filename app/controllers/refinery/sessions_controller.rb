module Refinery
  class SessionsController < Devise::SessionsController
    helper Refinery::Core::Engine.helpers
    layout 'refinery/layouts/login'

    before_filter :clear_unauthenticated_flash, :only => [:new]

    def create
      super
      role = Refinery::Role.find(2)
      unless current_refinery_user.roles.include?(role)
        # redirect_to root_path
      end
    rescue AbstractController::DoubleRenderError
      render root_path
    rescue ::BCrypt::Errors::InvalidSalt, ::BCrypt::Errors::InvalidHash
      flash[:error] = t('password_encryption', :scope => 'refinery.users.forgot')
      redirect_to refinery.new_refinery_user_password_path
    end

  protected

    # We don't like this alert.
    def clear_unauthenticated_flash
      if flash.keys.include?(:alert) and flash.any?{|k, v|
        ['unauthenticated', t('unauthenticated', :scope => 'devise.failure')].include?(v)
      }
        flash.delete(:alert)
      end
    end

  end
end
