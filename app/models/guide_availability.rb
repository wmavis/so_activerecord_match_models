class GuideAvailability < ApplicationRecord
  has_many :guide_availability_activities, dependent: :destroy
  has_many :activities, through: :guide_availability_activities, dependent: :destroy
  has_many :guide_availability_locations, dependent: :destroy
  has_many :locations, through: :guide_availability_locations, dependent: :destroy
  has_many :guide_availability_options, dependent: :destroy
  has_many :options, through: :guide_availability_options, dependent: :destroy
end
