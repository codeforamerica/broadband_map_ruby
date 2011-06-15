module BroadbandMap
  class Client
    module Summary

      def summary_geo(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("analyze/#{params[:data_version]}/summary/#{params[:census_metric_type]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      
    end
  end
end  