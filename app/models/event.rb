class Event < ApplicationRecord
  belongs_to :reach
  belongs_to :game
  belongs_to :ruling
end
