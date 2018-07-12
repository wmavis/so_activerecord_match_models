class CreateGuideAvailabilityOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_availability_options do |t|
      t.references :GuideAvailability, foreign_key: true
      t.references :Option, foreign_key: true

      t.timestamps
    end
  end
end
