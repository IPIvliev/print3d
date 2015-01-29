Print3d::Application.routes.draw do
  root :to => 'static_pages#index'
  
  get "/index.html", to: "static_pages#index"
  get "/o-proekte.html", to: "static_pages#about"
  get "/kontakti.html", to: "static_pages#contacts"


end
