class Trip < ApplicationRecord
  has_many :trip_activities
  has_many :activities, through: :trip_activities
  has_many :trip_options
  has_many :options, through: :trip_options
end
