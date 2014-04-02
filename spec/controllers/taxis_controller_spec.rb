require 'spec_helper'

describe TaxisController do

  it "has a new action" do
    get :new
    response.should be_ok
  end

  it "has an index action" do
    get :index
    response.should be_ok
  end

  it "has a show action" do
    @taxi = FactoryGirl.create(:taxi)
    get :show, id: @taxi.id
    response.should be_ok
  end

  describe "POST #create" do
    describe "with valid params" do
      it "saves a record" do
        expect {
          post :create, taxi: {name: "A1 Cabs", phone_number: '0873624001', number_of_taxis: 2}
        }.to change{ Taxi.count }.from(0).to(1)
      end
    end
    describe "with invalid params" do
      let(:invalid_params) do
        { taxi: {name: "", phone_number: "Ducks"} }
      end
      it "does not save a record" do
        expect {
          post :create, invalid_params
        }.to_not change{ Taxi.count }
      end
      it "renders the new form" do
        post :create, invalid_params
        response.should render_template(:new)
      end
    end
  end

end
