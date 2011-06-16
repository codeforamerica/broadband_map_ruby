module BroadbandMap
  class Client
    module Demographics
      
      def demographics_coords(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("demographic/#{params[:data_version]}/coordinates?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
   
      
    end
  end
end