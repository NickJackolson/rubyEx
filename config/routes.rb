Rails.application.routes.draw do
  resources :writers
  get 'welcome/index'
  resources :articles
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  resources :writers do
    resources :reviews
  end
end
