class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    
    helper_method :resource, :resource_name, :devise_mapping
  
    def resource_name
      :user
    end
  
    def resource
      @resource ||= User.new
    end
  
    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
  
    def after_sign_in_path_for(resource)
      root_path # You can change this to wherever you want to redirect after login
    end
  end
  