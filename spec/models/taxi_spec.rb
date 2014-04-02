require 'spec_helper'

describe Taxi do

  describe "validations" do
    it "validates presence of name" do
      subject.should have(1).error_on(:name)
    end
    it "validates presence of phone_number" do
      subject.should have(1).error_on(:phone_number)
    end
    it "validates that phone_number is 11 characters or less" do
      subject.phone_number = "1" * 12
      subject.should have(1).error_on(:phone_number)
    end
    it "validates that number_of_taxis is an integer" do
      subject.number_of_taxis = "Ducks"
      subject.should have(1).error_on(:number_of_taxis)
    end
  end

end
