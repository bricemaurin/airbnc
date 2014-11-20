Rails.application.routes.draw do

  root to: "home#index"

  get 'profiles/index', path: 'profile'

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  resources :flats do
    resources :bookings, except: :show
  end

end
