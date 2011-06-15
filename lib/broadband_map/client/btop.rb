module BroadbandMap
  class Client
    module Btop
      
      # Returns the BIP funding allocated to states by specifying the state fips code
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/btop-funding-api-by-state-id
      # @example
      #   btop_state_id({:state_ids => ["01", "02"]})
      def btop_state_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:state_ids].each {|x| ids += x +","}
        ids.chop!
        get("btop/stateids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end
      
      # Returns the BIP funding allocated to states by specifying the state name
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/btop-funding-api-by-state-name
      # @example
      #   btop_state_id({:state_names => ['alaska', 'alabama']})
      
      def btop_state_name(params={}, options={})
        params = {:format => 'json'}.merge(params)
        names = ""
        params[:state_names].each {|x| names += x +","}
        names.chop!
        get("btop/states/#{names}?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end
      
      # Returns the BIP funding allocation for the whole nation
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/btop-funding-api-nation
      # @example
      #   btop_nation()
      
      def btop_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("btop/nation?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end
    end
  end
end