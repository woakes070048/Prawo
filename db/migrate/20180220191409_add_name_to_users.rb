class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :father_name, :string
    add_column :users, :job_title, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :pin_zip, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :notes, :text
    add_column :users, :enabled, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
  end
end
