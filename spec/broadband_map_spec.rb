# -*- encoding: utf-8 -*-
require 'helper'

describe BroadbandMap do
  describe ".client" do
    it "should be a BroadbandMap::Client" do
      BroadbandMap.client.should be_a BroadbandMap::Client
    end
  end
end