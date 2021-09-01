class ApplicationController < ActionController::Base
  include Accessible
    
  #Passing parameters for submitting the form 
  skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u|
        u.permit(:email, :password, :password_confirmation, 
        :employee_profile_attributes => [:first_name, :last_name, :profession_id], 
        :employer_profile_attributes => [:business_name, :first_name, :last_name])
      }
    columns = %i[email password password_confirmation]
    devise_parameter_sanitizer.permit(:account_update, keys: columns)   
  end

  before_action :check_user


  def check_user
      if current_employer
        # flash.clear
        # if you have rails_admin. You can redirect anywhere really
        #redirect_to(rails_employer.dashboard_path) && return
      elsif current_employee
        # flash.clear
        # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
        # redirect_to(authenticated_employee_root_path) && return
      else
        authenticate_employee!
      end
    end
end
