Rails.application.routes.draw do
  resources :interactions

  devise_for :users, controllers: { registrations: 'registrations' }

  devise_scope :user do
    get 'users/get_meli_auth_url', to: 'registrations#get_meli_auth_url'
    post 'users/connect_with_meli', to: 'registrations#connect_with_meli'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
