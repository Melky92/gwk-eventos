class AddPlayersToRuling < ActiveRecord::Migration[6.1]
  def change
    add_column :rulings, :players, :integer
  end
end
