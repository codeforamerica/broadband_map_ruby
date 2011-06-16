require 'helper'

describe BroadbandMap::Client::Demographics do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe '.demographics_coords' do
    before do
      stub_get("demographic/fall2010/coordinates?latitude=42.456&longitude=-74.987&format=json&callback=").
        to_return(:status => 200, :body => fixture("demo_coords.json"))
    end
    
    it "should return the correct item" do
      test = @client.demographics_coords({:data_version => 'fall2010', :latitude => 42.456, :longitude => -74.987})
      a_get("demographic/fall2010/coordinates?latitude=42.456&longitude=-74.987&format=json&callback=").should have_been_made
      test.results.medianIncome.should == 44057
    end
  end
  
  describe '.demographics_geo_id' do
    before do
      stub_get("demographic/fall2010/county/ids/17081,17083?format=json&callback=").
        to_return(:status => 200, :body => fixture("demo_geo_id.json"))
    end
    
    it "should return the correct item" do
      test = @client.demographics_geo_id({:data_version => 'fall2010', :geography_type => 'county', :geography_ids => ['17081', '17083']})
      a_call("demographic/fall2010/county/ids/17081,17083?format=json&callback=").should have_been_made
      test.results[0].geographyId.should == '17083'
    end
  end
  
end