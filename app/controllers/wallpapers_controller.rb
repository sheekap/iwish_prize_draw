class WallpapersController < ApplicationController
  before_action :set_wallpaper, only: [:show, :edit, :update, :destroy]

  # GET /wallpapers
  def index
    @wallpapers = Wallpaper.all
  end

  # GET /wallpapers/1
  def show
  end

  # GET /wallpapers/new
  def new
    @wallpaper = Wallpaper.new
  end

  # GET /wallpapers/1/edit
  def edit
  end

  # POST /wallpapers
  def create
    @wallpaper = Wallpaper.new(wallpaper_params)

    if @wallpaper.save
      redirect_to @wallpaper, notice: 'Wallpaper was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wallpapers/1
  def update
    if @wallpaper.update(wallpaper_params)
      redirect_to @wallpaper, notice: 'Wallpaper was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wallpapers/1
  def destroy
    @wallpaper.destroy
    redirect_to wallpapers_url, notice: 'Wallpaper was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallpaper
      @wallpaper = Wallpaper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wallpaper_params
      params.fetch(:wallpaper, {})
    end
end
