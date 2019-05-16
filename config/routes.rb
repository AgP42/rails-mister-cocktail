Rails.application.routes.draw do

  root to: 'cocktails#index'
  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail

  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # patch 'cocktails/:id', to: 'cocktails#update'

  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  post 'cocktails', to: 'cocktails#create'

  # delete 'cocktails/:id', to: 'cocktails#destroy'
end
