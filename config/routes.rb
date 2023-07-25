# config/routes.rb
Rails.application.routes.draw do
  # Your other routes might be defined here

  get '/dice/:num_of_dice/:sides', to: 'dice#roll'
end
