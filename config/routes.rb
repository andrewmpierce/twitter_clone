Rails.application.routes.draw do
   root 'tweets#index'

   resources :tweets
   resources :users
end
