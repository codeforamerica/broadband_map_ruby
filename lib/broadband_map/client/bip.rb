module BroadbandMap
  class Client
    module Bip
      
      # Returns the BIP funding allocated to states by specifying the state fips code
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/bip-funding-api-by-state-id
      # @example
      #   bip_state_id({:state_ids => ["01", "02"]})
      def bip_state_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:state_ids].each {|x| ids += x +","}
        ids.chop!
        get("bip/stateids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end
      
    end
  end
end