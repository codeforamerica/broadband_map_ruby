module BroadbandMap
  class Client
    module Bip
      
      def bip_state_id(params={}, options={})
        params = {:format => 'json'}.merge(params)
        ids = ""
        params[:state_ids].each {|x| ids += x +","}
        ids.chop!
        get("bip/stateids/#{ids}?format=#{params[:format]}&callback=#{params[:callback]}", options)
      end
      
    end
  end
end