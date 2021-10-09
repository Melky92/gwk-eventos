class CreatePrizes < ActiveRecord::Migration[6.1]
  def change
    create_table :prizes do |t|
      t.string :name
      t.integer :place
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
