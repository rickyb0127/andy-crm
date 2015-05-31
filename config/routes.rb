Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users do
    resources :clients
  end

  resources :leads
  resources :not_interested
  resources :follow_ups

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
  get 'sign-in', to: 'authentication#new'
  post 'sign-in', to: 'authentication#create'
  get 'sign-out', to: 'authentication#destroy'

end
