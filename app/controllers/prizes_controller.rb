class PrizesController < ApplicationController
  before_action :set_prize, only: [:admin, :index, :show, :edit, :update, :destroy]

  def admin
  end

  def index
  end

  def show
    @prize.increment!(:counter)
  end

  def new
    @prize = Prize.new
  end

  def edit
  end

  def create
    @prize = Prize.new(prize_params)

    respond_to do |format|
      if @prize.save
        format.html { redirect_to @prize }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @prize.update(prize_params)
        format.html { redirect_to @prize }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @prize.destroy
    respond_to do |format|
      format.html { redirect_to prize_url}
    end
  end

  private
    def set_prize
      if Prize.any?
       @prize = Prize.first
     else
       @prize = Prize.create!
     end
    end

    def prize_params
      params.require(:prize).permit(:zendesk_logo, :tier_1_prize, :tier_2_prize, :tier_3_prize, :number_of_cameras, :number_of_bottles, :bottles_limit, :cameras_limit)
    end
end
