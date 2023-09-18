Rails.application.routes.draw do
  root "chats#index"

  resources :chats, only: %i[show index] do
    resources :messages, only: %i[create]
  end
end
