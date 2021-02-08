require "rails_helper"

RSpec.describe "As a visitor", type: :feature do 
  describe "When I visit artists index" do 
    it "I see a list of all artist names" do 
      artist = Artist.create(name: 'Michael Jackson')

      visit '/artists'
      save_and_open_page
      expect(current_path).to eq("/artists")
      expect(page).to have_content("All Artists")
      expect(page).to have_content("Michael Jackson")
    end
  end
end