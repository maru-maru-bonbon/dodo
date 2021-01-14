Rails.application.routes.draw do
  get 'plans/index'
  resources :plans, only: [:index]
end
