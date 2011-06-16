module BroadbandMap
  class Client
    module SpeedTest
      
      def speed_test_geo_type_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("speedtest/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&speedtesttype=#{params[:speed_test_type]}callback=#{params[:callback]}")
      end
      
      
    end
  end
end