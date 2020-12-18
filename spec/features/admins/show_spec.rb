require 'rails_helper'

RSpec.describe 'Admin Show Page' do
  before :each do
    @applicant = create(:user_application)
  end
  describe 'As A Visitor' do
    it 'will show the applications information' do
      visit "/admin/user_applications/#{@applicant.id}"

      expect(page).to have_content(@applicant.name)
      expect(page).to have_content(@applicant.address)
      expect(page).to have_content(@applicant.city)
      expect(page).to have_content(@applicant.state)
      expect(page).to have_content(@applicant.zip)
      expect(page).to have_content(@applicant.description)
      expect(page).to have_content(@applicant.status)
      expect(page).to have_content("Pets Applied For")
    end
  end
end