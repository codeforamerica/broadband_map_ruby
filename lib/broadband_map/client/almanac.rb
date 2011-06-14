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
     
   end
 end 
end