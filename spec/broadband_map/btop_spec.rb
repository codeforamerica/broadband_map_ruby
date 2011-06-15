require 'helper'

describe BroadbandMap::Client::Btop do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".btop_state_id" do
    before do
      stub_get("btop/stateids/01,02?format=json&callback=").
        to_return(:status => 200, :body => fixture("btop_state_id.json"))
    end
    
    it "should return the correct item" do
      test = @client.btop_state_id(:state_ids => ['01', '02'])
      a_get("btop/stateids/01,02?format=json&callback=")
      test.results[0].geographyId.should == "01"
    end
  end
  
  describe ".btop_state_name" do
    before do
      stub_get("btop/states/alaska,alabama?format=json&callback=").
        to_return(:status => 200, :body => fixture("btop_state_name.json"))
    end
    
    it "should return the correct item" do
      test = @client.btop_state_name(:state_names => ['alaska', 'alabama'])
      a_get("btop/states/alaska,alabama?format=json&callback=")
      test.results[0].geographyId.should == '01'
    end
  end
  
  describe ".btop_nation" do
    before do
      stub_get("btop/nation?format=json&callback=").
        to_return(:status => 200, :body => fixture("btop_nation.json"))
    end
    
    it "should return the correct item" do
      test = @client.btop_nation()
      a_get("bib/nations?format=json&callback=")
      test.results[0].totalAwardInDollars.should == 3484813380
    end
  end
end