class CreateGuideAvailabilityLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_availability_locations do |t|
      t.references :GuideAvailability, foreign_key: true
      t.references :Location, foreign_key: true

      t.timestamps
    end
  end
end
