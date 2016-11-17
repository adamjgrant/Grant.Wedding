class SettingsController < ApplicationController
  def set_language
    session[:language] = params[:language]
    # I18n.locale = session[:language] || I18n.default_locale
    I18n.locale = "en-us"
    redirect_to :back
  end
end
