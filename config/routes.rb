Rails.application.routes.draw do
  # GET "cocktails" (Cocktail list)
  root to: 'cocktails#index'
  get 'cocktails', to: 'cocktails#index'

  # GET "cocktails/new" - POST "cocktails"
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  post 'cocktails', to: 'cocktails#create'

  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # patch 'cocktails/:id', to: 'cocktails#update'

  # show 1 cocktail - GET "cocktails/42"
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  # delete cocktail
  delete 'cocktails/:id', to: 'cocktails#destroy'

  # GET "cocktails/42/doses/new" - POST "cocktails/42/doses"
  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :new_cocktail_dose
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses

  # delete dose - DELETE "doses/25"
  delete 'doses/:id', to: 'doses#destroy', as: :dose

  # resources :cocktails do
  #   resources :doses, only: [ :new, :create ]
  # end
  # resources :doses, only: [:destroy]
end
