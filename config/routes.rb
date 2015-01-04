Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { registrations: :registrations }
  resources :home do
    collection do
      get :about
      get :services
      get :contact
      get :districts
      get :cities
      get :donars
      get :blogpost
      get :bloghome1
      get :bloghome2
      get :faq
      get :portfolio
      get :portfolio1
      get :portfolio2
      get :portfolio3
      get :portfolio4
      get :pricing
      get :sidebar
    end
  end
  resources :users do
    collection do
      get :district
      get :city
      get :dashboard
    end
  end
  resources :cities
  resources :districts
  resources :states
end
