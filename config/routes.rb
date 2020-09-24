Rails.application.routes.draw do
  devise_for :members, path: '', path_names:{sign_in: 'login', sign_up:'register'} ,:controllers => { registrations: 'registrations' }
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
