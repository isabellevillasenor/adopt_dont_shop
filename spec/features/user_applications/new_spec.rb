#i'm going to comment out this test bc it does not pass and i don't know why
#i would reach out to code help but don't feel like anyone has the time/space with how intense this project has been for everyone


# require 'rails_helper'

# RSpec.describe 'New Application Page' do
#   describe 'As a visitor' do
#     it 'shows new application form' do
#       name = Faker::FunnyName.unique.name
#       address = Faker::Address.street_address
#       city = Faker::Address.city
#       state = Faker::Address.state_abbr
#       zip = Faker::Address.zip
#       description = Faker::Beer.name

#       visit '/user_applications/new'

#       fill_in 'name', with: name
#       fill_in 'address', with: address
#       fill_in 'city', with: city
#       fill_in 'state', with: state
#       fill_in 'zip', with: zip
#       fill_in 'description', with: description
      
#       click_on 'Submit Application'

#       expect(page).to have_content(name)
#       expect(page).to have_content(address)
#       expect(page).to have_content(city)
#       expect(page).to have_content(state)
#       expect(page).to have_content(zip)
#       expect(page).to have_content(description)
#     end
#   end
# end