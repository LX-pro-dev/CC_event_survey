Rails.application.routes.draw do
  resources :questions
  resources :surveys
  resources :events do
    member do
      patch :change_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
