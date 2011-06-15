require 'helper'

describe BroadbandMap::Client::Census do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".census_coords" do
    before do
      stub_get("census/block?latitude=42.456&longitude=74.987&format=json&callback=").
        to_return(:status => 200, :body => fixture("census_coords.json"))
    end
    
    it "should return the correct item" do 
      test = @client.census_coords({:geography_type => 'block', :latitude => 42.456, :longitude => 74.987})
      a_get("census/block?latitude=42.456&longitude=74.987&format=json&callback=").should have_been_made
      test.results.block[0].envelope.miny.should == 42.44690600000003
    end
  end
  
  describe ".census_fips" do
    before do
      stub_get("census/state/fips/36?format=json&callback=").
        to_return(:status => 200, :body => fixture("census_fips.json"))
    end
    
    it "should return the correct item" do
      test = @client.census_fips({:geography_type => 'state', :fips => '36'})
      a_get("census/state/fips/36?format=json&callback=").should have_been_made
      test.results.state[0].fips.should == '36'
    end
  end
  
end