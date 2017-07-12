Rails.application.routes.draw do
  devise_for :members

  resources :members, only: [] do
    get :dashboard, on: :member
  end

  resources :albums

  root 'home#site_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
