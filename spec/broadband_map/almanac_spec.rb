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
      a_get("almanac/parameters?format=json").should have_been_made
      test.results.geographies.property[0].should == "tribalnation"
    end
  end
  
  describe ".almanac_ranking_geo_id_within_state" do
    before do
      stub_get("almanac/fall2010/rankby/state/01/population/wirelineproviderequals0/county/id/01101?format=json&order=asc&properties=").
        to_return(:status => 200, :body => fixture("almanac_rank_geography_id_state.json"))
    end
    
    it "should return the correct item" do
      test = @client.almanac_ranking_geo_id_within_state({:data_version => 'fall2010', :state_id => '01', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})
      a_get("almanac/fall2010/rankby/state/01/population/wirelineproviderequals0/county/id/01101?format=json&order=asc&properties=").should have_been_made
      test.results.all[0].rank.should == 1
    end
  end
  
  describe ".almanac_ranking_geo_id_within_nation" do
    before do
      stub_get("almanac/fall2010/rankby/nation/population/wirelineproviderequals0/county/id/51117?format=json&order=asc&properties=").
        to_return(:status => 200, :body => fixture("almanac_rank_geography_id_nation.json"))
    end
    
    it "should return the correct item" do
      test = @client.almanac_ranking_geo_id_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '51117', :sort_order => 'asc'})
      a_get("almanac/fall2010/rankby/nation/population/wirelineproviderequals0/county/id/51117?format=json&order=asc&properties=").should have_been_made
      test.results.firstTen[0].geographyId.should == "60020"
    end
  end
  
  describe ".almanac_ranking_geo_type_within_state" do
    before do
      stub_get("almanac/fall2010/rankby/state/01/population/wirelineproviderequals0/county?format=json&order=asc&properties=").
        to_return(:status => 200, :body => fixture("almanac_rank_geo_type_state.json"))
    end
    
    it "should return the correct item" do
      test = @client.almanac_ranking_geo_type_within_state({:data_version => 'fall2010', :state_id => '01', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :sort_order => 'asc'})
      a_get("almanac/fall2010/rankby/state/01/population/wirelineproviderequals0/county?format=json&order=asc&properties=")
      test.results.all[0].geographyId.should == "01063"
    end
  end
  
  describe "..almanac_ranking_geo_type_within_nation" do
    before do
      stub_get("almanac/fall2010/rankby/nation/population/wirelineproviderequals0/county?format=json&order=asc&properties=").
        to_return(:status => 200, :body => fixture("almanac_rank_geo_type_nation.json"))
    end
    
    it "should return the correct item" do
      test = @client.almanac_ranking_geo_type_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county'})
      a_get("almanac/fall2010/rankby/nation/population/wirelineproviderequals0/county?format=json&order=asc&properties=")
      test.results.firstTen[0].geographyId.should == "60020"
    end
  end

end