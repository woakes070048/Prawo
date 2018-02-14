class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :title
      t.text :details
      t.references :lawsuit, foreign_key: true

      t.timestamps
    end
  end
end
