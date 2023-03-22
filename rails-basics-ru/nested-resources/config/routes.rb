# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  # BEGIN
  resources :posts, except: [:index] do
    resources :post_comments, only: [:index, :new, :create]
  end 

  resources :posts, except: [:index], shallow: true do
    resources :post_comments, only: [:show, :edit, :update, :destroy]
  end
  # END
end
