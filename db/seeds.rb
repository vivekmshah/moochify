# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Equipment.create(
    name: "X4 18-Volt Hyper Lithium-Ion Cordless Drill and Impact Driver Combo Kit (3-Tool) with Radio",
    current_daily_cost: "29.99",
    description: "The RIDGID 18-volt Compact Drill and Impact Driver Combo with FREE Radio has best- in-class torque for the most demanding applications and a FREE radio.",
    availability: "Unavailable",
    user_id: User.last.id
  )
Equipment.create(
    name: "DEWALT Heavy Duty Rolling Table Saw Stand",
    current_daily_cost: "17.25",
    description: "The Dewalt DW7440RS Rolling Table Saw Stand has a lightweight design weighing only 33 lbs.",
    availability: "Yes",
    user_id: User.first.id
  )
Equipment.create(
    name: "Bosch 130 ft. Laser Distance Measurer",
    current_daily_cost: "9.79",
    description: "The Bosch Digital Laser Distance Measurer uses precision laser-measuring technology to provide precise measurement of length, area and volume.",
    availability: "No",
    user_id: User.last.id
  )
Equipment.create(
    name: "Porter-Cable 6 in. Variable Speed Random Orbit Polisher",
    current_daily_cost: "9.79",
    description: "The Porter-Cable 7424XP 6-inch polisher features a 4.5 amp motor for high overload protection and random orbit, swirl-free sanding/polishing action with an electronic variable-speed dial that operates at 2,500-6,800 OPM.",
    availability: "Yes",
    user_id: User.first.id
  )
Equipment.create(
    name: "DEWALT 15-Amp 7-1/4 in. Worm Drive Circular Saw",
    current_daily_cost: "14.50",
    description: "The DEWALT DWS535 Worm Drive Circular Saw features an agressive 15-Amp motor that can power through most materials with ease.",
    availability: "Weekdays",
    user_id: User.last.id
  )