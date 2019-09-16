Rails.application.routes.draw do
  # resources :authors do
  #   resources :books
  # end

  # routes para el versionado
  namespace :api do
    namespace :v1 do
      resources :authors do
        resources :books
      end

      resource :auth, only: %i[create]
    end
  end

  root to: 'authors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
