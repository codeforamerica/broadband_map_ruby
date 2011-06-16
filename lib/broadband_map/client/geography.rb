module BroadbandMap
  class Client
    module Geography
      
      # Returns a geography of a specified geography type by the geography id.
      # @param params [Hash]  :geography_type, :geography_id and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/geography-lookup-api-by-geography-id
      # @example
      #   geography_id({:geography_type => 'congdistrict', :geography_id => '0111101'})
      
      def geography_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("geography/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns all geographies of a specified geography type.
      # @param params [Hash]  :geography_type, and optional :format, :max_results, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/geography-lookup-api-by-geography-type
      # @example
      #   geography_type({:geography_type => 'congdistrict', :max_results => 1000})
      
      def geography_type(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/#{params[:geography_type]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      # Returns geographies by name of a specific geography type.
      # @param params [Hash]  :geography_type, :geography_name and optional :format, :max_results, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/geography-lookup-api-by-geography-type-and-geography-name
      # @example
      #   geography_type_name({:geography_type => 'censusplace', :geography_name => 'sei'})
      
      def geography_type_name(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/#{params[:geography_type]}/name/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      # Returns all geographies of specific geography type within a state.
      # @param params [Hash]  :state_fips, :geography_type, :geography_type and optional :format, :max_results, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/geography-lookup-api-by-geography-type-within-a-state
      # @example
      #   geography_type_state({:geography_type => 'msa', :state_fips => '01'})
      
      def geography_type_state(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/state/#{params[:state_fips]}/#{params[:geography_type]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      # Returns geographies by name of a specific geography type within a state.
      # @param params [Hash]  :state_fips, :geography_type, :geography_name and optional :format, :max_results, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/geography-lookup-api-by-name-of-specific-geography-type-within-a-state
      # @example
      #   geography_type_name_state({:geography_type => 'county', :state_fips => '17', :geography_name => 'mar'})
      
      def geography_type_name_state(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/state/#{params[:state_fips]}/#{params[:geography_type]}/name/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
    end
  end
end