module BroadbandMap
  class Client
    module Demographics
      
      def demographics_coords(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("demographic/#{params[:data_version]}/coordinates?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
   
      def demographics_geo_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:geography_ids].each {|x| ids += x +","}
        ids.chop!
        get("demographic/#{params[:data_version]}/#{params[:geography_type]}/ids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      def demographics_geo_name(params={}, options={})
        params = {:format => 'json'}.merge(params)
        names = ""
        params[:geography_names].each {|x| names += x +","}
        names.chop!
        get("demographic/#{params[:data_version]}/#{params[:geography_type]}/names/#{names}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end