Rails.application.routes.draw do
  root "signatures#index"

  resources :signatures
  resources :about_us
  resources :contact_us
end
