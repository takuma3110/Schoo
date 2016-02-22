Rails.application.routes.draw do
  devise_for :users
  resources :curriculums
  resources :users
end
