class PagesController < ApplicationController
  before_action :set_locale
  layout "pages"

  def show
    @pages = Page.all
    @page = @pages.find_by(id: params[:id])
    @sections = @page.sections.where(archived: false)
  end

  def set_locale
    I18n.locale = session[:language] || I18n.default_locale
  end
end
