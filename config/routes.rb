Rails.application.routes.draw do
  root 'top#index'
  get 'curriculums/search' => 'curriculums#search'
  devise_for :users
  resources :curriculums
  resources :users
  resources :genre
end
