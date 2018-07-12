class CreateGuideAvailabilityActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_availability_activities do |t|
      t.references :GuideAvailability, foreign_key: true
      t.references :Activity, foreign_key: true

      t.timestamps
    end
  end
end
