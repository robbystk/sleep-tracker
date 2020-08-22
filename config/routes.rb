Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sleep_tracker#track'
  post :sleep, to: 'sleep_tracker#sleep'
  post :wake, to: 'sleep_tracker#wake'

  resources :sleep_records, only: [:show, :edit]
end
