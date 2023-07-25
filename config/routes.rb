# config/routes.rb
Rails.application.routes.draw do
  # Define the root URL route
  root 'dice#index'

  # Define the route for rolling dice
  get '/dice/:num_of_dice/:sides', to: 'dice#roll'
end
