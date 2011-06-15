module BroadbandMap
  class Client
    module Cai
      
      def cai_closest(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("cai/closest?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&maxresults=#{params[:max_results]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      def cai_geo_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("cai/#{params[:data_version]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end