require 'helper'

describe BroadbandMap::Client::Bip do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".bip_state_id" do
    before do
      stub_get("bip/stateids/01,02?format=json&callback=").
        to_return(:status => 200, :body => fixture("bip_state_id.json"))
    end
    
    it "should return the correct item" do
      test = @client.bip_state_id(:state_ids => ['01', '02'])
      a_get("bip/stateids/01,02?format=json&callback=")
      test.results[0].geographyId.should == "01"
    end
  end
  
  describe ".bip_state_name" do
    before do
      stub_get("bip/states/alaska,alabama?format=json&callback=").
        to_return(:status => 200, :body => fixture("bip_state_name.json"))
    end
    
    it "should return the correct item" do
      test = @client.bip_state_name(:state_names => ['alaska', 'alabama'])
      a_get("bip/states/alaska,alabama?format=json&callback=")
      test.results[0].geographyId.should == '01'
    end
  end
end