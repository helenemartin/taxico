require 'spec_helper'

feature "Taxi companies" do

  scenario "creating a new taxi company" do
    visit '/taxis/new'
    fill_in :taxi_name, with: "A1 Taxis"
    fill_in :taxi_phone_number, with: "01137892672"
    select "4", from: :taxi_number_of_taxis
    click_button "Create"

    visit '/taxis'

    page.should have_content "A1 Taxis"
  end


end

