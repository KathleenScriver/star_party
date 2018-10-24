require 'rails_helper'

describe 'visitor searches for parties' do
  scenario 'with a valid zip code' do
    visit '/'

    fill_in :q, with: 80203
    click_on "Find a Star Party!"

    expect(current_path).to eq("/party_search")
    expect(page).to have_css(".party")

    within(first(".party")) do
      expect(page).to have_css(".title")
      expect(page).to have_css(".date")
      expect(page).to have_css(".host")
      expect(page).to have_css(".street_address")
      expect(page).to have_css(".city")
      expect(page).to have_css(".state")
      expect(page).to have_css(".zip")
    end
  end
end
