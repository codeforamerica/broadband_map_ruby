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
  
  describe ".geography_type" do
    before do
      stub_get("geography/congdistrict?format=json&maxresults=1000&all=&callback=").
        to_return(:status => 200, :body => fixture("geo_type.json"))
    end
    
    it "should get the correct item" do
      test = @client.geography_type({:geography_type => 'congdistrict', :max_results => 1000})
      a_get("geography/congdistrict?format=json&maxresults=1000&all=&callback=").should have_been_made
      test.results[0].geographyId.should == "0211100"
    end
  end
  
  describe ".geography_type_name" do
    before do
      stub_get("geography/censusplace/name/sei?format=json&maxresults=100&all=&callback=").
        to_return(:status => 200, :body => fixture("geo_type_name.json"))
    end
    
    it "should get the correct item" do
      test = @client.geography_type_name({:geography_type => 'censusplace', :geography_name => 'sei'})
      a_get("geography/censusplace/name/sei?format=json&maxresults=100&all=&callback=").should have_been_made
      test.results[0].stateFips.should == "08"
    end
  end
  
  describe ".geography_type_state" do
    before do
      stub_get("geography/state/01/msa?format=json&maxresults=100&all=&callback=").
        to_return(:status => 200, :body => fixture("geo_type_state.json"))
    end
    
    it "should get the correct item" do
      test = @client.geography_type_state({:geography_type => 'censusplace', :geography_name => 'sei'})
      a_get("geography/state/01/msa?format=json&maxresults=100&all=&callback=").should have_been_made
      test.results[0].geographyId.should == "11500"
    end
  end

end