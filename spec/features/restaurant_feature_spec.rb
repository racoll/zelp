require 'rails_helper'

feature 'Restaurant' do

  context "no restaurants have been added" do
    scenario "should display a link to add a restaurant" do
      visit '/restaurants'
      expect(page).to have_link 'Add a New Restaurant'
    end
  end

  context "Can add a new restaurant" do
    scenario "Prompts user to fill a form" do
      visit '/restaurants/new'

    end
  end

end
