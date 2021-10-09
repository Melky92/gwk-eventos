class CreatePlayerEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :player_events do |t|
      t.references :player, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :prize, null: false, foreign_key: true

      t.timestamps
    end
  end
end
