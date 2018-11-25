Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: %i[index new create] do
    resource :completion, only: %i[create destroy]
  end

  resources :session, only: %i[new create]
end
