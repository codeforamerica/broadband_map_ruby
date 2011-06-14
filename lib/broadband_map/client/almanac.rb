module BroadbandMap
 class Client
   module Almanac
     def almanac_parameters(options={})
       get("almanac/parameters?format=json", options)
     end
   end
 end 
end