module BroadbandMap
  class Client
    module Wire
      
      # Returns all the wireless providers within a US census block given a passed latitude and longitude.
      # @param params [Hash] :data_version, :latitude, :longitude and optional :max_results, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/wireless-broadband-api
      # @example
      #   wireless({:data_version => 'fall2010', :latitude => 42.456, :longitude => -74.987})
      
      def wireless(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("broadband/#{params[:data_version]}/wireless?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&maxresults=#{params[:max_results]}&callback=#{params[:callback]}")
      end
      
      # Returns  all the wireline providers within a US census block given a passed latitude and longitude.
      # @param params [Hash] :data_version, :latitude, :longitude and optional :max_results, :format, :callback
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/wireline-broadband-api
      # @example
      #   wireline({:data_version => 'fall2010', :latitude => 42.456, :longitude => -74.987})
      
      def wireline(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("broadband/#{params[:data_version]}/wireline?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&maxresults=#{params[:max_results]}&callback=#{params[:callback]}")
      end
      
    end
  end
end