class AddEventstatusToEvent < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :event_statuses, null: false, foreign_key: true
  end
end
