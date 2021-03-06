Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :posts, only: [:index, :show, :create, :update]
      resources :likes, only: [:create]
      resources :reblogs, only: [:create]
      resources :xkcd_requests, only: [:import] do
        collection do
          get :import 
        end
      end
    end
  end

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
