class Trip < ApplicationRecord
  has_many :trip_activities
  has_many :activities, through: :trip_activities
  has_many :trip_options
  has_many :options, through: :trip_options

  def self.available_for_bid(guide)
    where.not(id: guide.trip_ids)
      .where('start_date > ?', Date.today)
      .where.not(:id => WinningBid.select(:trip_id))
  end

  def self.available_for_guide(guide)
    .where('start_date >= ?', '?')
      .where('end_date <= ?', '?')
      .where('location = ?', '?')
      # match options
      # match activities
  end
end
