module BroadbandMap
  class Client
    module Census
      
      def census_coords(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("census/#{params[:geography_type]}?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      def census_fips(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("census/#{params[:geography_type]}/fips/#{params[:fips]}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      def census_geo_name(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("census/#{params[:geography_type]}/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}")
      end
      
    end
  end
end
