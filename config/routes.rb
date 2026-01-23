Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  devise_for :users
  root to: "homes#top"
  get '/homes/about' => 'homes#about', as: "about"
end
