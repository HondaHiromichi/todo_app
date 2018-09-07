# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  rescue_from SecurityError do |exception|
    redirect_to root_url, notice: 'アドミン画面へのアクセス権限がありません。'
　protect_from_forgery with: :exception
  end

  # def configure_permitted_parameters
  #   added_attrs = [:name, :email, :password, :password_confirmation, :remember_me, :avatar]
  # end

  def after_sign_out_path_for(resource)
    new_session_path(resource_name)
  end

  protected

  def authenticate_admin_user!
    raise SecurityError unless current_user.try(:admin?)
  end 
  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
