module BroadbandMap
  class Client
    module SpeedTest
      
      # Returns the speed test results for a particular geography type (e.g., state, congressional district) and geography ID.
      # @param params [Hash] :geogrpahy_type and :geography_ids and optional :speed_test_type, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/speed-test-api-by-geography-type-and-geography-id
      # @example
      #   speed_test_geo_type_id({:geography_type => 'state', :geography_ids => ['01', '02']})
      
      def speed_test_geo_type_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("speedtest/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&speedtesttype=#{params[:speed_test_type]}&callback=#{params[:callback]}")
      end
      
      # Returns the speed test results for a particular geography type (e.g., state, congressional district) and geography name (e.g., Virginia).
      # @param params [Hash] :geogrpahy_type and :geography_names and optional :speed_test_type, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/speed-test-api-by-geography-type-and-geography-name
      # @example
      #   speed_test_geo_type_name({:geography_type => 'state', :geography_names => ['alabama', 'arizona']})
      
      def speed_test_geo_type_name(params={}, options={})
        params = {:format => 'json'}.merge(params)
        names = ""
        params[:geography_names].each {|x| names += x +","}
        names.chop!
        get("speedtest/#{params[:geography_type]}/names/#{names}?format=#{params[:format]}&speedtesttype=#{params[:speed_test_type]}&callback=#{params[:callback]}")
      end
      
      # Returns the minimum and maximum quartile speeds by geography type within the nation.
      # @param params [Hash] :geogrpahy_type and optional :speed_test_type, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/speed-test-api-minimum-and-maximum-quartile-speeds-by-geography-type
      # @example
      #   speed_test_quartile({:geography_type => 'state'})
      
      def speed_test_quartile(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("speedtest/#{params[:geography_type]}/quartile?format=#{params[:format]}&speedtesttype=#{params[:speed_test_type]}&callback=#{params[:callback]}")
      end   
      
      # Returns all the speed test results for the entire United States.
      # @param params [Hash] optional :speed_test_type, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/speed-test-api-nation
      # @example
      #   speed_test_nation()
      
      def speed_test_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("speedtest/nation?format=#{params[:format]}&speedtesttype=#{params[:speed_test_type]}&callback=#{params[:callback]}")
      end   
      
    end
  end
end