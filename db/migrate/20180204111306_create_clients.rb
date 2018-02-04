class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :father_name
      t.string :phone
      t.string :email
      t.date :date_of_birth
      t.string :address
      t.string :city
      t.string :state
      t.string :pin_zip
      t.string :country
      t.text :notes

      t.timestamps
    end
  end
end
