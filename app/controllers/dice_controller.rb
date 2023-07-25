# app/controllers/dice_controller.rb
class DiceController < ApplicationController
  skip_forgery_protection

  def roll
    @num_of_dice = params[:num_of_dice].to_i
    @sides = params[:sides].to_i
    @rolls = []

    @num_of_dice.times do
      @rolls << rand(1..@sides)
    end
  end
end
