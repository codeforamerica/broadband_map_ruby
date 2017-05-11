require 'broadband_map/client'

module BroadbandMap
  def self.client
    BroadbandMap::Client.new
  end

  # Delegate to BroadbandMap::Client.new
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private=false)
    client.respond_to?(method, include_private) || super(method, include_private)
  end
end
