class Guide < ApplicationRecord
  has_many :guide_availabilities
  has_many :locations, through: :guide_availability
  has_many :activities, through: :guide_availability
  has_many :options, through: :guide_availability
end
