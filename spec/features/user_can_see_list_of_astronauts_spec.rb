require 'spec_helper'

 RSpec.describe do
   describe 'When a user visits /astronauts' do
     it 'they will see a list of astronauts' do
       astronaut_1 = Astronaut.create(name: "Neil", age: 35, job: "Engineer")
       astronaut_2 = Astronaut.create(name: "Dan", age: 55, job: "Engineer")

       mission_1 = Mission.create(title: "Mars Mission", time_in_space: 600)
       mission_2 = Mission.create(title: "Pluto Mission", time_in_space: 6000)

       astronaut_mission_1 = AstronautMission.create(astronaut:astronaut_1, mission:mission_1)
       astronaut_mission_2 = AstronautMission.create(astronaut:astronaut_2, mission:mission_2)

       visit '/astronauts'

       expect(page).to have_content("#{astronaut_2.name}")
       expect(page).to have_content("#{astronaut_1.name}")
     end
   end
 end
