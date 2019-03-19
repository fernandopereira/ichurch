Rails.application.routes.draw do
  resources :pessoas

  resources :aniversariantes, only: :index

  root to: 'pessoas#index'
end
