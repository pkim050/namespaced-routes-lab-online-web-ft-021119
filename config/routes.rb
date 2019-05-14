Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
    resources :songs, only: %i[show index new edit]
  end

  resources :songs

  namespace :admin do
    resources :preferences
  end
end
