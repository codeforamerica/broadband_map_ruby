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
      
      # Searches for all providers with a specified name.
      #
      # @param params [Hash] options for the lookup.
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/broadband-provider-api-by-provider-names
      # @example
      #   provider_name({:name => 'alb'})
      
      def provider_name(params={}, options={})
        params = {:format => 'json', :max_results => 20}.merge(params)
        get("provider/name/#{params[:name]}?format=#{params[:format]}&all=#{params[:all]}&maxresults=#{params[:max_results]}&callback=#{params[:callback]}")
      end
    end
  end
end