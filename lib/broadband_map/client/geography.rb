module BroadbandMap
  class Client
    module Geography
      
      def geography_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("geography/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end