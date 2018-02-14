Rails.application.routes.draw do
  root 'static_pages#index'

  resources :clients

  ##
  ## FEES
  ##
  get '/fees/index',               to: 'fees#index',   as: :fees_index
  get '/fees/manage/:client_id',   to: 'fees#manage',  as: :manage_fees

  get '/fees/new/:client_id',      to: 'fees#new',     as: :new_fees
  post '/fees/create/:client_id',  to: 'fees#create',  as: :create_fees


  ##
  ## LAWSUITS
  ##
  get '/lawsuits/index',              to: 'lawsuits#index',   as: :lawsuits_index
  get '/lawsuits/manage/:client_id',  to: 'lawsuits#manage',  as: :manage_lawsuits
  get '/lawsuits/details/:id',        to: 'lawsuits#details', as: :lawsuit_details

  get '/lawsuits/new/:client_id',     to: 'lawsuits#new',     as: :new_lawsuit
  post '/lawsuits/create/:client_id', to: 'lawsuits#create',  as: :create_lawsuit

  get '/lawsuits/edit/:id',           to: 'lawsuits#edit',    as: :edit_lawsuit
  post '/lawsuits/update/:id',        to: 'lawsuits#update',  as: :update_lawsuit

  get '/lawsuits/remove/:id',         to: 'lawsuits#remove',  as: :remove_lawsuit


  ##
  ## UPDATES
  ##
  get '/updates/index',               to: 'updates#index',    as: :updates_index
  get '/updates/manage/:lawsuit_id',  to: 'updates#manage',   as: :manage_updates
  get '/updates/details/:id',         to: 'updates#details',  as: :update_details

  get '/updates/new/:lawsuit_id',     to: 'updates#new',      as: :new_update
  post '/updates/create/:lawsuit_id', to: 'updates#create',   as: :create_update

  get '/updates/edit/:id',            to: 'updates#edit',     as: :edit_update
  post '/updates/update/:id',         to: 'updates#update',   as: :update_update

  get '/updates/remove/:id',          to: 'updates#remove',   as: :remove_update


end
