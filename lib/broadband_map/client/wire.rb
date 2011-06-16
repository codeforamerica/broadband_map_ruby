module BroadbandMap
  class Client
    module Wire
      
      def wireless(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("broadband/#{params[:data_version]}/wireless?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&maxresults=#{params[:max_results]}&callback=#{params[:callback]}")
      end
      
      def wireline(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("broadband/#{params[:data_version]}/wireline?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&maxresults=#{params[:max_results]}&callback=#{params[:callback]}")
      end
      
    end
  end
end