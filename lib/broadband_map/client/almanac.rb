module BroadbandMap
  class Client
    module Almanac

      # Returns all almanac parameters used by the Almanac API for ranking.
      #
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/almanac-api-parameters
      # @example
      #   almanac_parameters()
      def almanac_parameters(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("almanac/parameters?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end

      # Returns the rankings within a state by specific geo id
      #
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/almanac-api-ranking-by-geography-id-within-a-state
      # @example
      #   almanac_ranking_geo_id_within_state({:data_version => 'fall2010', :state_id => '01', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})

      def almanac_ranking_geo_id_within_state(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("almanac/#{params[:data_version]}/rankby/state/#{params[:state_id]}/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}&callback=#{params[:callback]}", options)
      end
      
      # Returns rankings within nation by specific geo id
      #
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/almanac-api-ranking-by-geography-id-within-the-nation
      # @example
      #   almanac_ranking_geo_id_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})

      def almanac_ranking_geo_id_within_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("almanac/#{params[:data_version]}/rankby/nation/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}&callback=#{params[:callback]}", options)
      end
      
      # Returns rankings within a state by geo type
      #
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/almanac-api-ranking-by-geography-type-within-a-state
      # @example
      #   almanac_ranking_geo_type_within_state({:data_version => 'fall2010', :state_id => '01', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :sort_order => 'asc'})

      def almanac_ranking_geo_type_within_state(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("almanac/#{params[:data_version]}/rankby/state/#{params[:state_id]}/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}&callback=#{params[:callback]}")
      end
      
      # Returns rankings within a state by geo type
      #
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.broadbandmap.gov/developer/api/almanac-api-ranking-by-geography-type-within-a-state
      # @example
      #   almanac_ranking_geo_type_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :sort_order => 'asc'})
      
      def almanac_ranking_geo_type_within_nation(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("almanac/#{params[:data_version]}/rankby/nation/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}&callback=#{params[:callback]}", options)
      end
    end 
  end
end