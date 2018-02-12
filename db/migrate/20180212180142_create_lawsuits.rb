class CreateLawsuits < ActiveRecord::Migration[5.1]
  def change
    create_table :lawsuits do |t|
      t.string :case_number
      t.string :case_type
      t.string :court_name
      t.string :location
      t.date :filing_date
      t.references :client, foreign_key: true
      t.string :opposite_party
      t.text :case_details

      t.timestamps
    end
  end
end
