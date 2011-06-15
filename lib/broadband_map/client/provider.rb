module BroadbandMap
  class Client
    module Provider
      
      # Returns all providers.
      #
      # @param params [Hash] options for the lookup.
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/broadband-provider-api-all-providers
      # @example
      #   provider_all()
      
      def provider_all(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("provider?format=#{params[:format]}&callback=#{params[:callback]}")
      end
    end
  end
end