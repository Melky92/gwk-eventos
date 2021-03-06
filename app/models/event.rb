class Event < ApplicationRecord
  default_scope { order(updated_at: :desc) }
  belongs_to :reach
  belongs_to :game
  belongs_to :ruling
  belongs_to :event_status
  has_many :player_events
  attr_accessor :new_player
  validates :name, length: { minimum: 1, too_short: "Miea ya pe aunque sea 'torneo de la wea' ponele pe" }

  def player_ids
    player_events.collect { |pe| pe.player_id}
  end

  def players
    player_events.collect { |pe| pe.player}
  end

  def player_names
    player_events.collect{|pe| pe.player_name}
  end

  def player_summary
    if player_events.count == 2 then
      player_names.join(" vs ")
    elsif player_events.count <= 4
      player_names.join(", ")
    else
      player_names.first(4).join(", ") + ", ..."
    end
  end

end
