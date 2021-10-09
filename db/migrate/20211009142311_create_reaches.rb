class CreateReaches < ActiveRecord::Migration[6.1]
  def change
    create_table :reaches do |t|
      t.string :name

      t.timestamps
    end
  end
end
