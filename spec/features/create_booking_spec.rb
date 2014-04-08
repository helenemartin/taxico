require 'spec_helper'

feature "Bookings" do

  scenario "creating a booking" do
    taxi = FactoryGirl.create(:taxi)
    visit '/bookings/new'
    fill_in :booking_name, with: "Jane Doe"
    select taxi.name, from: :booking_taxi_id
    click_button "Book"

    page.should have_content "Thanks for booking with #{taxi.name}."
  end

end
