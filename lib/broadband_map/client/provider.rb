module BroadbandMap
  class Client
    module Provider
      
      def provider_all(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("provider?format=#{params[:format]}&callback=#{params[:callback]}")
      end
    end
  end
end