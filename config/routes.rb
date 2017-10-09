Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions, expect: [:show, :new, :index]
  resources :tags

  #  синонимы путей - в дополнение к созданным в ресурсах выше
  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
end
