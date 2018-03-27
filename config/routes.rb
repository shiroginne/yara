Rails.application.routes.draw do
  resources :packages do
    member do
      get 'dependencies'
    end
  end
end
