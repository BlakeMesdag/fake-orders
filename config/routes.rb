Rails.application.routes.draw do
  resources :customers do
    get :search
  end

  resources :orders do
    get :search
  end

  root to: "orders#index"
end
