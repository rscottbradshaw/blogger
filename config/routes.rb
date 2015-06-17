Rails.application.routes.draw do
  devise_for :authors
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :tags
end
