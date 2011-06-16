module BroadbandMap
  class Client
    module Geography
      
      def geography_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("geography/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
      def geography_type(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/#{params[:geography_type]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      def geography_type_name(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/#{params[:geography_type]}/name/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      def geography_type_state(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/state/#{params[:state_fips]}/#{params[:geography_type]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
      def geography_type_name_state(params={}, options={})
        params = {:format => 'json', :max_results => 100}.merge(params)
        get("geography/state/#{params[:state_fips]}/#{params[:geography_type]}/name/#{params[:geography_name]}?format=#{params[:format]}&maxresults=#{params[:max_results]}&all=#{params[:all]}&callback=#{params[:callback]}")
      end
      
    end
  end
end