# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tasks#index'
  # BEGIN
  resources :tasks, except: :index
  # END
end
