class Player < ApplicationRecord
  belongs_to :team, optional: true
  def display_name
    return nick=="" ? name : nick 
  end
end
