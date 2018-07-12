class GuideAvailabilityLocation < ApplicationRecord
  belongs_to :GuideAvailability
  belongs_to :Location
end
