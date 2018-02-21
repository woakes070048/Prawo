class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
