Rails.application.routes.draw do
  root 'requerimentos#index'
  resources :logradouro
  resources :municipio
  resources :bairro
  resources :natureza_juridica
  resources :regime_pagamento
  resources :atividade_economica
  resources :contador
  resources :socio
  resources :cargo
  resources :requerimentos
end
