class PrizeController < ApplicationController
  def show
    @prize = Prize.first
    @prize.increment!(:counter)
  end
end
