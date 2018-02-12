Rails.application.routes.draw do
  root 'static_pages#index'

  resources :clients

  ##
  ## FEES
  ##
  get '/fees/manage/:client_id',   to: 'fees#manage',  as: :manage_fees
  get '/fees/new/:client_id',      to: 'fees#new',     as: :new_fees
  post '/fees/create/:client_id',  to: 'fees#create',  as: :create_fees

end
