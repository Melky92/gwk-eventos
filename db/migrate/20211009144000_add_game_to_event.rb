class AddGameToEvent < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :game, null: false, foreign_key: true
  end
end
