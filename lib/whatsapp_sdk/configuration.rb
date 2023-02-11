# typed: strict
# frozen_string_literal: true

module WhatsappSdk
  # This module allows client instantiating the client as a singleton like the following example:
  # WhatsappSdk.configure do |config|
  #   config.access_token = ACCESS_TOKEN
  # end
  #
  # The gem have access to the client through WhatsappSdk.configuration.client
  class Configuration
    extend T::Sig

    sig { returns(String) }
    attr_accessor :access_token

    sig { params(access_token: String).void }
    def initialize(access_token = "")
      @access_token = access_token
    end

    sig { returns(WhatsappSdk::Api::Client) }
    def client
      WhatsappSdk::Api::Client.new(access_token)
    end
  end
end
