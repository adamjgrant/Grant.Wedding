class HomeController < ApplicationController
  before_action :set_locale

  def index
    @pages = Page.all
  end

  def set_locale
    I18n.locale = SINGLE_LANGUAGE ? "en" : (session[:language] || I18n.default_locale)
  end
end
