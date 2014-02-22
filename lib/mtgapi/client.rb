require "httparty"

module Mtgapi
  class Client
    include HTTParty

    base_uri "http://api.mtgapi.com/v1"

    attr_reader :token

    def initialize(token = ENV['MTG_TOKEN'])
      @token = token
    end

    def sets
      self.class.get("/list/sets").parsed_response
    end

    def find_by(attr, value)
      url = self.send("#{attr.to_s}_url", value)
      self.class.get(url).parsed_response
    end

    def id_url(id)
      "/card/id/#{id}"
    end

    def name_url(name)
      "/card/name/#{name}"
    end

    def set_url(set)
      "/card/set/#{set}"
    end

    def token_append
      "?token=#{token}"
    end
  end
end
