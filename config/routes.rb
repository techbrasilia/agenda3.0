 Rails.application.routes.draw do
  
  resources :static_pages
  root to: "static_pages#index"

  
  
  get 'comps/:id', to: 'empregados#comps', as: 'comp_emp'
  get 'destroy/:id', to: 'empregados#destroy', as: 'del_emp'
  get 'destroy/:id', to: 'empresas#:destroy', as: 'destroy_empresa'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :compromissos
  resources :empregados
  resources :empresas
end
