Rails.application.routes.draw do
  root "charges#index"

  resources :charges, only: [:new, :create]
end
