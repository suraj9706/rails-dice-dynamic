# config/routes.rb
Rails.application.routes.draw do
  root 'dice#roll'  # Set the root path to the roll action in the DiceController

  get '/roll_dice/:num_of_dice/:sides', to: 'dice#roll'
end
