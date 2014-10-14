Rails.application.routes.draw do

  root "parties#index"
  resources :parties
  resources :characters, only: [:show, :create, :edit, :update, :destroy]

end
