class ApplicationController < ActionController::Base
  # Deviseコントローラーの場合に許可されるパラメーターを設定
  before_action :configure_permitted_parameters, if: :devise_controller?

  # アクティブストレージのURLオプションを設定
  before_action :set_url_options

  private

  # Deviseで許可されるパラメーターを設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :name, :profile, :occupation, :position])
  end

  # アクティブストレージのURLオプションを設定
  def set_url_options
    ActiveStorage::Current.url_options = Rails.application.routes.default_url_options
  end
end
