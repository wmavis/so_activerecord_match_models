class GuideAvailabilityLocation < ApplicationRecord
  belongs_to :guide_availability
  belongs_to :location
end
