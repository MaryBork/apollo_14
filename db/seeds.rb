# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

astronaut_1 = Astronaut.create(name: "Neil", age: 35, job: "Engineer")
astronaut_2 = Astronaut.create(name: "Dan", age: 55, job: "Engineer")
astronaut_3 = Astronaut.create(name: "Darth", age: 42, job: "Engineer")
astronaut_4 = Astronaut.create(name: "Obi", age: 44, job: "Engineer")
astronaut_5 = Astronaut.create(name: "Kylo", age: 32, job: "Engineer")
astronaut_6 = Astronaut.create(name: "Rey", age: 36, job: "Engineer")

mission_1 = Mission.create(title: "Mars Mission", time_in_space: 600)
mission_2 = Mission.create(title: "Pluto Mission", time_in_space: 6000)
mission_3 = Mission.create(title: "Mission to the Sun", time_in_space: 7300)

astronaut_mission_1 = AstronautMission.create(astronaut:astronaut_1, mission:mission_1)
astronaut_mission_2 = AstronautMission.create(astronaut:astronaut_6, mission:mission_1)
astronaut_mission_3 = AstronautMission.create(astronaut:astronaut_3, mission:mission_1)
astronaut_mission_4 = AstronautMission.create(astronaut:astronaut_4, mission:mission_2)
astronaut_mission_5 = AstronautMission.create(astronaut:astronaut_5, mission:mission_2)
astronaut_mission_6 = AstronautMission.create(astronaut:astronaut_2, mission:mission_3)
