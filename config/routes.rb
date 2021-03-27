Rails.application.routes.draw do
  root "signatures#index"

  resources :signatures
end
