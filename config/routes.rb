Rails.application.routes.draw do
  root "about_us#index"

  resources :signatures
  resources :about_us
  resources :contact_us
end
