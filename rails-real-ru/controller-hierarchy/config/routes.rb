# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    root 'home#index'

    resources :movies do
      # BEGIN
      scope module: :movies do
        resources :reviews, except: %i[show]
        resources :comments, except: %i[show]
      end
      # END
    end
    resources :reviews, except: %i[show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
