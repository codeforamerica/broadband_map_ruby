module BroadbandMap
  class Client
    module Cai
      
      def cai_closest(params={}, options={})
        params = {:format => 'json'}.merge(params)
        get("cai/closest?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&maxresults=#{params[:max_results]}&format=#{params[:format]}&callback=#{params[:callback]}")
      end
      
    end
  end
end