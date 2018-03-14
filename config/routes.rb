Rails.application.routes.draw do
  resources :topics
  resources :posts

  devise_for :users

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
