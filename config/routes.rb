Rails.application.routes.draw do

  root to: "site#root"
  namespace :api do
    resources :todo_lists, only: [:create, :index, :show, :update, :destroy] do
      resources :todo_list_items, only: :index
    end

    resources :todo_list_items, only: [:create, :show] do
      resources :comments, only: :index
    end

    resources :comments, only: [:create, :show]
  end

end
