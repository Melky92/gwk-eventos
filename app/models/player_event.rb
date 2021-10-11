class PlayerEvent < ApplicationRecord
  belongs_to :player
  belongs_to :event
  belongs_to :prize, optional: true 
end
