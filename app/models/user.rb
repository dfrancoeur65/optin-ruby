
class User < ApplicationRecord

  has_many :organizers

  has_many :rsvps

  has_many :organized, through: :organizers, source: :happening

  has_many :attended, through: :rsvps, source: :happening

  has_one :detail, dependent: :destroy

  delegate *Detail::ATTR_METHODS, to: :detail

  after_initialize do
    self.build_detail if detail.nil?
  end

  def joins_attenders_organized_counts

    happenings_with_counts = self
      .organized
      .select("happenings.*, count(*) as attended_count")
      .joins(:rsvps)
      .group("happenings.id")
      .where(
        "rsvps.response = 'yes'").uniq


      happenings_with_counts.map do |happening|

      [happening.location, happening.attended_count]
    end
  end



end
