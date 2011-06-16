module BroadbandMap
  class Client
    module Census
      
      # Returns the US Census Block geography ID information given a passed Latitude and Longitude.
      # @param params [Hash] :geography_type, :latitude, :longitude and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/census-api-by-coordinates
      # @example
      #   census_coords({:geography_type => 'block', :latitude => 42.456, :longitude => 74.987})
      
      def census_coords(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("census/#{params[:geography_type]}?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the geography of a specified geography type by geography id within the entire United States.
      # @param params [Hash] :geography_type, :fips and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/census-api-by-fips-code
      # @example
      #   census_fips({:geography_type => 'state', :fips => '36'})
      
      def census_fips(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("census/#{params[:geography_type]}/fips/#{params[:fips]}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns all the geographies specified by a geography name (e.g., Washington) of a specific geography type (e.g., congressional district) within the entire United States.
      # @param params [Hash] :geography_type, :geography_name and optional :format, :max_results, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/census-api-by-geography-name
      # @example
      #   census_geo_name({:geography_type => 'county', :geography_name => 'fai'})
      
      def census_geo_name(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("census/#{params[:geography_type]}/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}")
      end
      
    end
  end
end
