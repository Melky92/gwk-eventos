class Player < ApplicationRecord
  belongs_to :team, optional: true
  validate :name_or_nick

  def name_or_nick
    errors.add(:name, "Ya pe pone nombre o nick weon") unless name.present? || nick.present?
  end

  def display_name
    return nick=="" ? name : nick 
  end
end
