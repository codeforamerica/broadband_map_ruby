module BroadbandMap
  class Client
    module Demographics
      
      # Returns the demographics data from the coordinates.
      # @param params [Hash] :data_version, :latitude, :longitude and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/demographics-api-by-coordinates
      # @example
      #   demographics_coords({:data_version => 'fall2010', :latitude => 42.456, :longitude => -74.987})
      
      def demographics_coords(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("demographic/#{params[:data_version]}/coordinates?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
   
      # Returns the demographic information for a particular geography type and geography ID
      # @param params [Hash] :data_version, :geography_type, :geography_ids and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/demographics-api-by-geography-type-and-geography-id
      # @example
      #   demographics_geo_id({:data_version => 'fall2010', :geography_type => 'county', :geography_ids => ['17081', '17083']})
   
      def demographics_geo_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += "#{x},"}
        ids.chop!
        get("demographic/#{params[:data_version]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the demographic information for a particular geography type and geography name.
      # @param params [Hash] :data_version, :geography_type, :geography_names and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/demographics-api-by-geography-type-and-geography-name
      # @example
      #   demographics_geo_name({:data_version => 'fall2010', :geography_type => 'county', :geography_names => ['jersey', 'jefferson']})
      
      def demographics_geo_name(params={}, options={})
        params = {:format => 'json'}.merge(params)
        names = ""
        params[:geography_names].each {|x| names += x +","}
        names.chop!
        get("demographic/#{params[:data_version]}/#{params[:geography_type]}/names/#{names}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the demographic information for the whole nation.
      # @param params [Hash] :data_version, and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/demographics-api-nation
      # @example
      #   demographics_nation({:data_version => 'fall2010'})
      
      def demographics_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("demographic/#{params[:data_version]}/nation?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end
