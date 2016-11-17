class Admins::GuestsController < ApplicationController
  before_action :authenticate_admin!
  layout "pages"
  before_action :set_guest, only: [:show, :edit, :update]

  def index
    @guests = Guest.all.order(:name)
    @french_speakers = Guest.where(language: 'french').size
    @english_speakers = Guest.where(language: 'english').size
    @total_guests = Guest.all_guests
  end

  def show
    # @guest = Guest.find_by_id(params[:id])
  end

  def edit
  end

  def update
    respond_to do |format|
      if @guest.update(guest_params)
        format.html { redirect_to admins_guests_path, notice: 'Guest was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:name, :email, :addons, :language)
    end
end
