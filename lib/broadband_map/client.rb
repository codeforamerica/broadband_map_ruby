require 'broadband_map/client'
require 'broadband_map/client/connection'
require 'broadband_map/client/request'
require 'broadband_map/client/almanac'
require 'broadband_map/client/bip'
require 'broadband_map/client/btop'
require 'broadband_map/client/provider'
require 'broadband_map/client/summary'
require 'broadband_map/client/census'
require 'broadband_map/client/cai'
require 'broadband_map/client/demographics'
require 'broadband_map/client/geography'
require 'broadband_map/client/speed_test'

module BroadbandMap
  class Client
    include BroadbandMap::Client::Connection
    include BroadbandMap::Client::Request
    include BroadbandMap::Client::Bip
    include BroadbandMap::Client::Btop
    include BroadbandMap::Client::Almanac
    include BroadbandMap::Client::Provider
    include BroadbandMap::Client::Summary
    include BroadbandMap::Client::Census
    include BroadbandMap::Client::Cai
    include BroadbandMap::Client::Demographics
    include BroadbandMap::Client::Geography
    include BroadbandMap::Client::SpeedTest
  end
end