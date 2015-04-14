Rails.application.routes.draw do
  resource :shuffle, only: [:show, :create]
  root 'shuffle#show'
end
