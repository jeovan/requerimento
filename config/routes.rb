Rails.application.routes.draw do
  root 'requerimentos#index'

  get '/logradouro', to: 'requerimentos#logradouros', as: 'logradouros'
  post '/logradouro', to: 'requerimentos#logradouros', as: 'logradouros_f'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
