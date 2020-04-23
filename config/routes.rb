Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tickets#index"

  post 'export', to: 'api#export'
  resources :tickets, only: [:index, :show]
end
