require "httparty"

module Mtgapi
  class Client
    include HTTParty

    base_uri "http://mtgapi.com/api/v1/fetch"

    def initialize(token)
      @token = token
    end

    def search(search_string)
      self.class.get("/search/#{search_string}?token=#{@token}")
    end
  end
end
