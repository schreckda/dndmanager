Rails.application.routes.draw do
  get 'welcome/index'

  resources :characters do
    resources :stats
    # hier entsprechend die anderen models drunter packen
    # resources :race
    # resources :class
    # resources :skills
    # resources :proficiency
    # resources :inventory
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
