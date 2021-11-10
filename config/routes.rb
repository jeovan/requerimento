Rails.application.routes.draw do
  root 'requerimentos#index'
  resources :logradouro
  resources :municipio
  resources :bairro
  resources :natureza_juridica
  resources :regime_pagamento

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
