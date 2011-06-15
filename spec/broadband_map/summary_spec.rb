require 'helper'

describe BroadbandMap::Client::Summary do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".summary_geo" do
    before do
      stub_get("analyze/fall2010/summary/population/state/ids/10?format=json&callback=").
        to_return(:status => 200, :body => fixture("summary_geo.json"))
    end
    
    it "should return the correct item" do
      test = @client.summary_geo({:data_version => 'fall2010', :census_metric_type => 'population', :geography_type => 'state', :geography_ids => ['10']})
      a_get("analyze/fall2010/summary/population/state/ids/10?format=json&callback=").should have_been_made
      test.results[0].geographyId.should == "10"
    end
  end
  
end