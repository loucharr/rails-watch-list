Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:create, :new, :show, :index] do
    resources :bookmarks, only: [:index, :new, :create]
  end
  ressources :bookmarks, only: [:destroy]
end
