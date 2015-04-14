Rails.application.routes.draw do
  resource :shuffle, only: [:create], controller: 'shuffle'
  root 'home#show'
end
