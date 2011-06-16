module BroadbandMap
  class Client
    module Cai
      
      # Returns the closest community anchor institutions by latitude and longitude
      # @param params [Hash] :latitude and :longitude and optional :max_results, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/community-anchor-institutions-closest-by-latitude-and-longitude
      # @example
      #   cai_closest({:latitude => 41.486857, :longitude => -71.294392, :max_results=> 2})
      
      def cai_closest(params={}, options={})
        params = {:format => 'json', :max_results => 25}.merge(params)
        get("cai/closest?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&maxresults=#{params[:max_results]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the broadband availability among the Community Anchor Institutions by geography type and ID.
      # @param params [Hash] :data_version, :geography_type and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/community-anchor-institutions-api-by-geography-type-and-geography-id
      # @example
      #   cai_geo_id({:data_version => 'fall2010', :geography_type => 'state', :geography_ids => ['01','02']})
      
      def cai_geo_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("cai/#{params[:data_version]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the broadband availability among the Community Anchor Institutions by geography name and type.
      # @param params [Hash] :data_version, :geography_type, :geography_names and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/community-anchor-institutions-api-by-geography-type-and-geography-name
      # @example
      #   cai_geo_name({:data_version => 'fall2010', :geography_type => 'state', :geography_names => ['alabama', 'arizona']})
      
      def cai_geo_name(params={}, options={})
        params = {:format => 'json'}.merge(params)
        names = ""
        params[:geography_names].each {|x| names += x +","}
        names.chop!
        get("cai/#{params[:data_version]}/#{params[:geography_type]}/names/#{names}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns the broadband availability among the Community Anchor Institutions for the entire United States.
      # @param params [Hash] :data_version and optional :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/community-anchor-institutions-api-nation
      # @example
      #   cai_nation({:data_version => 'fall2010'})
      
      def cai_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("cai/#{params[:data_version]}/nation?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end