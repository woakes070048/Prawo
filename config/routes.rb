Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  get '/help', to: 'static_pages#help', as: :help

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


  ##
  ## DOCUMENTS
  ##
  get '/documents/index',               to: 'documents#index',    as: :documents_index
  get '/documents/manage/:lawsuit_id',  to: 'documents#manage',   as: :manage_documents
  get '/documents/details/:id',         to: 'documents#details',  as: :document_details

  get '/documents/new/:lawsuit_id',     to: 'documents#new',      as: :new_document
  post '/documents/create/:lawsuit_id', to: 'documents#create',   as: :create_document

  get '/documents/remove/:id',          to: 'documents#remove',   as: :remove_document

  ##
  ## ADMINISTRATION
  ##
  get '/administration/users/index',        to: 'administration#users_index',     as: :admin_users_index
  get '/administration/users/details/:id',  to: 'administration#users_details',   as: :admin_users_details

  get '/administration/users/new',          to: 'administration#users_new',       as: :admin_users_new
  post '/administration/users/create',      to: 'administration#users_create',    as: :admin_users_create

  get '/administration/users/edit/:id',     to: 'administration#users_edit',      as: :admin_users_edit
  post '/administration/users/update/:id',  to: 'administration#users_update',    as: :admin_users_update

  get '/administration/users/disable/:id',  to: 'administration#users_disable',   as: :admin_users_disable
  get '/administration/users/enable/:id',   to: 'administration#users_enable',    as: :admin_users_enable
  get '/administration/users/remove/:id',   to: 'administration#users_remove',    as: :admin_users_remove

  get '/administration/users/logs/:id',     to: 'administration#users_logs',      as: :admin_users_logs

  get '/administration/logs',               to: 'administration#logs',            as: :admin_logs
end
