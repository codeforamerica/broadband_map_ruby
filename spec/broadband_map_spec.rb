# -*- encoding: utf-8 -*-
require 'helper'

describe BroadbandMap do
  describe ".respond_to?" do
    it "should be true if method exists" do
      BroadbandMap.respond_to?(:client, true).should be_true
    end
  end

  describe ".client" do
    it "should be a BroadBandMap::Client" do
      BroadBandMap.client.should be_a BroadbandMap::Client
    end
  end

end