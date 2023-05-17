# frozen_string_literal: true

Rails.application.routes.draw do
  resources :vacancies do
    # BEGIN
    member do
      patch :update_state
    end
    # END
  end
  root 'vacancies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
