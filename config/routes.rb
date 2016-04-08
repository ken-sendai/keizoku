Rails.application.routes.draw do
  resources :products do
    collection do
      get 'about'
    end
  end

  devise_for :users

  root "products#index"

end