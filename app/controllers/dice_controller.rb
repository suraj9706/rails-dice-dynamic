# app/controllers/dice_controller.rb
class DiceController < ApplicationController
  def roll
    @num_of_dice = params[:num_of_dice].to_i
    @sides = params[:sides].to_i
    @rolls = []

    @num_of_dice.times do
      @rolls << rand(1..@sides)
    end

    # Render the appropriate view template based on the number of dice
    if @num_of_dice == 1
      render 'dice_roll'
    elsif @num_of_dice == 5
      render 'dice_rolls_5'
    else
      render 'dice_rolls'
    end
  end
end
