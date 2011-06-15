require 'helper'

describe BroadbandMap::Client::Cai do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".cai_closest" do
    before do
      stub_get("cai/closest?latitude=41.486857&longitude=-71.294392&maxresults=2&format=json&callback=").
        to_return(:status => 200, :body => fixture("cai_closest.json"))
    end
    
    it "should return the correct item" do
      test = @client.cai_closest({:latitude => 41.486857, :longitude => -71.294392, :max_results=> 2})
      a_get("cai/closest?latitude=41.486857&longitude=-71.294392&maxresults=2&format=json&callback=").should have_been_made
      test.results[0].latitude.should == 41.49
    end
  end
  
  describe ".cai_geo_id" do
    before do
      stub_get("cai/fall2010/state/ids/01,02?format=json&callback=").
        to_return(:status => 200, :body => fixture("cai_geo_id.json"))
    end
    
    it "should return the correct item" do
      test = @client.cai_geo_id({:data_version => 'fall2010', :geography_type => 'state', :geography_ids => ['01','02']})
      a_get("cai/fall2010/state/ids/01,02?format=json&callback=").should have_been_made
      test.results[0].geographyId.should == '01'
    end
  end

end