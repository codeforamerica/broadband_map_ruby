require 'helper'

describe BroadbandMap::Client::Bip do

  before do
    @client = BroadbandMap::Client.new
  end

  describe ".provider_all" do
    before do
      stub_get("provider?format=json&callback=").
      to_return(:status => 200, :body => fixture("providers_all.json"))
    end

    it "should return correct item" do
      test = @client.provider_all()
      a_get("provider?format=json&callback=")
      test.results[0].holdingCompanyNumber.should == "131413"
    end
  end

end