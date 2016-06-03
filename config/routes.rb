Rails.application.routes.draw do
<<<<<<< HEAD
  resources :products do
    collection do
      get 'about'
    end
  end

  devise_for :users

  root "products#index"

end
=======
  devise_for :users
  root "products#index"
  resources :products
end
>>>>>>> ac66dd36a2730c9829d960ddcef508e076f6603f
