class AddPlaceToPlayerEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :player_events, :place, :integer
  end
end
