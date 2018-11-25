Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: %i[index new create] do
    resources :completion, only: :create
  end

  resources :session, only: %i[new create]
end
