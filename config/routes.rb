Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/crypto_update', to: 'cryptos#update'
  get '/crypto', to: 'cryptos#index'

  namespace :api, defaults: { format: 'json' } do
    resources :posts, only: :index
  end

  match '*path', to: 'cryptos#index', via: :all
end
