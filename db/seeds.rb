User.create(
  first_name: "Johnny",
  last_name: "Walker",
  email: "johnny.walker@general.com",
  phone: "3105663080",
  address_1: "501 Wilshire Blvd",
  city: "Santa Monica",
  state: "CA",
  zip: "90403",
  bio: "Johnny has earned the distinction of being one of Los Angeles’ leading residential general contractors.",
  password: "johnny",
  password_confirmation: "johnny"
  )

User.create(
  first_name: "Ellie",
  last_name: "Stinson",
  email: "ellie.stinson@gmail.com",
  phone: "8773485665",
  address_1: "1520 2nd St",
  city: "Santa Monica",
  state: "CA",
  zip: "90401",
  bio: "Ellie has a Los Angeles based interior design studio that provides interior services for Residential, Commercial, & Hospitality design.",
  password: "ellie",
  password_confirmation: "ellie"
  )

Equipment.create(
    name: "X4 18-Volt Hyper Lithium-Ion Cordless Drill and Impact Driver Combo Kit (3-Tool) with Radio",
    current_daily_cost: "29.99",
    description: "The RIDGID 18-volt Compact Drill and Impact Driver Combo with FREE Radio has best- in-class torque for the most demanding applications and a FREE radio.",
    availability: "Unavailable",
    user_id: User.last.id
  )

    Order.create(
      start_date: "2014-10-03",
      end_date: "2014-10-27",
      daily_cost: "29.99",
      equipment_id: Equipment.last.id,
      user_id: User.first.id
      )

    Review.create(
      title: "GREAT JOB!",
      comment: "I have been using the drill for the past three weeks.",
      user_id: User.first.id,
      order_id: Order.last.id
      )

Equipment.create(
    name: "Bosch 130 ft. Laser Distance Measurer",
    current_daily_cost: "9.79",
    description: "The Bosch Digital Laser Distance Measurer uses precision laser-measuring technology to provide precise measurement of length, area and volume.",
    availability: "No",
    user_id: User.last.id
  )

    Order.create(
      start_date: "2014-09-14",
      end_date: "2014-09-16",
      daily_cost: "9.79",
      equipment_id: Equipment.last.id,
      user_id: User.first.id
      )

    Review.create(
      title: "Not good response time",
      comment: "Got the measurer much later than expected. Would like owner to be more prompt in scheduling rental.",
      user_id: User.first.id,
      order_id: Order.last.id
      )

Equipment.create(
    name: "DEWALT 15-Amp 7-1/4 in. Worm Drive Circular Saw",
    current_daily_cost: "14.50",
    description: "The DEWALT DWS535 Worm Drive Circular Saw features an agressive 15-Amp motor that can power through most materials with ease.",
    availability: "Weekdays",
    user_id: User.last.id
  )

    Order.create(
      start_date: "2014-07-21",
      end_date: "2014-08-06",
      daily_cost: "14.50",
      equipment_id: Equipment.last.id,
      user_id: User.first.id
      )

    Review.create(
      title: "Thoroughly satisfied",
      comment: "Been using saw for all of my carpentry needs. I would definitely recommend this. Thanks for a great product.",
      user_id: User.first.id,
      order_id: Order.last.id
      )

Equipment.create(
    name: "DEWALT Heavy Duty Rolling Table Saw Stand",
    current_daily_cost: "17.25",
    description: "The Dewalt DW7440RS Rolling Table Saw Stand has a lightweight design weighing only 33 lbs.",
    availability: "Yes",
    user_id: User.first.id
  )

    Order.create(
      start_date: "2014-12-01",
      end_date: "2014-12-06",
      daily_cost: "17.25",
      equipment_id: Equipment.last.id,
      user_id: User.last.id
      )

    Review.create(
      title: "EXCELLENT PRODUCT AND RAPID SERVICE",
      comment: "Results from the saw stand were consistently excellent. Perfect fit for my saw. This product just works. So, thanks Johnny!",
      user_id: User.last.id,
      order_id: Order.last.id
      )

Equipment.create(
    name: "Porter-Cable 6 in. Variable Speed Random Orbit Polisher",
    current_daily_cost: "9.79",
    description: "The Porter-Cable 7424XP 6-inch polisher features a 4.5 amp motor for high overload protection and random orbit, swirl-free sanding/polishing action with an electronic variable-speed dial that operates at 2,500-6,800 OPM.",
    availability: "Yes",
    user_id: User.first.id
  )

    Order.create(
      start_date: "2014-05-09",
      end_date: "2014-06-12",
      daily_cost: "9.79",
      equipment_id: Equipment.last.id,
      user_id: User.last.id
      )

    Review.create(
      title: "OK, overall not bad or good",
      comment: "The polisher generally works for more rough surfaces but doesn't offer the precision I need. Can't expect much more than this for the great price.",
      user_id: User.last.id,
      order_id: Order.last.id
      )
