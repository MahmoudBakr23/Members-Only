Rails.application.routes.draw do
  devise_for :members, path: '', path_names:{sign_in: 'login', sign_up:'register'} ,:controllers => { registrations: 'registrations' }
  resources :posts
  root 'posts#index'
end
