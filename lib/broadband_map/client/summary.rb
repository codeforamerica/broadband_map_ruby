module BroadbandMap
  class Client
    module Summary

      # Returns broadband summary data by geography IDs for a specific geography type
      #
      # @param params [Hash] :data_version, :census_metric_type, :geography_type (optional :format, :callback)
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/broadband-summary-api-by-geography-type-and-geography-id
      # @example
      #   summary_geo({:data_version => 'fall2010', :census_metric_type => 'population', :geography_type => 'state', :geography_ids => ['10']})

      def summary_geo(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("analyze/#{params[:data_version]}/summary/#{params[:census_metric_type]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      # Returns broadband summary data for the nation
      #
      # @param params [Hash] :data_version, :census_metric_type (optional :format, :callback)
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/broadband-summary-api-nation
      # @example
      #   summary_nation(:data_version => 'fall2010', :census_metric_type => 'population')
      
      def summary_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("analyze/#{params[:data_version]}/summary/#{params[:census_metric_type]}/nation?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end  