Rails.application.routes.draw do
  root to: "years#index"
  resources :years, only: :index do
    resources :months, only: :index do
      resources :spends, only: :index
    end
  end
end
