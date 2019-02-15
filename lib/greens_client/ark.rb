module GreensClient
  class Ark < Flexirest::Base
    @@prefix = nil
    @@api_key = nil

    proxy GreensClient::ArkProxy

    before_request :add_authentication_details

    perform_caching false

    get :find, "/id/:id"
    put :save, "/id/:id"
    post :create, "/arks/mint/#{@@prefix.to_s}"

    def add_authentication_details(name, request)
      request.headers["api-key"] = @@api_key.to_s
    end

    def self.prefix=(value)
      @@prefix = value
    end

    def self.api_key=(value)
      @@api_key = value
    end

  end
end