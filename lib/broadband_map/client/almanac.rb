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
     def almanac_parameters(options={})
       get("almanac/parameters?format=json", options)
     end
     
     # Returns all almanac parameters used by the Almanac API for ranking.
     #
     # @param params [Hash] The parameters for the lookup
     # @param options [Hash] A customizable set of options. 
     # @return {Hash}
     # @see http://www.broadbandmap.gov/developer/api/almanac-api-ranking-by-geography-id-within-a-state
     # @example
     #   almanac_ranking_geo_id_within_state({:data_version => 'fall2010', :state_id => '01', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})
      
     def almanac_ranking_geo_id_within_state(params={}, options={})
       params = {:format => 'json'}.merge(params)
       get("almanac/#{params[:data_version]}/rankby/state/#{params[:state_id]}/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}", options)
     end
     
     
     
   end
 end 
end