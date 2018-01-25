require 'test_helper'

class PrizeTest < ActiveSupport::TestCase
  test "will not award camera as a prize if there are none" do
    prize = prizes(:prize_with_no_cameras)
    prize_tiers_array = []

    10.times { prize_tiers_array << prize.prize_draw(rand(1000)) }

    assert_equal prize.number_of_cameras, 0

    refute prize_tiers_array.include?(3)
    assert prize_tiers_array.include?(1)
    assert prize_tiers_array.include?(2)
  end

  test "will not award bottle as a prize if there are none" do
    prize = prizes(:prize_with_no_bottles)
    prize_tiers_array = []

    10.times { prize_tiers_array << prize.prize_draw(rand(1000)) }

    assert_equal prize.number_of_bottles, 0

    refute prize_tiers_array.include?(2)
    assert prize_tiers_array.include?(1)
    assert prize_tiers_array.include?(3)
  end

  test "will award all three tiers of prizes when all are available" do
    prize = prizes(:prize_with_bottles_and_cameras)
    prize_tiers_array = []

    10.times { prize_tiers_array << prize.prize_draw(rand(1000)) }

    assert prize.number_of_bottles > 0
    assert prize.number_of_cameras > 0

    assert prize_tiers_array.include?(1)
    assert prize_tiers_array.include?(2)
    assert prize_tiers_array.include?(3)
  end
  # TODO: write tests to make sure decrement on bottles and cameras works okay
end
