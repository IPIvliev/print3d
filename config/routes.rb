Print3d::Application.routes.draw do

  resources :articles
  resources :models

  get "omniauth_callbacks/facebook"
  get "omniauth_callbacks/vkontakte"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, :only => [:index, :show, :edit, :update, :destroy] do
    member do
      get "/billing", to: "users#billing", as: :billing
    end
  end

  get "/index.html", to: "static_pages#index"
  get "/o-proekte.html", to: "static_pages#about"
  get "/kontakti.html", to: "static_pages#contacts"

  root :to => 'static_pages#index'
end
