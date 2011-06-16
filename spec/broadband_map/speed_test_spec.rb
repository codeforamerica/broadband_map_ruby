require 'helper'

describe BroadbandMap::Client::SpeedTest do

  before do
    @client = BroadbandMap::Client.new
  end
  
  describe ".speed_test_geo_type_id" do
    before do
      stub_get("speedtest/state/ids/01,02?format=json&speedtesttype=&callback=").
        to_return(:status => 200, :body => fixture("speed_geo_type_id.json"))
    end
    
    it "should get the correct item" do
      test = @client.speed_test_geo_type_id({:geography_type => 'state', :geography_ids => ['01', '02']})
      a_get("speedtest/state/ids/01,02?format=json&speedtesttype=&callback=").should have_been_made
      test.results[0].geographyId.should == "01"
    end
  end
  
  describe ".speed_test_geo_type_name" do
    before do
      stub_get("speedtest/state/names/alabama,arizona?format=json&speedtesttype=&callback=").
        to_return(:status => 200, :body => fixture("speed_geo_type_id.json"))
    end
    
    it "should get the correct item" do
      test = @client.speed_test_geo_type_name({:geography_type => 'state', :geography_names => ['alabama', 'arizona']})
      a_get("speedtest/state/names/alabama,arizona?format=json&speedtesttype=&callback=").should have_been_made
      test.results[0].geographyId.should == "01"
    end
  end
  
  describe ".speed_test_quartile" do
    before do
      stub_get("speedtest/state/quartile?format=json&speedtesttype=&callback=").
        to_return(:status => 200, :body => fixture("speed_quartile_type.json"))
    end
    
    it "should get the correct item" do
      test = @client.speed_test_quartile({:geography_type => 'state'})
      a_get("speedtest/state/quartile?format=json&speedtesttype=&callback=").should have_been_made
      test.results.minimumLowerQuartileDownload.should == 0.00781
    end
  end
  
  describe ".speed_test_nation" do
    before do
      stub_get("speedtest/nation?format=json&speedtesttype=&callback=").
        to_return(:status => 200, :body => fixture("speed_nation.json"))
    end
    
    it "should get the correct item" do
      test = @client.speed_test_nation()
      a_get("speedtest/nation?format=json&speedtesttype=&callback=").should have_been_made
      test.results.geographyID.should == "99"
    end
  end
  
end