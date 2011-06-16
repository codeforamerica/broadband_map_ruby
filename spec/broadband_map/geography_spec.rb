require 'helper'

describe BroadbandMap::Client::Geography do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".geography_id" do
    before do
      stub_get("geography/congdistrict/id/0111101?format=json&callback=").
        to_return(:status => 200, :body => fixture("geo_id.json"))
    end
    
    it "should get the correct item" do
      test = @client.geography_id({:geography_type => 'congdistrict', :geography_id => '0111101'})
      a_get("geography/congdistrict/id/0111101?format=json&callback=").should have_been_made
      test.results[0].geographyId.should == "0111101"
    end
  end

end