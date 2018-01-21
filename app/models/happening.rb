class Happening < ApplicationRecord
  validates :location, presence: true
  has_many :organizers
  has_many :users, through: :organizer
  validate :no_trivia_night
  has_many :rsvps


  def no_trivia_night
    if self.location == "trivia"
      self.errors[:location] << "can't be a trivia night, because we don't want someone pushed down the stairs! (PERRY)"
    end
  end

  def self.most_popular
    happenings_join_rsvps = self
    .select("happenings.*, count(*) as attended_count")
    .joins(:rsvps)
    .group("happenings.id")
    .where("rsvps.response = 'yes'")
    .order("attended_count DESC")
  end



end
