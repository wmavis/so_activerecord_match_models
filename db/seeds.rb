# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l1 = Location.create(name: 'Wyoming')
l2 = Location.create(name: 'Colorado')
a1 = Activity.create(name: 'Hiking')
a2 = Activity.create(name: 'Rock Climbing')
o1 = Option.create(name: 'Airport Pickup')
o2 = Option.create(name: 'Meals Provided')

t1 = Trip.create(start_date: '01/01/2018', end_date: '01/03/2018')
TripActivity.create(trip: t1, activity: a1)
TripOption.create(trip: t1, option: o1)

g1 = GuideAvailability.create(start_date: '01/01/2018', end_date: '01/04/2018')
GuideAvailabilityActivity.create(guide_availability: g1, activity: a1)
GuideAvailabilityLocation.create(guide_availability: g1, location: l1)
GuideAvailabilityOption.create(guide_availability: g1, option: o1)
