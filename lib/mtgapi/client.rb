require "httparty"

module Mtgapi
  class Client
    include HTTParty

    base_uri "http://mtgapi.com/api/v1/fetch"

    def initialize(token = ENV['MTG_TOKEN'])
      @token = token
    end

    def search(search_string)
      self.class.get("/search/#{search_string}?token=#{@token}")
    end
  end
end
