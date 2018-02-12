Rails.application.routes.draw do
  root 'static_pages#index'

  resources :clients

  ##
  ## FEES
  ##
  get '/fees/manage/:client_id',   to: 'fees#manage',  as: :manage_fees
  get '/fees/new/:client_id',      to: 'fees#new',     as: :new_fees
  post '/fees/create/:client_id',  to: 'fees#create',  as: :create_fees

  ##
  ## LAWSUITS
  ##
  get '/lawsuits/manage/:client_id',  to: 'lawsuits#manage',  as: :manage_lawsuits
  get '/lawsuits/details/:id',        to: 'lawsuits#details', as: :lawsuit_details

  get '/lawsuits/new/:client_id',     to: 'lawsuits#new',     as: :new_lawsuit
  post '/lawsuits/create/:client_id', to: 'lawsuits#create',  as: :create_lawsuit

  get '/lawsuits/edit/:id',           to: 'lawsuits#edit',    as: :edit_lawsuit
  post '/lawsuits/update/:id',        to: 'lawsuits#update',  as: :update_lawsuit

  get '/lawsuits/remove/:id',         to: 'lawsuits#remove',  as: :remove_lawsuit

end
