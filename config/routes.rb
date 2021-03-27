Rails.application.routes.draw do
  root "signatures#index"

  get "/signatures", to: "signatures#index"
end
