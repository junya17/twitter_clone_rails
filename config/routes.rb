Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :tweeets do
  member do
    put 'like', to: "tweeets#like"
    put 'unlike', to: "tweeets#unlike"
      end
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeets#index"
  resources :relationships,       only: [:create, :destroy]

end
