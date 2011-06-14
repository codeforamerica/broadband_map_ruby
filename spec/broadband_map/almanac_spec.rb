require 'helper'

describe BroadbandMap::Client::Almanac do

  before do
    @client = BroadbandMap::Client.new
  end

  describe ".almanac_parameters" do
    before do
      stub_get("almanac/parameters?format=json").
        to_return(:status => 200, :body => fixture("almanac_parameters.json"))
    end
    
    it "should return the correct item" do
      test = @client.almanac_parameters()
      a_get().should have_been_made
      test.results.geographies.property[0].should == "tribalnation"
    end
  end

end