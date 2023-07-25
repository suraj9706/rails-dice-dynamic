# config/routes.rb
Rails.application.routes.draw do
  get '/roll_dice/:num_of_dice/:sides', to: 'dice#roll'
end
