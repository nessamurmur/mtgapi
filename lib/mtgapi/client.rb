require "httparty"

module Mtgapi
  class Client
    include HTTParty

    base_uri "http://mtgapi.com/api/v1/fetch"

    attr_reader :token

    def initialize(token = ENV['MTG_TOKEN'])
      @token = token
    end

    def search(search_string)
      self.class.get(search_url(search_string))
    end

    def find_by(attr, value)
      url = "#{self.send("#{attr.to_s}_url", value)}#{token_append}"
      self.class.get(url)
    end

    def id_url(id)
      "card/id/#{id}"
    end

    def name_url(name)
      "card/name/#{name}"
    end

    def search_url(search_string)
      "/search/#{search_string}"
    end

    def token_append
      "?token=#{token}"
    end
  end
end
