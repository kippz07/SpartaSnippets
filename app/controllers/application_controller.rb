class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  def authenticate
    @admin = current_user.try(:admin?)
  end

  def after_sign_up_path_for(resource)
    '/pi'
  end

  def after_sign_in_path_for(resource_or_scope)
    if !current_user.try(:admin?)
        '/pi'
    else
        '/'
    end
  end
end
