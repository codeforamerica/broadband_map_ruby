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
     
     def almanac_ranking_geo_id_within_state(params={}, options={})
       params = {:format => 'json'}.merge(params)
       stub_get("almanac/#{params[:data_version]}/rankby/state/#{params[:state_id]}/#{params[:census_metric_type]}/#{params[:ranking_metric]}/#{params[:geography_type]}/id/#{params[:geography_id]}?format=#{params[:format]}&order=#{params[:sort_order]}&properties=#{params[:properties]}", options)
     end
     
   end
 end 
end