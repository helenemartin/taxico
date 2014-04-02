require 'spec_helper'

describe "Taxi routing" do

  it "matches GET /taxis/new to taxis#new" do
    {get: "/taxis/new"}.should route_to(controller: 'taxis', action: 'new')
  end

end
