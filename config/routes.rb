Rails.application.routes.draw do
  get 'users/show'
  get '/', to:'static_pages#home'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  devise_for :users
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
