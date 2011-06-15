require 'broadband_map/client'
require 'broadband_map/client/connection'
require 'broadband_map/client/request'
require 'broadband_map/client/almanac'
require 'broadband_map/client/bip'

module BroadbandMap
  class Client
    include BroadbandMap::Client::Connection
    include BroadbandMap::Client::Request
    include BroadbandMap::Client::Bip
    include BroadbandMap::Client::Almanac
  end
end