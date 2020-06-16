class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def home
        if user_signed_in?
            me = current_user
            c = User.find(me.id)
            @email = c.emailhero
        end
    end
    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :sector_id])
            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :sector_id])
        end
    
end
