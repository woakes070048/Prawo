class CreateFees < ActiveRecord::Migration[5.1]
  def change
    create_table :fees do |t|
      t.string :details
      t.decimal :amount
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
