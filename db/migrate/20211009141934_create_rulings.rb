class CreateRulings < ActiveRecord::Migration[6.1]
  def change
    create_table :rulings do |t|
      t.string :name

      t.timestamps
    end
  end
end
